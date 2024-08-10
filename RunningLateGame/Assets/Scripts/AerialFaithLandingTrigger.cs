/*
 * author: mark joshwel
 * date: 10/8/2024
 * description: trigger to detect if the player landed in a specific area
 */

using System;
using UnityEngine;

/// <summary>
///     detection behaviour class
/// </summary>
public class AerialFaithLandingTrigger : MonoBehaviour
{
    /// <summary>
    ///     the trigger that detects if the player has jumped out of the play area
    /// </summary>
    [SerializeField] private AerialFaithLeapTrigger linkedLeapTrigger;

    /// <summary>
    ///     check if linkedLeapTrigger is set
    /// </summary>
    /// <exception cref="NullReferenceException">consequential exception</exception>
    private void Awake()
    {
        if (linkedLeapTrigger == null)
            throw new NullReferenceException("AerialFaithLandingTrigger: linkedLeapTrigger is not set");
    }

    /// <summary>
    ///     detect if player has entered the trigger
    /// </summary>
    /// <param name="other">colliding game object</param>
    private void OnTriggerEnter(Collider other)
    {
        // Debug.Log($"AerialFaithLandingTrigger: was hit by object with tag {other.tag}");
        if (!other.CompareTag("Player") || !linkedLeapTrigger.isPlayerInAir) return;
        Debug.Log("AerialFaithLandingTrigger: player landed");
        linkedLeapTrigger.isPlayerInAir = false;
    }
}