/*
 * authors: ryan lin
 * date: 11/8/2024
 * description: the lift door controller
 */

using UnityEngine;

/// <summary>
///     the lift door controller
/// </summary>
public class LiftDoorController : CommonInteractable
{
    /// <summary>
    ///     the door that is being controlled
    /// </summary>
    [SerializeField] private Door door;

    /// <summary>
    ///     the lift controller that is being referenced
    /// </summary>
    [SerializeField] private LiftController liftController;

    /// <summary>
    ///     set the interaction prompt
    /// </summary>
    private void Awake()
    {
        interactionPrompt = "Press [E] to call the lift";
    }

    /// <summary>
    ///     to call the open door function
    /// </summary>
    public override void Interact()
    {
        if (!door.opening && !liftController.moving) StartCoroutine(door.OpenDoor());
    }
}