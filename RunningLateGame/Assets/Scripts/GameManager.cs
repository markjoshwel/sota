/*
 * author: mark joshwel
 * date: 11/8/2024
 * description: game manager singleton for a single source of truth state management
 */

using UnityEngine;
using UnityEngine.SceneManagement;

/// <summary>
///     singleton class for managing the game state as a single source of truth
/// </summary>
public class GameManager : MonoBehaviour
{
    /// <summary>
    ///     enum for available menus in the game, for use with <c>ShowMenu()</c>
    /// </summary>
    public enum DisplayState
    {
        Game,
        ScreenMainMenu,
        ScreenOptionsMenu,
        OverlayPauseMenu,
        OverlayCompleteUnderTimeMenu,
        OverlayFailedOverTimeMenu,
        UnassociatedState
    }

    /// <summary>
    ///     singleton pattern: define instance field for accessing the singleton elsewhere
    /// </summary>
    public static GameManager Instance;

    /// <summary>
    ///     the current state of the game
    /// </summary>
    private DisplayState _state = DisplayState.UnassociatedState;

    /// <summary>
    ///     property to check if the game is paused based on the current <c>DisplayState</c>
    /// </summary>
    // TODO: remove this if not needed
    public bool Paused => _state != DisplayState.Game;

    // /// <summary>
    // ///     the current scene of the game, used for scene switching and state transitions
    // /// </summary>
    // private Scene _currentScene;
    //
    // /// <summary>
    // ///     the previous scene of the game, used for scene switching and state transitions
    // /// </summary>
    // private Scene _previousScene;

    /// <summary>
    ///     function to set doesn't destroy on load and checks for multiple instances
    /// </summary>
    private void Awake()
    {
        // check if instance hasn't been set yet
        if (Instance == null)
        {
            // set this instance as the singleton instance
            Instance = this;
            // don't destroy this instance on a scene load
            DontDestroyOnLoad(gameObject);

            Debug.Log("GameManager: Awake as singleton instance");
        }
        // check if instance is already set and it's not this instance
        else if (Instance != null && Instance != this)
        {
            Debug.Log("GameManager: Awake as non-singleton instance, destroying self");

            // destroy the new instance if it's not the singleton instance
            Destroy(gameObject);
        }
    }

    /// <summary>
    ///     called when the game starts, sets state to the main menu
    /// </summary>
    // /// <exception cref="Exception">generic exception it couldn't verify a safe state when starting the game</exception>
    private void Start()
    {
        SetDisplayState(DisplayState.ScreenMainMenu);

        // _currentScene = SceneManager.GetSceneByName("S2 World");
        // _previousScene = _currentScene;
        // if (_currentScene == null)
        // {
        //     throw new Exception("GameManager.Start: current scene is null");
        // }
    }

    /// <summary>
    ///     helper function to hide any menu that is currently showing
    /// </summary>
    private void HideMenuHelper()
    {
        // get all child menus in the "Menus" parent object
        foreach (var menu in GameObject.FindGameObjectsWithTag("Menus"))
        foreach (Transform menuChild in menu.transform)
        {
            // disable the menu if it's currently active
            if (!menuChild.gameObject.activeSelf) continue;

            Debug.Log($"GameManager.HideMenuHelper: hiding menu '{menuChild}'");
            menuChild.gameObject.SetActive(false);
        }
    }

    /// <summary>
    ///     helper function for <c>SetDisplayState()</c> to pause the game,
    ///     called before the incoming game state is set
    /// </summary>
    /// <param name="incomingState">the to-be-set state of the game</param>
    private void PauseGameHelper(DisplayState incomingState)
    {
        // if we're transitioning from a state of gameplay to a state of non-gameplay,
        // then we should pause the game
        if (_state == DisplayState.Game && incomingState != DisplayState.Game)
        {
            Debug.Log("GameManager.PauseGameHelper: actually pausing game");
            Time.timeScale = 0f;
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        // or if the incoming state is the main menu, we should probably free the cursor
        else if (incomingState == DisplayState.ScreenMainMenu)
        {
            Debug.Log("GameManager.PauseGameHelper: freeing cursor for main menu");
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }

        // if the current and incoming states are the same, then we shouldn't do anything,
        // so we return early
        if (_state == incomingState)
        {
            Debug.Log("GameManager.PauseGameHelper: states are the same, returning early");
            return;
        }

        // hide any menu that is currently showing
        HideMenuHelper();

        // get all child menus in the "Menus" parent object
        foreach (var menuParent in GameObject.FindGameObjectsWithTag("Menus"))
        foreach (Transform menu in menuParent.transform)
        {
            // show the menu based on the incoming state
            // get the associated state of the menu
            var possibleMenuObject = menu.gameObject.GetComponent<CommonMenu>();
            if (possibleMenuObject == null) continue;

            // guard clause if the menu isn't what we're looking for
            if (possibleMenuObject.associatedState != incomingState)
                continue;

            // if the associated state is the same as the incoming state, then show the menu
            Debug.Log($"GameManager.PauseGameHelper: showing menu for {incomingState}");
            menu.gameObject.SetActive(true);
        }
    }

    /// <summary>
    ///     helper function for <c>SetDisplayState()</c> to resume the game,
    ///     called before the incoming game state is set
    /// </summary>
    /// <param name="incomingState">the to-be-set state of the game</param>
    private void ResumeGameHelper(DisplayState incomingState)
    {
        // if we're NOT transitioning from a state of non-gameplay to a state of gameplay,
        // (which means currently we are in a state of gameplay),
        // then we shouldn't do anything, because the game is already running,
        // so we return early
        if (_state == DisplayState.Game || incomingState != DisplayState.Game)
        {
            Debug.Log(
                "GameManager.ResumeGameHelper: returning prematurely as" +
                $" _state={_state} and incomingState={incomingState}");

            return;
        }

        // else, we should resume the game
        Time.timeScale = 1f;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        Debug.Log("GameManager.ResumeGameHelper: resuming game");

        // hide any menu that is currently showing
        HideMenuHelper();
    }

    /// <summary>
    ///     function to show a menu based on the enum passed,
    ///     and any other necessary actions
    /// </summary>
    /// <param name="displayState">the game menu to show</param>
    public void SetDisplayState(DisplayState displayState)
    {
        // boolean check if we're transitioning to the same state
        var transitioning = _state == displayState;

        // check if the game is paused or not
        if (displayState is DisplayState.Game or DisplayState.UnassociatedState)
        {
            Debug.Log($"GameManager.SetDisplayState({displayState}): pre-resume helper");
            ResumeGameHelper(displayState);
        }
        else
        {
            Debug.Log($"GameManager.SetDisplayState({displayState}): pre-pause helper");
            PauseGameHelper(displayState);
        }

        Debug.Log($"GameManager.SetDisplayState({displayState}): post-pause/resume helper");

        // set the state of the game to the incoming state
        _state = displayState;
        Debug.Log($"GameManager.SetDisplayState({displayState}): state is now {displayState}");

        // if we're transitioning into gameplay or into the main menu,
        // we'll need a post-step to enable the correct camera
        if (displayState is not (DisplayState.Game or DisplayState.ScreenMainMenu))
            return;

        // get all MainCamera-tagged objects and disable them
        foreach (var mainCameraObject in GameObject.FindGameObjectsWithTag("MainCamera"))
        {
            // find the camera component
            var potentialCamera = mainCameraObject.GetComponent<Camera>();
            // if the object doesn't have a camera component, skip it
            if (potentialCamera == null) continue;
            // disable the camera
            potentialCamera.enabled = false;
        }

        // declare a target camera to enable
        GameObject targetCameraObject;

        // switch on the state to enable the correct camera
        // could be an if statement, but unity optimizes switch statements anyway
        switch (displayState)
        {
            // if we're transitioning to the main menu state,
            // change the camera to the main menu camera under the "Menus"-tagged parent object
            case DisplayState.ScreenMainMenu:
                Debug.Log("GameManager.SetDisplayState: targeting 'Menu Camera' camera");
                targetCameraObject = GameObject.Find("Menu Camera");
                break;

            // else, we should enable the players' main camera
            default:
                Debug.Log("GameManager.SetDisplayState: targeting 'MainCamera' camera");
                targetCameraObject = GameObject.Find("MainCamera");
                break;
        }

        // find the camera component
        if (targetCameraObject == null) return;
        var targetCamera = targetCameraObject.GetComponent<Camera>();
        if (targetCamera == null) return;

        // enable the target camera
        Debug.Log("GameManager.SetDisplayState: enabling target camera");
        targetCamera.enabled = true;
    }

    /// <summary>
    ///     wrapper function to quit the game
    ///     in case of any cleanup needed
    /// </summary>
    public void Quit()
    {
        // quit the application
        Application.Quit();
    }

    /// <summary>
    ///     resets game state and starts a new game, will call <c>SetDisplayState()</c>
    /// </summary>
    public void NewGame()
    {
        // set to game state
        SetDisplayState(DisplayState.Game);

        // TODO
    }
}