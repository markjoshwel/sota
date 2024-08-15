using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using Random = System.Random;


public class VendingMachine : CommonInteractable
{
    /// <summary>
    ///     prefab to spawn when the player interacts with the vending machine
    /// </summary>
    public GameObject coffee;
    /// <summary>
    /// the amount of stock the vending machine has
    /// </summary>
    private int _stock;
    private GameObject _instance;
    public void Start()
    {
        var rand = new Random();
        _stock = rand.Next(1, 3);
    }

    /// <summary>
    ///     to spawn the coffee prefab if there is stock
    /// </summary>
    public override void Interact()
    {
        if (_stock > 0)
        {
            _instance = Instantiate(coffee, transform.position, Quaternion.identity);
            _instance.GetComponent<Rigidbody>().AddForce(Vector3.up * 5, ForceMode.Impulse);
            _instance.GetComponent<Rigidbody>().AddForce(Vector3.forward * 5, ForceMode.Impulse);
            _stock--;
        }
    }
}