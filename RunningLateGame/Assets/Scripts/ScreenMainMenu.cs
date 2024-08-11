/*
 * author: mark joshwel
 * date: 11/8/2024
 * description: script for handling main menu button functions
 */

using UnityEngine;
using UnityEngine.UIElements;

/// <summary>
///     class managing the main menu and button function invocations
/// </summary>
public class ScreenMainMenu : CommonMenu
{
    /// <summary>
    ///     button to quit game
    /// </summary>
    private Button _buttonExit;

    /// <summary>
    ///     button to show the options menu
    /// </summary>
    private Button _buttonOptions;

    /// <summary>
    ///     button to play game
    /// </summary>
    private Button _buttonPlay;

    /// <summary>
    ///     function to associate a display state with the menu,
    ///     and subscribe button events to their respective functions
    /// </summary>
    public override void OnEnable()
    {
        // set the associated state and call the base OnEnable
        associatedState = GameManager.DisplayState.ScreenMainMenu;
        base.OnEnable();

        // get the start button from the ui root and subscribe appropriate functions
        _buttonPlay = UI.Q<Button>("ButtonPlay");
        _buttonPlay.clicked += PlayClick;
        _buttonPlay.clicked += OptionStartGame;

        // get the options button from the ui root and subscribe appropriate functions
        _buttonOptions = UI.Q<Button>("ButtonOptions");
        _buttonOptions.clicked += PlayClick;
        _buttonOptions.clicked += OptionShowOptions;

        // get the quit button from the ui root and subscribe appropriate functions
        _buttonExit = UI.Q<Button>("ButtonExit");
        _buttonExit.clicked += PlayClick;
        _buttonExit.clicked += OptionQuitGame;
    }

    /// <summary>
    ///     handles start button press,
    ///     signals the game manager appropriately
    /// </summary>
    private void OptionStartGame()
    {
        Debug.Log("ScreenMainMenu.OptionStartGame: clicked, starting game");
        Game.NewGame();
    }

    /// <summary>
    ///     handles options button press,
    ///     signals the game manager appropriately
    /// </summary>
    private void OptionShowOptions()
    {
        Debug.Log("ScreenMainMenu.OptionShowOptions: clicked, showing options menu");
        Game.SetDisplayState(GameManager.DisplayState.ScreenOptionsMenu);
    }

    /// <summary>
    ///     handles quit button press,
    ///     signals the game manager appropriately
    /// </summary>
    private void OptionQuitGame()
    {
        Debug.Log("ScreenMainMenu.OptionQuitGame: clicked, quitting game");
        Game.Quit();
    }
}