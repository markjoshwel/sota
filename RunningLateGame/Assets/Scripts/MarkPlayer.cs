/*
 * author: mark joshwel
 * date: 27/5/2024
 * description: script for handling player interactivity
 */

using UnityEngine;

/// <summary>
///     class for handling player interactivity
/// </summary>
public class MarkPlayer : MonoBehaviour
{
    /// <summary>
    ///     game manager instance
    /// </summary>
    private GameManager _game;

    /// <summary>
    ///     initialisation function
    /// </summary>
    private void Start()
    {
        _game = GameManager.Instance;
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