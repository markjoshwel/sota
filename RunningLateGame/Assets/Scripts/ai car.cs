using System;
using UnityEngine;

public class AICar : MonoBehaviour
{
    [SerializeField] private Transform carPosition;
    [SerializeField] private float stoppingDistance;
    [SerializeField] private float slowingSpeed;
    [SerializeField] private float slowingDistance;
    [SerializeField] private float reverseDist;
    private CarController _car;
    private string _currentState;
    private Transform _driveTarget;
    private string _nextState;


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
        _currentState = "Driving";
        _nextState = _currentState;
        ChangeState();
    }

    private void Update()
    {
        _currentState = _nextState;
    }

    private void ChangeState()
    {
        StartCoroutine(_currentState);
    }

    private IEnumerator Driving()
    {
        _car = GetComponent<CarController>();

        while (_currentState == "Driving")
        {
            var accelerationAmount = 0f;
            var turnAmount = 0f;
            var targetPosition = _driveTarget.position;
            var dirToMove = (targetPosition - carPosition.transform.position).normalized;
            var forwardsAmount = Vector3.Dot(carPosition.transform.forward, dirToMove);
            var directionToDrive = Vector3.SignedAngle(carPosition.transform.forward, dirToMove, Vector3.up);
            var distanceToTarget = Vector3.Distance(carPosition.position, targetPosition);
            if (distanceToTarget >= stoppingDistance)
            {
                _car.braking = false;
                //in front of target position
                if (forwardsAmount > 0)
                {
                    //closer than the slowing distance
                    if (distanceToTarget <= slowingDistance)
                    {
                        //the car is very fast
                        if (carPosition.GetComponent<Rigidbody>().velocity.magnitude > slowingSpeed)
                            accelerationAmount = -2;
                        else
                            accelerationAmount = 1;
                    }

                    else
                    {
                        accelerationAmount = 1;
                    }
                }
                else
                {
                    if (distanceToTarget < reverseDist)
                        accelerationAmount = -1;
                    else
                        accelerationAmount = 1;
                }


                if (directionToDrive < 0)
                    turnAmount = 1;
                else if (directionToDrive > 0)
                    turnAmount = -1;
                else
                    turnAmount = 0;
            }
            else
            {
                _car.braking = true;
                accelerationAmount = 0f;
                turnAmount = 0f;
            }

            Debug.Log(carPosition.GetComponent<Rigidbody>().velocity.magnitude);
            _car.SetInputs(accelerationAmount, turnAmount);
            yield return new WaitForEndOfFrame();
        }
    }
}