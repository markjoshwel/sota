/*
 * author: mark joshwel, sai puay
 * date: 11/8/2024
 * description: script for handling win overlay functions
 */

using UnityEngine.UIElements;

/// <summary>
///     class managing the win overlay and button function invocations
/// </summary>
public class OverlayCompleteUnderTimeMenu : CommonMenu
{
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
        associatedState = GameManager.DisplayState.OverlayCompleteUnderTimeMenu;
        base.OnEnable();

        // get the return button from the ui root and subscribe appropriate functions
        _buttonReturn = UI.Q<Button>("ButtonReturn");
        _buttonReturn.clicked += PlayClick;
        _buttonReturn.clicked += OverlayPauseMenu.OptionReturnToMainMenu;
    }
}