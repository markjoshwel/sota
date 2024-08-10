/*
 * author: ryan lin
 * date: 06/08/2024
 * description: a controller for the car
 */

using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.Serialization;

/// <summary>
///     a controller for the car
/// </summary>
public class CarController : MonoBehaviour
{
    /// <summary>
    ///     enum for if the wheel is the front or back wheel
    /// </summary>
    public enum Axel
    {
        Front,
        Rear
    }

    /// <summary>
    ///     a value for the motor torque that the wheels have when speeding up
    /// </summary>
    public float motorTorque;

    /// <summary>
    ///     the angle that the wheels turn when the car turns 
    /// </summary>
    public float turnAngle;

    /// <summary>
    ///     a list to input the different wheels
    /// </summary>
    public List<Wheel> wheels;

    /// <summary>
    ///     the force the wheel exerts when it brakes
    /// </summary>
    public float brakeForce;

    /// <summary>
    ///     a bool to brake the car
    /// </summary>
    public bool braking;

    /// <summary>
    ///     inputs for acceleration
    /// </summary>
    private float _currentAcceleration;

    /// <summary>
    ///     inputs for turning
    /// </summary>
    private float _currentTurn;

    /// <summary>
    ///     to move the car
    /// </summary>
    private void FixedUpdate()
    {
        Move();
        Steering();
        Brake();
    }

    /// <summary>
    ///     for other scripts to set the inputs
    /// </summary>
    public void SetInputs(float forwardAmount, float turnAmount)
    {
        _currentAcceleration = forwardAmount * motorTorque;
        _currentTurn = turnAmount * turnAngle;
    }

    /// <summary>
    ///     to move the car forwards or backwards
    /// </summary>
    public void Move()
    {
        foreach (var wheel in wheels) wheel.wheelCollider.motorTorque = _currentAcceleration;
    }

    /// <summary>
    ///     to stop the car
    /// </summary>
    public void Brake()
    {
        if (braking)
            foreach (var wheel in wheels)
                wheel.wheelCollider.brakeTorque = brakeForce;
        else
            foreach (var wheel in wheels)
                wheel.wheelCollider.brakeTorque = 0f;
    }

    /// <summary>
    ///     to turn the car
    /// </summary>
    public void Steering()
    {
        foreach (var wheel in wheels.Where(wheel => wheel.axel == Axel.Front))
            wheel.wheelCollider.steerAngle = _currentTurn;
    }

    /// <summary>
    ///     a struct to display the wheels in the inspector
    /// </summary>
    [Serializable]
    public struct Wheel
    {
        public GameObject wheelModel;
        public WheelCollider wheelCollider;
        public Axel axel;
    }
}