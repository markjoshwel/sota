/*
 * author: mark joshwel, sai puay
 * date: 11/8/2024
 * description: game manager singleton for a single source of truth state management
 */

using System;
using StarterAssets;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;
using UnityEngine.UIElements;
using Cursor = UnityEngine.Cursor;

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
    ///     game object for the interaction prompt
    /// </summary>
    [SerializeField] private GameObject guiInteractionPromptObject;

    /// <summary>
    ///     game object for the heads-up display
    /// </summary>
    [SerializeField] private GameObject guiHudObject;

    /// <summary>
    ///     game object for the completion menu
    /// </summary>
    [SerializeField] private GameObject guiCompletedMenuObject;

    /// <summary>
    ///     reference to the player object
    /// </summary>
    public GameObject player;

    /// <summary>
    ///     float to keep track of the elapsed play/run/speeder time
    /// </summary>
    private float _elapsedRunTime;

    /// <summary>
    ///     checked when the scene is loaded to restart the game and skip the main menu
    /// </summary>
    private bool _restarting;

    /// <summary>
    ///     the current state of the game
    /// </summary>
    private DisplayState _state = DisplayState.UnassociatedState;

    /// <summary>
    ///     the visual element object for game ui (hud/prompts/tooltips)
    /// </summary>
    private VisualElement _ui;

    /// <summary>
    ///     hud ui label for an interaction prompt/tooltip
    /// </summary>
    private Label _uiLabelInteractionPrompt;

    /// <summary>
    ///     hud ui label for the speed-run stopwatch
    /// </summary>
    private Label _uiLabelStopwatch;

    /// <summary>
    ///     property to check if the game is paused based on the current <c>DisplayState</c>
    /// </summary>
    public bool Paused => _state != DisplayState.Game;

    /// <summary>
    ///     function to set doesn't destroy on load and checks for multiple instances
    /// </summary>
    /// <exception cref="NullReferenceException">thrown if a Heads-Up Display game object isn't set in the properties</exception>
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
        if (guiInteractionPromptObject == null)
            throw new NullReferenceException("GameManager: guiInteractionPromptObject not set");

        if (guiHudObject == null)
            throw new NullReferenceException("GameManager: guiHudObject not set");

        // if we're restarting, skip the main menu
        if (_restarting)
        {
            Debug.Log("GameManager.Start: inherited _restarting, honouring it rn");
            NewGame();
        }
        else
        {
            Debug.Log("GameManager.Start: setting to main menu and pausing");
            SetDisplayState(DisplayState.ScreenMainMenu);
            PauseGameHelper(DisplayState.ScreenMainMenu);
        }
    }

    /// <summary>
    ///     game run speed run stopwatch logic
    /// </summary>
    private void Update()
    {
        if (Paused) return;

        _elapsedRunTime += Time.deltaTime;
        var minutes = _elapsedRunTime / 60;
        var seconds = _elapsedRunTime % 60;
        var milliseconds = _elapsedRunTime * 1000 % 1000;
        _uiLabelStopwatch.text = $"{minutes:00}:{seconds:00}.{milliseconds:000}";
    }

    /// <summary>
    ///     called when the game object is enabled
    /// </summary>
    private void OnEnable()
    {
        InitialiseInterfaceElements();
    }

    /// <summary>
    ///     initialise ui elements used by the game[ manager]
    /// </summary>
    /// >
    private void InitialiseInterfaceElements()
    {
        _ui = guiInteractionPromptObject.GetComponent<UIDocument>()?.rootVisualElement;
        _uiLabelInteractionPrompt = _ui.Q<Label>("InteractionPromptLabel");

        _ui = guiHudObject.GetComponent<UIDocument>()?.rootVisualElement;
        _uiLabelStopwatch = _ui.Q<Label>("CurrentStopwatchLabel");
        // _uiLabelScore = _ui.Q<Label>("CurrentScoreLabel");
    }

    /// <summary>
    ///     helper function to hide any menu that is currently showing
    /// </summary>
    private void HideMenuHelper()
    {
        // get all children in the "Menus" parent object
        foreach (var child in GameObject.FindGameObjectsWithTag("Interfaces"))
        foreach (Transform menuChild in child.transform)
        {
            // skip if it is 'GameInterface' object
            if (menuChild.gameObject.CompareTag("GameInterface")) continue;

            // disable the menu if it's currently active
            if (!menuChild.gameObject.activeSelf) continue;

            Debug.Log($"GameManager.HideMenuHelper: hiding menu '{menuChild}'");
            menuChild.gameObject.SetActive(false);
        }
    }

    /// <summary>
    ///     helper function to hide any game interfaces that are currently showing
    /// </summary>
    private void SetInterfaceActive(bool active)
    {
        // foreach (var inter in GameObject.FindGameObjectsWithTag("GameInterface"))
        foreach (var child in GameObject.FindGameObjectsWithTag("Interfaces"))
        foreach (Transform inter in child.transform)
        {
            if (!inter.gameObject.CompareTag("GameInterface")) continue;
            Debug.Log($"GameManager.SetInterfaceActive: setting interface '{inter}' {active}");
            inter.gameObject.SetActive(active);
        }

        if (active)
            InitialiseInterfaceElements();
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

            // only hide interfaces if we're transitioning to the main menu
            SetInterfaceActive(false);
        }

        // freeze player input/control if we're not transitioning to a game state
        if (incomingState != DisplayState.Game)
        {
            var playerInput = GameObject.Find("PlayerArmature")?.GetComponent<PlayerInput>();
            if (playerInput != null)
            {
                Debug.Log("GameManager.PauseGameHelper: sentencing player input/control to a ball and chain boowomp");
                playerInput.enabled = false;
            }
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

        // get all child interfaces in the "Interfaces" parent object
        foreach (var interfaces in GameObject.FindGameObjectsWithTag("Interfaces"))
        foreach (Transform menu in interfaces.transform)
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
        Debug.Log("GameManager.ResumeGameHelper: resuming game");
        Time.timeScale = 1f;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        // hide any menu that is currently showing
        HideMenuHelper();

        // show game interfaces
        SetInterfaceActive(true);

        // free the character controller
        var playerInput = GameObject.Find("PlayerArmature")?.GetComponent<PlayerInput>();
        if (playerInput == null) return;
        Debug.Log("GameManager.ResumeGameHelper: enabling player input/control");
        playerInput.enabled = true;
    }

    /// <summary>
    ///     function to show a menu based on the enum passed,
    ///     and any other necessary actions
    /// </summary>
    /// <param name="displayState">the game menu to show</param>
    public void SetDisplayState(DisplayState displayState)
    {
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
        {
            Debug.Log($"GameManager.SetDisplayState({displayState}): skipping post-step");
            return;
        }

        // disabling (1): disable the 'Menu Camera' camera
        var menuCameraObject = GameObject.Find("Menu Camera")?.GetComponent<Camera>();
        if (menuCameraObject != null)
        {
            Debug.Log("GameManager.SetDisplayState: disabling 'Menu Camera' camera");
            menuCameraObject.enabled = false;
        }

        // disabling (2): get all MainCamera-tagged objects and disable them
        foreach (var mainCameraObject in GameObject.FindGameObjectsWithTag("MainCamera"))
        {
            Debug.Log($"GameManager.SetDisplayState: disabling 'MainCamera' camera {mainCameraObject}");
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
            // change the camera to the main menu camera named very specifically such
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

        // find the camera component and enable it
        var targetCamera = targetCameraObject?.GetComponent<Camera>();
        if (targetCamera == null) return;
        targetCamera.enabled = true;
        Debug.Log("GameManager.SetDisplayState: enabled target camera");
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

        // TODO: reset game state
    }

    /// <summary>
    ///     function to restart the current run
    /// </summary>
    public void RestartRun()
    {
        _restarting = true;
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    /// <summary>
    ///     function to restart the game
    /// </summary>
    public void RestartGame()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        Destroy(this);
    }

    /// <summary>
    ///     function to set an interaction prompt/tooltip for the player
    /// </summary>
    /// <param name="prompt">string to show to the player</param>
    public void SetInteractionPrompt(string prompt)
    {
        _uiLabelInteractionPrompt.text = prompt;
        _uiLabelInteractionPrompt.visible = true;
    }

    /// <summary>
    ///     function to stop showing an interaction prompt/tooltip for the player
    /// </summary>
    public void ClearInteractionPrompt()
    {
        _uiLabelInteractionPrompt.visible = false;
    }

    /// <summary>
    ///     function to end the run, calculate a score and grade, and show the appropriate menu
    /// </summary>
    public void ProperlyEndRun()
    {
        SetDisplayState(DisplayState.OverlayCompleteUnderTimeMenu);

        var ui = guiCompletedMenuObject.GetComponent<UIDocument>()?.rootVisualElement;
        var timeLabel = ui.Q<Label>("FinalTimeLabel");
        var timeScore = ui.Q<Label>("FinalScoreLabel");
        var timeGrade = ui.Q<Label>("FinalGradeLabel");

        // calculate a score between 0-1000 and grade (S, A, B, C, D)
        // if you finish the run in 2.5 minutes, you get a 1000
        // from 2.5 to 5 minutes, the score goes down to 0

        // scoring parameters
        const float maxScore = 1000f;
        const float maxTimeForMaxScore = 15f; // 2.5 minutes
        const float maxTimeForMinScore = 180f; // 5 minutes

        var score = _elapsedRunTime switch
        {
            <= maxTimeForMaxScore => maxScore,
            >= maxTimeForMinScore => 0,
            _ => maxScore * (1 - (_elapsedRunTime - maxTimeForMaxScore) / (maxTimeForMinScore - maxTimeForMaxScore))
        };

        timeLabel.text = $"Completed in {_uiLabelStopwatch.text}";
        timeGrade.text = score switch
        {
            >= 900 => "S",
            >= 800 => "A",
            >= 700 => "B",
            >= 600 => "C",
            _ => "D"
        };
        timeScore.text = $"Score: {score}";
    }

    /// <summary>
    ///     increases the player's speed
    /// </summary>
    /// <param name="speedBoost">the amount of speed boosts it increases</param>
    public void AddSpeed(float speedBoost)
    {
        player.GetComponent<ThirdPersonController>().MoveSpeed += speedBoost;
        player.GetComponent<ThirdPersonController>().SprintSpeed += speedBoost;
    }
}