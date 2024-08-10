/*
 * authors: mark joshwel, ryan lin
 * date: 10/8/2024
 * description: common interactable behaviour class
 */

using UnityEngine;

/// <summary>
///     base behaviour class for interactable objects
/// </summary>
public class CommonInteractable : MonoBehaviour
{
    /// <summary>
    ///     the prompt to display when the player is looking at the object
    /// </summary>
    public string interactionPrompt = "";

    /// <summary>
    ///     skeleton function for interacting with the object
    /// </summary>
    public virtual void Interact()
    {
    }
}