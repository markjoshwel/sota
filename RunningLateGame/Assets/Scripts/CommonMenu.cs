/*
 * author: mark joshwel
 * date: 29/5/2024
 * description: common menu script for hover and click sound effects on ui toolkit buttons
 */

using System;
using UnityEngine;
using UnityEngine.UIElements;

/// <summary>
///     common menu class for hover and click sound effects
///     on ui toolkit buttons.
///     override <c>OnEnable()</c> with the first call to <c>base.OnEnable()</c> or <c>PostEnable()</c>,
///     and set the variable <c>GameManager.DisplayState associatedState</c> to the respective menu state
/// </summary>
public class CommonMenu : MonoBehaviour
{
    /// <summary>
    ///     associated display state with the menu for the game manager to filter out menus in a scene
    /// </summary>
    public GameManager.DisplayState associatedState = GameManager.DisplayState.UnassociatedState;

    /// <summary>
    ///     manager for the game state
    /// </summary>
    protected GameManager Game;

    /// <summary>
    ///     the visual element object for the menu
    /// </summary>
    public VisualElement UI;

    /// <summary>
    ///     checks if The Menu (2022) was set up correctly
    /// </summary>
    /// <exception cref="Exception">throws an exception if UI, Game and Audio are not set</exception>
    private void Start()
    {
        if (associatedState == GameManager.DisplayState.UnassociatedState)
            throw new Exception("CommonMenu: associatedState not set");

        if (Game == null)
            throw new Exception("CommonMenu: Game not set (was base.OnEnable() or PostEnable() called?)");
    }

    /// <summary>
    ///     override this class but call <c>base.OnEnable()</c> first.
    ///     also set the <c>associatedState</c> variable to the respective menu state
    /// </summary>
    public virtual void OnEnable()
    {
        PostEnable();
    }

    /// <summary>
    ///     function to subscribe to mouse events and assign managers
    /// </summary>
    public void PostEnable()
    {
        // get audio manager singleton instance from the world
        UI = GetComponent<UIDocument>().rootVisualElement;
        // Audio = AudioManager.Instance;
        Game = GameManager.Instance;

        // // subscribe to hover events
        UI.RegisterCallback<PointerOverEvent>(HoverListener);
    }

    /// <summary>
    ///     function listener for <c>PointerOverEvents</c> and plays a hover sound if it's a button
    /// </summary>
    /// <param name="evt">event from UIE callback</param>
    public virtual void HoverListener(PointerOverEvent evt)
    {
        // check for button
        if (evt.target is Button)
            // play hover sound
            PlayHover();
    }

    /// <summary>
    ///     function listener for <c>ClickEvents</c> and plays a click sound if it's a button
    /// </summary>
    /// <param name="evt">event from UIE callback</param>
    public virtual void ClickListener(ClickEvent evt)
    {
        // check for button
        if (evt.target is Button)
            // play click sound
            PlayClick();
    }

    /// <summary>
    ///     generic decoupled function to play click sound
    /// </summary>
    public virtual void PlayClick()
    {
        // TODO: play click sound
        // Game.PlayOnSFXChannel(Audio.menuButtonClick);
    }

    /// <summary>
    ///     generic decoupled function to play hover sound
    /// </summary>
    public virtual void PlayHover()
    {
        // TODO: play hover sound
        // Game.PlayOnSFXChannel(Audio.menuButtonHover);
    }
}