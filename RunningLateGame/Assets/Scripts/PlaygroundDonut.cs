/*
 * author: sai puay
 * date: 11/8/2024
 * description: interaction prompt demo with a probuilder donut
 */

using UnityEngine;

/// <summary>
///     demo donut interactable class
/// </summary>
public class PlaygroundDonut : CommonInteractable
{
    private void OnTriggerEnter(Collider other)
    {
        GameManager.Instance.SetInteractionPrompt("This is a Donut");
    }

    private void OnTriggerExit(Collider other)
    {
        GameManager.Instance.ClearInteractionPrompt();
    }
}