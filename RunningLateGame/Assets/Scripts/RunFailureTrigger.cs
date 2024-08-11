/*
 * author: sai puay
 * date: 11/8/2024
 * description: game run failure trigger collision
 */

using UnityEngine;

/// <summary>
///     game run failure trigger collision
/// </summary>
public class RunFailureTrigger : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        GameManager.Instance.SetDisplayState(GameManager.DisplayState.OverlayFailedOverTimeMenu);
    }
}