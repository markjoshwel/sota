/*
 * author: mark joshwel, sai puay
 * date: 11/8/2024
 * description: script for handling pause overlay functions
 */

using UnityEngine;
using UnityEngine.UIElements;

/// <summary>
///     class managing the pause overlay and button function invocations
/// </summary>
public class OverlayPauseMenu : CommonMenu
{
    /// <summary>
    ///     button to resume the run
    /// </summary>
    private Button _buttonResume;

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
        associatedState = GameManager.DisplayState.OverlayPauseMenu;
        base.OnEnable();

        // get the resume button from the ui root and subscribe appropriate functions
        _buttonResume = UI.Q<Button>("ButtonResume");
        _buttonResume.clicked += PlayClick;
        _buttonResume.clicked += OptionResumeGame;

        // get the retry button from the ui root and subscribe appropriate functions
        _buttonRetry = UI.Q<Button>("ButtonRetry");
        _buttonRetry.clicked += PlayClick;
        _buttonRetry.clicked += OptionRetryGame;

        // get the return button from the ui root and subscribe appropriate functions
        _buttonReturn = UI.Q<Button>("ButtonReturn");
        _buttonReturn.clicked += PlayClick;
        _buttonReturn.clicked += OptionReturnToMainMenu;
    }

    /// <summary>
    ///     handles resume button press,
    ///     signals the game manager appropriately
    /// </summary>
    private static void OptionResumeGame()
    {
        Debug.Log("OverlayPauseMenu.OptionResumeGame (static shared): clicked, resuming game");
        GameManager.Instance.NewGame();
    }

    /// <summary>
    ///     handles retry button press,
    ///     signals the game manager appropriately
    /// </summary>
    public static void OptionRetryGame()
    {
        Debug.Log("OverlayPauseMenu.OptionRetryGame (static shared): clicked, retrying run");
        GameManager.Instance.RestartRun();
    }

    /// <summary>
    ///     handles return button press,
    ///     signals the game manager appropriately
    /// </summary>
    public static void OptionReturnToMainMenu()
    {
        Debug.Log("OverlayPauseMenu.OptionReturnToMainMenu (static shared): clicked, returning to main menu");
        GameManager.Instance.SetDisplayState(GameManager.DisplayState.ScreenMainMenu);
    }
}