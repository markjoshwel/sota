/*
 * author: mark joshwel
 * date: 10/8/2024
 * description: trigger to detect if the player has jumped out of play area
 */

using UnityEngine;

/// <summary>
///     detection behaviour class
/// </summary>
public class AerialFaithLeapTrigger : MonoBehaviour
{
    /// <summary>
    ///     bool to check if player is airborne
    /// </summary>
    public bool isPlayerInAir;

    /// <summary>
    ///     detect if player has jumped out of the trigger
    /// </summary>
    /// <param name="other">colliding game object</param>
    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player")) return;
        isPlayerInAir = true;
        Debug.Log("AerialFaithLeapTrigger: player is airborne");
    }
}