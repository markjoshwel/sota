/*
 * author: mark joshwel
 * date: 10/8/2024
 * description: trigger to detect if the player did not land in an aerial faith landing trigger
 */

using UnityEngine;

/// <summary>
///     detection behaviour class
/// </summary>
public class AerialFaithDeathTrigger : MonoBehaviour
{
    /// <summary>
    ///     the trigger that detects if the player has jumped out of the play area
    /// </summary>
    [SerializeField] private AerialFaithJumpTrigger linkedJumpTrigger;

    /// <summary>
    ///     detect if player has entered the trigger
    /// </summary>
    /// <param name="other">colliding game object</param>
    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player") || !linkedJumpTrigger.isPlayerInAir) return;
        Debug.Log("AerialFaithDeathTrigger: player missed, and will be baked");
        // TODO: kill player
    }
}