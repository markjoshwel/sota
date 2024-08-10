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
    ///     whether the player is looking at an interactable object
    /// </summary>
    private bool _raycast;

    /// <summary>
    ///     the raycast hit information
    /// </summary>
    public RaycastHit Hit;

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
            out Hit,
            interactableDistance,
            raycastLayers
        );
        Debug.DrawRay(
            playerPosition.position,
            playerPosition.TransformDirection(Vector3.forward) * interactableDistance,
            Color.green
        );

        if (!_raycast) return;

        // show an interaction prompt if we're looking at an interactable object
        var prompt = Hit.collider.GetComponent<CommonInteractable>()?.interactionPrompt;
        if (prompt != "") Debug.Log(prompt);
    }

    /// <summary>
    ///     handles the action when the player interacts with an object
    /// </summary>
    private void OnAction()
    {
        if (!_raycast) return;
        Hit.collider.GetComponent<CommonInteractable>()?.Interact();
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