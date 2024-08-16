/*
 * author: sai puay
 * date: 11/8/2024
 * description: interaction prompt demo with a probuilder donut
 */

/// <summary>
///     demo donut interactable class
/// </summary>
public class PlaygroundDonut : CommonInteractable
{
    /// <summary>
    ///     set the interaction prompt
    /// </summary>
    private void Awake()
    {
        interactionPrompt = "This is a Donut";
    }

    // private void OnTriggerEnter(Collider other)
    // {
    //     GameManager.Instance.SetInteractionPrompt("This is a Donut");
    // }
    //
    // private void OnTriggerExit(Collider other)
    // {
    //     GameManager.Instance.ClearInteractionPrompt();
    // }
}