/*
 * author: mark joshwel
 * date: 11/8/2024
 * description: option menu script for handling credits menu button functions
 */

using Unity.Mathematics;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.Serialization;
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
        ButtonReturn.clicked += OverlayPauseMenu.OptionReturnToMainMenu;

        // get the music slider from the ui root
        SliderAudioMaster = UI.Q<Slider>("MasterSlider");
        // TODO: and set the initial value to the current music volume
        // SliderAudioMusic.value = Audio.GetMusicVolume() * 100;
        // and subscribe appropriate functions
        SliderAudioMaster.RegisterCallback<ChangeEvent<float>>(OptionSetMasterVolume);

        // get the music slider from the ui root
        SliderAudioMusic = UI.Q<Slider>("MusicSlider");
        // TODO: and set the initial value to the current music volume

        // and subscribe appropriate functions
        SliderAudioMusic.RegisterCallback<ChangeEvent<float>>(OptionSetMusicVolume);

        // get the sfx slider from the ui root
        SliderAudioSfx = UI.Q<Slider>("SFXSlider");
        // TODO: and set the initial value to the current sfx volume
        // SliderAudioSfx.value = Audio.GetSfxVolume() * 100;
        // and subscribe appropriate functions
        SliderAudioSfx.RegisterCallback<ChangeEvent<float>>(OptionSetSfxVolume);
    }

    public void Start()
    {
        
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