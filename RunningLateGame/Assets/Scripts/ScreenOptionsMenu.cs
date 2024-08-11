/*
 * author: mark joshwel
 * date: 11/8/2024
 * description: option menu script for handling credits menu button functions
 */

using UnityEngine.UIElements;

/// <summary>
///     class managing the credits menu and button function invocations
/// </summary>
public class ScreenOptionsMenu : CommonMenu
{
    /// <summary>
    ///     button to return to the main menu
    /// </summary>
    public Button ButtonReturn;

    /// <summary>
    ///     slider for master (music + sfx) volume
    /// </summary>
    public Slider SliderAudioMaster;

    /// <summary>
    ///     slider for music volume
    /// </summary>
    public Slider SliderAudioMusic;

    /// <summary>
    ///     slider for sfx volume
    /// </summary>
    public Slider SliderAudioSfx;
    
    /// <summary>
    ///     function to associate a display state with the menu,
    ///     and subscribe button events to their respective functions
    /// </summary>
    public override void OnEnable()
    {
        // set the associated state and call the base OnEnable
        associatedState = GameManager.DisplayState.ScreenOptionsMenu;
        base.OnEnable();

        // get the start button from the ui root and subscribe appropriate functions
        ButtonReturn = UI.Q<Button>("ButtonReturn");
        ButtonReturn.clicked += PlayClick;
        ButtonReturn.clicked += OptionReturnToMainMenu;

        // get the music slider from the ui root
        SliderAudioMaster = UI.Q<Slider>("MasterSlider");
        // TODO: and set the initial value to the current music volume
        // SliderAudioMusic.value = Audio.GetMusicVolume() * 100;
        // and subscribe appropriate functions
        SliderAudioMaster.RegisterCallback<ChangeEvent<float>>(OptionSetMasterVolume);
        
        // get the music slider from the ui root
        SliderAudioMusic = UI.Q<Slider>("MusicSlider");
        // TODO: and set the initial value to the current music volume
        // SliderAudioMusic.value = Audio.GetMusicVolume() * 100;
        // and subscribe appropriate functions
        SliderAudioMusic.RegisterCallback<ChangeEvent<float>>(OptionSetMusicVolume);
        
        // get the sfx slider from the ui root
        SliderAudioSfx = UI.Q<Slider>("SFXSlider");
        // TODO: and set the initial value to the current sfx volume
        // SliderAudioSfx.value = Audio.GetSfxVolume() * 100;
        // and subscribe appropriate functions
        SliderAudioSfx.RegisterCallback<ChangeEvent<float>>(OptionSetSfxVolume);
    }

    /// <summary>
    ///     handles return to the main menu button press,
    ///     signals the game manager appropriately
    /// </summary>
    private void OptionReturnToMainMenu()
    {
        // return to the main menu
        Game.SetDisplayState(GameManager.DisplayState.ScreenMainMenu);
    }
    
    /// <summary>
    ///     handle music volume slider change,
    ///     sets the music channel volume in the audio manager appropriately
    /// </summary>
    /// <param name="evt">change event</param>
    private void OptionSetMasterVolume(ChangeEvent<float> evt)
    {
        // TODO: slider is from 0 to 100, convert to 0 to 1, and set
        // Audio.SetMusicVolume(evt.newValue / 100);
    }
    
    /// <summary>
    ///     handle music volume slider change,
    ///     sets the music channel volume in the audio manager appropriately
    /// </summary>
    /// <param name="evt">change event</param>
    private void OptionSetMusicVolume(ChangeEvent<float> evt)
    {
        // TODO: slider is from 0 to 100, convert to 0 to 1, and set
        // Audio.SetMusicVolume(evt.newValue / 100);
    }

    /// <summary>
    ///     handle sfx volume slider change,
    ///     sets the sfx channel volume in the audio manager appropriately
    /// </summary>
    /// <param name="evt">change event</param>
    private void OptionSetSfxVolume(ChangeEvent<float> evt)
    {
        // TODO: slider is from 0 to 100, convert to 0 to 1, and set
        // Audio.SetSfxVolume(evt.newValue / 100);
    }
}