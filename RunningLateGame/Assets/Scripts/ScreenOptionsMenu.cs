/*
 * author: mark joshwel
 * date: 11/8/2024
 * description: option menu script for handling credits menu button functions
 */

using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UIElements;

/// <summary>
///     class managing the credits menu and button function invocations
/// </summary>
public class ScreenOptionsMenu : CommonMenu
{
    public AudioMixer mixer;

    /// <summary>
    ///     button to return to the main menu
    /// </summary>
    private Button _buttonReturn;

    /// <summary>
    ///     slider for master (music + sfx) volume
    /// </summary>
    private Slider _sliderAudioMaster;

    /// <summary>
    ///     slider for music volume
    /// </summary>
    private Slider _sliderAudioMusic;

    /// <summary>
    ///     slider for sfx volume
    /// </summary>
    private Slider _sliderAudioSfx;

    public void Start()
    {
    }

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
        _buttonReturn = UI.Q<Button>("ButtonReturn");
        _buttonReturn.clicked += PlayClick;
        _buttonReturn.clicked += OverlayPauseMenu.OptionReturnToMainMenu;

        // TODO: and set the initial value to the current music volume
        // get the music slider from the ui root and subscribe appropriate functions
        _sliderAudioMaster = UI.Q<Slider>("MasterSlider");
        _sliderAudioMaster.RegisterCallback<ChangeEvent<float>>(OptionSetMasterVolume);

        // TODO: and set the initial value to the current music volume
        // get the music slider from the ui root and subscribe appropriate functions
        _sliderAudioMusic = UI.Q<Slider>("MusicSlider");
        _sliderAudioMusic.RegisterCallback<ChangeEvent<float>>(OptionSetMusicVolume);

        // TODO: and set the initial value to the current sfx volume
        // get the sfx slider from the ui root and subscribe appropriate functions
        _sliderAudioSfx = UI.Q<Slider>("SFXSlider");
        _sliderAudioSfx.RegisterCallback<ChangeEvent<float>>(OptionSetSfxVolume);
    }

    private static float ConvertVolume(float linearVolume)
    {
        return Mathf.Log10(math.max(0.0000001f, linearVolume / 100)) * 20;
    }

    /// <summary>
    ///     handle music volume slider change,
    ///     sets the music channel volume in the audio manager appropriately
    /// </summary>
    /// <param name="evt">change event</param>
    private void OptionSetMasterVolume(ChangeEvent<float> evt)
    {
        mixer.SetFloat("MasterVolume", ConvertVolume(evt.newValue));
    }

    /// <summary>
    ///     handle music volume slider change,
    ///     sets the music channel volume in the audio manager appropriately
    /// </summary>
    /// <param name="evt">change event</param>
    private void OptionSetMusicVolume(ChangeEvent<float> evt)
    {
        mixer.SetFloat("MusicVolume", ConvertVolume(evt.newValue));
    }

    /// <summary>
    ///     handle sfx volume slider change,
    ///     sets the sfx channel volume in the audio manager appropriately
    /// </summary>
    /// <param name="evt">change event</param>
    private void OptionSetSfxVolume(ChangeEvent<float> evt)
    {
        mixer.SetFloat("SFXVolume", ConvertVolume(evt.newValue));
    }
}