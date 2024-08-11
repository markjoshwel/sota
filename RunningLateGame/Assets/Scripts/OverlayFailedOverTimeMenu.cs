/*
 * author: mark joshwel, sai puay
 * date: 11/8/2024
 * description: script for handling win failure/dnf overlay functions
 */

using UnityEngine.UIElements;

/// <summary>
///     class managing the win failure/dnf overlay and button function invocations
/// </summary>
public class OverlayFailedOverTimeMenu : CommonMenu
{
    /// <summary>
    ///     button to retry the run
    /// </summary>
    private Button _buttonRetry;

    /// <summary>
    ///     button to return to the main menu
    /// </summary>
    private Button _buttonReturn;

    /// <summary>
    ///     function to associate a display state with the menu,
    ///     and subscribe button events to their respective functions
    /// </summary>
    public override void OnEnable()
    {
        // set the associated state and call the base OnEnable
        associatedState = GameManager.DisplayState.OverlayFailedOverTimeMenu;
        base.OnEnable();

        // get the retry button from the ui root and subscribe appropriate functions
        _buttonRetry = UI.Q<Button>("ButtonRetry");
        _buttonRetry.clicked += PlayClick;
        _buttonRetry.clicked += OverlayPauseMenu.OptionRetryGame;

        // get the return button from the ui root and subscribe appropriate functions
        _buttonReturn = UI.Q<Button>("ButtonReturn");
        _buttonReturn.clicked += PlayClick;
        _buttonReturn.clicked += OverlayPauseMenu.OptionReturnToMainMenu;
    }
}