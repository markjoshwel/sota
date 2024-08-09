/*
 * author: ryan lin
 * date: TODO
 * description: TODO
 */

using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

/// <summary>
///     TODO
/// </summary>
public class CarController : MonoBehaviour
{
    /// <summary>
    ///     TODO
    /// </summary>
    public enum Axel
    {
        Front,
        Rear
    }

    /// <summary>
    ///     TODO
    /// </summary>
    public float acceleration;

    /// <summary>
    ///     TODO
    /// </summary>
    public float turnAngle;

    /// <summary>
    ///     TODO
    /// </summary>
    public List<Wheel> wheels;

    /// <summary>
    ///     TODO
    /// </summary>
    public float brakeForce;

    /// <summary>
    ///     TODO
    /// </summary>
    public bool braking;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _currentAcceleration;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _currentTurn;

    /// <summary>
    ///     TODO
    /// </summary>
    private void FixedUpdate()
    {
        Move();
        Steering();
        Brake();
    }

    /// <summary>
    ///     TODO
    /// </summary>
    public void SetInputs(float forwardAmount, float turnAmount)
    {
        _currentAcceleration = forwardAmount * acceleration;
        _currentTurn = turnAmount * turnAngle;
    }

    /// <summary>
    ///     TODO
    /// </summary>
    public void Move()
    {
        foreach (var wheel in wheels) wheel.wheelCollider.motorTorque = _currentAcceleration;
    }

    /// <summary>
    ///     TODO
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
    ///     TODO
    /// </summary>
    public void Steering()
    {
        foreach (var wheel in wheels.Where(wheel => wheel.axel == Axel.Front))
            wheel.wheelCollider.steerAngle = _currentTurn;
    }

    /// <summary>
    ///     TODO
    /// </summary>
    // NOTE: once again, why is this at the bottom lol
    [Serializable]
    public struct Wheel
    {
        public GameObject wheelModel;
        public WheelCollider wheelCollider;
        public Axel axel;
    }
}