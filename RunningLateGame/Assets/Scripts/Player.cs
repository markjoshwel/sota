/*
 * author: ryan lin, mark joshwel
 * date: 11/8/2024
 * description: player interaction behaviour
 */

using UnityEngine;

/// <summary>
///     player interaction behaviour
/// </summary>
public class Player : MonoBehaviour
{
    /// <summary>
    ///     the position of the player
    /// </summary>
    [SerializeField] private Transform playerPosition;

    /// <summary>
    ///     the maximum distance the player can interact with objects
    /// </summary>
    [SerializeField] private float interactableDistance;

    /// <summary>
    ///     the layers the raycast should interact with
    /// </summary>
    public LayerMask raycastLayers;

    // /// <summary>
    // ///     the current interactable object the player is looking at
    // /// </summary>
    // private CommonInteractable _currentInteractable;

    /// <summary>
    ///     game manager instance
    /// </summary>
    private GameManager _game;

    /// <summary>
    ///     the raycast hit information
    /// </summary>
    private RaycastHit _hit;

    /// <summary>
    ///     whether the player is looking at an interactable object
    /// </summary>
    private bool _raycast;

    /// <summary>
    ///     initialisation function
    /// </summary>
    private void Start()
    {
        _game = GameManager.Instance;
    }

    /// <summary>
    ///     raycast performer for interactable objects
    /// </summary>
    private void Update()
    {
        _raycast = Physics.Raycast(
            playerPosition.position,
            playerPosition.TransformDirection(Vector3.forward),
            out _hit,
            interactableDistance,
            raycastLayers
        );
        Debug.DrawRay(
            playerPosition.position,
            playerPosition.TransformDirection(Vector3.forward) * interactableDistance,
            Color.green
        );

        if (!_raycast) return;

        var interactable = _hit.collider.GetComponent<CommonInteractable>();
        if (!interactable)
        {
            // Debug.Log("not looking at an interactable object");
            GameManager.Instance.ClearInteractionPrompt();
            return;
        }

        // show an interaction prompt if we're looking at an interactable object
        var prompt = interactable.interactionPrompt;
        // Debug.Log(prompt);
        if (prompt != "")
            GameManager.Instance.SetInteractionPrompt(prompt);
        else
            GameManager.Instance.ClearInteractionPrompt();
    }

    /// <summary>
    ///     handles the action when the player interacts with an object
    /// </summary>
    private void OnAction()
    {
        if (!_raycast) return;
        _hit.collider.GetComponent<CommonInteractable>()?.Interact();
        // _currentInteractable?.Interact();
    }

    /// <summary>
    ///     function called by the input system when escape is paused
    /// </summary>
    public void OnPause()
    {
        Debug.Log("escape pressed");
        _game.SetDisplayState(_game.Paused ? GameManager.DisplayState.Game : GameManager.DisplayState.OverlayPauseMenu);
    }
}