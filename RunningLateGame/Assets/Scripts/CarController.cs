using System;
using System.Collections.Generic;
using UnityEngine;

public class CarController : MonoBehaviour
{
    public enum Axel
    {
        Front,
        Rear
    }

    public float acceleration;
    public float turnAngle;
    public List<Wheel> wheels;

    public float brakeForce;
    public bool braking;
    private float _currentAcceleration;
    private float _currentTurn;


    private void FixedUpdate()
    {
        Move();
        Steering();
        Brake();
    }

    public void SetInputs(float forwardAmount, float turnAmount)
    {
        _currentAcceleration = forwardAmount * acceleration;
        _currentTurn = turnAmount * turnAngle;
    }


    public void Move()
    {
        foreach (var wheel in wheels) wheel.wheelCollider.motorTorque = _currentAcceleration;
    }

    public void Brake()
    {
        if (braking)
            foreach (var wheel in wheels)
                wheel.wheelCollider.brakeTorque = brakeForce;
        else
            foreach (var wheel in wheels)
                wheel.wheelCollider.brakeTorque = 0f;
    }

    public void Steering()
    {
        foreach (var wheel in wheels)
            if (wheel.axel == Axel.Front)
                wheel.wheelCollider.steerAngle = _currentTurn;
    }

    [Serializable]
    public struct Wheel
    {
        public GameObject wheelModel;
        public WheelCollider wheelCollider;
        public Axel axel;
    }
}