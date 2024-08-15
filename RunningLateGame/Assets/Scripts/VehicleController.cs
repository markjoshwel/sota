/*
 * author: ryan lin, mark joshwel
 * date: 06/08/2024
 * description: a controller for the car
 */

using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

/// <summary>
///     a controller for the car
/// </summary>
public class VehicleController : MonoBehaviour
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
    [SerializeField] private float currentAcceleration;

    /// <summary>
    ///     inputs for turning
    /// </summary>
    [SerializeField] private float currentTurn;

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
        currentAcceleration = forwardAmount * motorTorque;
        currentTurn = turnAmount * turnAngle;
    }

    /// <summary>
    ///     to move the car forwards or backwards
    /// </summary>
    private void Move()
    {
        foreach (var wheel in wheels)
            wheel.wheelCollider.motorTorque = currentAcceleration;
    }

    /// <summary>
    ///     to stop the car
    /// </summary>
    private void Brake()
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
    private void Steering()
    {
        foreach (var wheel in wheels.Where(wheel => wheel.axel == Axel.Front))
            wheel.wheelCollider.steerAngle = currentTurn;
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