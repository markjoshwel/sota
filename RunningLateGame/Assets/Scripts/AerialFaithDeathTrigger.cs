/*
 * author: mark joshwel
 * date: 10/8/2024
 * description: trigger to detect if the player did not land in an aerial faith landing trigger
 */

using System;
using UnityEngine;

/// <summary>
///     detection behaviour class
/// </summary>
public class AerialFaithDeathTrigger : MonoBehaviour
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
        // Debug.Log($"AerialFaithDeathTrigger: was hit by object with tag {other.tag}");

        if (!other.CompareTag("Player") || !linkedLeapTrigger.isPlayerInAir) return;

        // if (!other.CompareTag("Player"))
        // {
        //     Debug.Log("AerialFaithDeathTrigger: player missed");
        //     return;
        // }
        //
        // if (!linkedLeapTrigger.isPlayerInAir)
        // {
        //     Debug.Log("AerialFaithDeathTrigger: player is in an invalid state");
        //     return;
        // }

        Debug.Log("AerialFaithDeathTrigger: player missed, and will be baked");
        linkedLeapTrigger.isPlayerInAir = false;
        // TODO: kill player
    }
}