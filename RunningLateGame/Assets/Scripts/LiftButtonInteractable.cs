/*
 * authors: mark joshwel, ryan lin
 * date: 10/8/2024
 * description: lift button behaviour implementation
 */

using UnityEngine;

/// <summary>
///     lift button behaviour implementation
/// </summary>
public class LiftButtonInteractable : CommonInteractable
{
    /// <summary>
    ///     the number of floors the lift will move
    /// </summary>
    public int floorsMoved;

    /// <summary>
    ///     the lift the button is controlling
    /// </summary>
    [SerializeField] private LiftController liftController;

    [SerializeField] private Door door;

    /// <summary>
    ///     a function to interact with the lift
    /// </summary>
    public override void Interact()
    {
        if (!liftController.moving && !door.isOpen) StartCoroutine(liftController.Move(floorsMoved));
    }
}