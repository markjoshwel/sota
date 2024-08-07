using System.Collections;
using UnityEngine;

public class AICar : MonoBehaviour
{
    [SerializeField] private Transform carPosition;
    [SerializeField] private float stoppingDistance;
    [SerializeField] private float slowingSpeed;
    [SerializeField] private float slowingDistance;
    [SerializeField] private float reverseDist;
    private string _currentState;
    private string _nextState;
    private float _accelerationInput;
    private CarController _car;
    private float _angularDirection;
    private Vector3 _dirToMove;
    private float _distanceToTarget;
    private Transform _driveTarget;
    private float _turnInput;
    private float _verticalDirection;

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

    private void Update()
    {
        _currentState = _nextState;
        Debug.Log(_currentState);
    }

    private void ChangeState()
    {
        StartCoroutine(_currentState);
    }

    private void Steering()
    {
        _angularDirection = Vector3.SignedAngle(carPosition.transform.forward,
            (_driveTarget.position - carPosition.transform.position).normalized, Vector3.up);
        if (_angularDirection < 0)
            _turnInput = -1;
        else
            _turnInput = 1;
    }

    private IEnumerator Stopped()
    {
        
        while (_currentState == "Stopped")
        {
            _distanceToTarget=Vector3.Distance(carPosition.position, _driveTarget.position);
            _car.braking = true;
            _accelerationInput = 0f;
            _turnInput = 0f;
            if (_distanceToTarget>stoppingDistance)
            {
                _nextState = "Slowed";
            }
            yield return new WaitForSeconds(1);
        }
        ChangeState();
    }

    private IEnumerator Slowed()
    {
        _car.braking = false;
        while (_currentState == "Slowed")
        {
            
            _verticalDirection = Vector3.Dot(carPosition.transform.forward,
                (_driveTarget.position - carPosition.transform.position).normalized);
            _distanceToTarget = Vector3.Distance(carPosition.position, _driveTarget.position);
            if (_verticalDirection>0)
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

    private void SlowedCheck()
    {
        if (_distanceToTarget < stoppingDistance)
        {
            _nextState = "Stopped";
        }

        if (_distanceToTarget > slowingDistance) _nextState = "Driving";





    }
}