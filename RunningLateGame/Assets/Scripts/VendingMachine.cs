/*
 * author: ryan lin
 * date: 15/8/2024
 * description: script to handle vending machine behaviour
 */

using UnityEngine;
using Random = System.Random;


public class VendingMachine : CommonInteractable
{
    /// <summary>
    ///     prefab to spawn when the player interacts with the vending machine
    /// </summary>
    public GameObject coffee;

    /// <summary>
    ///     the instance of the coffee prefab
    /// </summary>
    private GameObject _instance;

    /// <summary>
    ///     the amount of stock the vending machine has
    /// </summary>
    private int _stock;

    /// <summary>
    ///     to get the number of stocks the vending machine has
    /// </summary>
    public void Start()
    {
        var rand = new Random();
        _stock = rand.Next(0, 4);
        interactionPrompt = _stock == 0 ? "Out of stock" : "Press [E] to buy coffee";
    }

    /// <summary>
    ///     to spawn the coffee prefab if there is stock
    /// </summary>
    public override void Interact()
    {
        if (_stock <= 0) return;
        _instance = Instantiate(coffee, transform.position, transform.rotation);
        _stock--;
        //to change the interaction prompt if the vending machine is out of stock
        if (_stock == 0)
            interactionPrompt = "Out of stock";
    }
}