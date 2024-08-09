/*
 * author: ryan lin
 * date: 30/7/2024
 * description: vehicular ai behaviour
 */

using System.Collections;
using UnityEngine;

/// <summary>
///     TODO
/// </summary>
public class AICar : MonoBehaviour
{
    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private Transform carPosition;

    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private float stoppingDistance;

    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private float slowingSpeed;

    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private float slowingDistance;

    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private float reverseDist;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _accelerationInput;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _angularDirection;

    /// <summary>
    ///     TODO
    /// </summary>
    private CarController _car;

    /// <summary>
    ///     TODO
    /// </summary>
    private string _currentState;

    /// <summary>
    ///     TODO
    /// </summary>
    private Vector3 _dirToMove;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _distanceToTarget;

    /// <summary>
    ///     TODO
    /// </summary>
    private Transform _driveTarget;

    /// <summary>
    ///     TODO
    /// </summary>
    // FIXME: use an enum or something
    private string _nextState;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _turnInput;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _verticalDirection;

    /// <summary>
    ///     TODO
    /// </summary>
    private void Awake()
    {
        var hasChild = false;
        var i = 0;
        GameObject test;
        while (!hasChild)
        {
            test = gameObject.transform.GetChild(i).gameObject;
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

        _car = GetComponent<CarController>();
        _currentState = "Stopped";
        _nextState = _currentState;
        ChangeState();
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private void Update()
    {
        _currentState = _nextState;
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private void ChangeState()
    {
        StartCoroutine(_currentState);
    }

    /// <summary>
    ///     TODO
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
    ///     TODO
    /// </summary>
    private IEnumerator Stopped()
    {
        while (_currentState == "Stopped")
        {
            _distanceToTarget = Vector3.Distance(carPosition.position, _driveTarget.position);
            _car.braking = true;
            _accelerationInput = 0f;
            _turnInput = 0f;
            if (_distanceToTarget > stoppingDistance) _nextState = "Slowed";
            yield return new WaitForSeconds(1);
        }

        ChangeState();
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private IEnumerator Slowed()
    {
        _car.braking = false;
        while (_currentState == "Slowed")
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
            _car.SetInputs(_accelerationInput, _turnInput);
            yield return new WaitForEndOfFrame();
        }

        ChangeState();
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private IEnumerator Driving()
    {
        _car.braking = false;
        while (_currentState == "Driving")
        {
            _verticalDirection = Vector3.Dot(carPosition.transform.forward,
                (_driveTarget.position - carPosition.transform.position).normalized);
            _distanceToTarget = Vector3.Distance(carPosition.position, _driveTarget.position);
            _accelerationInput = 1;


            Steering();
            if (_distanceToTarget < slowingDistance) _nextState = "Slowed";
            _car.SetInputs(_accelerationInput, _turnInput);
            yield return new WaitForEndOfFrame();
        }

        ChangeState();
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private void SlowedCheck()
    {
        if (_distanceToTarget < stoppingDistance) _nextState = "Stopped";

        if (_distanceToTarget > slowingDistance) _nextState = "Driving";
    }
}