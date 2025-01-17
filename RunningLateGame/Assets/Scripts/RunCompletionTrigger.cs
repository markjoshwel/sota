/*
 * author: sai puay
 * date: 11/8/2024
 * description: game run completion trigger collision
 */

using UnityEngine;

/// <summary>
///     game run completion trigger collision class
/// </summary>
public class RunCompletionTrigger : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        GameManager.Instance.ProperlyEndRun();
    }
}