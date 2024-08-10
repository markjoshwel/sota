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
    ///     the first trigger that detects if the player has jumped out of the play area
    /// </summary>
    [SerializeField] private AerialFaithLeapTrigger linkedLeapTrigger1;

    /// <summary>
    ///     the second trigger that detects if the player has jumped out of the play area
    /// </summary>
    [SerializeField] private AerialFaithLeapTrigger linkedLeapTrigger2;

    /// <summary>
    ///     the third trigger that detects if the player has jumped out of the play area
    /// </summary>
    [SerializeField] private AerialFaithLeapTrigger linkedLeapTrigger3;

    /// <summary>
    ///     check if linkedLeapTrigger1 is set
    /// </summary>
    /// <exception cref="NullReferenceException">consequential exception</exception>
    private void Awake()
    {
        if (linkedLeapTrigger1 == null)
            throw new NullReferenceException("AerialFaithLandingTrigger: linkedLeapTrigger1 is not set");
    }

    /// <summary>
    ///     detect if player has entered the trigger
    /// </summary>
    /// <param name="other">colliding game object</param>
    private void OnTriggerEnter(Collider other)
    {
        // Debug.Log($"AerialFaithDeathTrigger: was hit by object with tag {other.tag}");

        // proceed if:
        //  - the colliding object is the player
        //  - any of the linked leap triggers are active, the 1st is always not null
        if (!other.CompareTag("Player")) return;
        if (!(linkedLeapTrigger1.isPlayerInAir ||
              (linkedLeapTrigger2 != null && linkedLeapTrigger2.isPlayerInAir) ||
              (linkedLeapTrigger3 != null && linkedLeapTrigger3.isPlayerInAir)))
            return;

        Debug.Log("AerialFaithDeathTrigger: player missed, and will be baked");
        linkedLeapTrigger1.isPlayerInAir = false;
        if (linkedLeapTrigger2 != null) linkedLeapTrigger2.isPlayerInAir = false;
        if (linkedLeapTrigger3 != null) linkedLeapTrigger3.isPlayerInAir = false;
        // TODO: kill player
    }
}