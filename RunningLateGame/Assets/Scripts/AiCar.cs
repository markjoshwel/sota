/*
 * author: ryan lin
 * date: 30/7/2024
 * description: making the car go to a game object's position
 */

using System.Collections;
using UnityEngine;

/// <summary>
///     making the car go to a game object's position
/// </summary>
public class AICar : MonoBehaviour
{
    /// <summary>
    ///     reference to the car model
    /// </summary>
    [SerializeField] private Transform carPosition;

    /// <summary>
    ///     the radius of which the car can stop in
    /// </summary>
    [SerializeField] private float stoppingDistance;

    /// <summary>
    ///     the speed of which the car needs to be at/under to when it is in the slowed state
    /// </summary>
    [SerializeField] private float slowingSpeed;

    /// <summary>
    ///     the radius that the car switches to the slowed state
    /// </summary>
    [SerializeField] private float slowingDistance;

    /// <summary>
    ///     the distance that the car is allowed to reverse
    /// </summary>
    [SerializeField] private float reverseDist;

    /// <summary>
    ///     the acceleration input for the car script
    /// </summary>
    private float _accelerationInput;

    /// <summary>
    ///     the angular input for the car script
    /// </summary>
    private float _angularDirection;

    /// <summary>
    ///     the current state the car is in for fsm
    /// </summary>
    private string _currentState;

    /// <summary>
    ///     the distance that the car is from the target
    /// </summary>
    private float _distanceToTarget;

    /// <summary>
    ///     the transform of the target
    /// </summary>
    private Transform _driveTarget;

    private NextState _nextState;

    /// <summary>
    ///     the turn input for the car script
    /// </summary>
    private float _turnInput;

    /// <summary>
    ///     reference to the car script
    /// </summary>
    private VehicleController _vehicle;

    /// <summary>
    ///     the car is in front or behind the target, a positive will be returned if the car is in front
    /// </summary>
    private float _verticalDirection;

    /// <summary>
    ///     initialise values
    /// </summary>
    private void Awake()
    {
        var hasChild = false;
        var i = 0;
        while (!hasChild)
        {
            var test = gameObject.transform.GetChild(i).gameObject;
            if (test.name == "Target")
            {
                _driveTarget = test.transform;
                hasChild = true;
            }
            else
            {
                i++;
            }
        }

        _vehicle = GetComponent<VehicleController>();
        _nextState = NextState.Stopped;
        _currentState = "Stopped";
        StartCoroutine(_currentState);
    }

    /// <summary>
    ///     to update the next state value when it changes
    /// </summary>
    private void Update()
    {
        if (_nextState == NextState.Stopped)
            _currentState = "Stopped";
        else if (_nextState == NextState.Slowed)
            _currentState = "Slowed";
        else
            _currentState = "Driving";
    }

    /// <summary>
    ///     is called at the end of states to call the next state
    /// </summary>
    private void ChangeState()
    {
        StartCoroutine(_currentState);
    }

    /// <summary>
    ///     a function that allows the car to steer
    /// </summary>
    private void Steering()
    {
        _angularDirection = Vector3.SignedAngle(carPosition.transform.forward,
            (_driveTarget.position - carPosition.transform.position).normalized, Vector3.up);
        if (_angularDirection < 0)
            _turnInput = -1;
        else
            _turnInput = 1;
    }

    /// <summary>
    ///     to put the car in a stopped state
    /// </summary>
    private IEnumerator Stopped()
    {
        while (_nextState != NextState.Stopped)
        {
            _distanceToTarget = Vector3.Distance(carPosition.position, _driveTarget.position);
            _vehicle.braking = true;
            _accelerationInput = 0f;
            _turnInput = 0f;
            if (_distanceToTarget > stoppingDistance) _nextState = NextState.Slowed;
            yield return new WaitForSeconds(1);
        }

        ChangeState();
    }

    /// <summary>
    ///     to put the car in a slowed state
    /// </summary>
    private IEnumerator Slowed()
    {
        _vehicle.braking = false;
        while (_nextState != NextState.Slowed)
        {
            _verticalDirection = Vector3.Dot(carPosition.transform.forward,
                (_driveTarget.position - carPosition.transform.position).normalized);
            _distanceToTarget = Vector3.Distance(carPosition.position, _driveTarget.position);
            if (_verticalDirection > 0)
            {
                if (carPosition.GetComponent<Rigidbody>().velocity.magnitude > slowingSpeed)
                    _accelerationInput = -1;
                else
                    _accelerationInput = 1;
            }
            else
            {
                if (_distanceToTarget < reverseDist)
                    _accelerationInput = -1;
                else
                    _accelerationInput = 1;
            }

            Steering();
            SlowedCheck();
            _vehicle.SetInputs(_accelerationInput, _turnInput);
            yield return new WaitForEndOfFrame();
        }

        ChangeState();
    }

    /// <summary>
    ///     to put the car in a driving state
    /// </summary>
    private IEnumerator Driving()
    {
        _vehicle.braking = false;
        while (_nextState != NextState.Driving)
        {
            _verticalDirection = Vector3.Dot(carPosition.transform.forward,
                (_driveTarget.position - carPosition.transform.position).normalized);
            _distanceToTarget = Vector3.Distance(carPosition.position, _driveTarget.position);
            _accelerationInput = 1;


            Steering();
            if (_distanceToTarget < slowingDistance) _nextState = NextState.Slowed;
            _vehicle.SetInputs(_accelerationInput, _turnInput);
            yield return new WaitForEndOfFrame();
        }

        ChangeState();
    }

    /// <summary>
    ///     a function to check if the car should be a slowed state
    /// </summary>
    private void SlowedCheck()
    {
        if (_distanceToTarget < stoppingDistance) _nextState = NextState.Stopped;

        if (_distanceToTarget > slowingDistance) _nextState = NextState.Driving;
    }

    /// <summary>
    ///     enum of states that the car can be in
    /// </summary>
    private enum NextState
    {
        Slowed,
        Stopped,
        Driving
    }
}