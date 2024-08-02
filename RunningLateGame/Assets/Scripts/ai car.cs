using System;
using UnityEngine;

public class AICar : MonoBehaviour
{
    private CarController _carController;

    private void Awake()
    {
        _carController = GetComponent<CarController>();
    }

    private void Update()
    {
        float forwardAmount = 1f;
        float turnAmount = 1f;
        _carController.SetInputs(forwardAmount,turnAmount);
    }
}