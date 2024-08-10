/*
 * author: mark joshwel
 * date: 29/5/2024
 * description: audio manager for handling audio in the game
 */

using System;
using UnityEngine;

/// <summary>
///     singleton class for handling audio in the game
/// </summary>
public class AudioManager : MonoBehaviour
{
    /// <summary>
    ///     singleton pattern: define instance field for accessing the singleton elsewhere
    /// </summary>
    public static AudioManager Instance;

    /// <summary>
    ///     music audio source
    /// </summary>
    [SerializeField] private AudioSource musicSource;

    /// <summary>
    ///     music source default volume
    /// </summary>
    [SerializeField] private float musicSourceDefaultVolume = 0.6f;

    /// <summary>
    ///     sound effects (sfx) audio source
    /// </summary>
    [SerializeField] private AudioSource sfxSource;

    /// <summary>
    ///     sound effects (sfx) source default volume
    /// </summary>
    [SerializeField] private float sfxSourceDefaultVolume = 0.6f;

    /// <summary>
    ///     audio clip for menu button click
    /// </summary>
    [SerializeField] public AudioClip menuButtonClick;

    /// <summary>
    ///     audio clip for menu button hover
    /// </summary>
    [SerializeField] public AudioClip menuButtonHover;

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

            Debug.Log("AudioManager: Awake as singleton instance");
        }
        // check if instance is already set and it's not this instance
        else if (Instance != null && Instance != this)
        {
            Debug.Log("AudioManager: Awake as non-singleton instance, destroying self");
            // destroy the new instance if it's not the singleton instance
            Destroy(gameObject);
        }
    }

    /// <summary>
    ///     function to set default volumes for the audio sources
    /// </summary>
    public void Start()
    {
        // set the default volume for the music source
        musicSource.volume = musicSourceDefaultVolume;

        // set the default volume for the sfx source
        sfxSource.volume = sfxSourceDefaultVolume;
    }

    /// <summary>
    ///     plays the audio clip once on the music source/channel
    /// </summary>
    /// <param name="clip">audio clip to play</param>
    public void PlayOnMusicChannel(AudioClip clip)
    {
        musicSource.PlayOneShot(clip);
    }

    /// <summary>
    ///     plays the audio clip once on the sound effects (sfx) source/channel
    /// </summary>
    /// <param name="clip">audio clip to play</param>
    public void PlayOnSFXChannel(AudioClip clip)
    {
        sfxSource.PlayOneShot(clip);
    }

    /// <summary>
    ///     function to get the current volume of the music source/channel
    /// </summary>
    /// <returns>volume as float from 0.0 to 1.0</returns>
    public float GetMusicVolume()
    {
        return musicSource.volume;
    }

    /// <summary>
    ///     sets the volume of the music source/channel
    /// </summary>
    /// <param name="volume">float (0.0-1.0) to set the channel volume to</param>
    public void SetMusicVolume(float volume)
    {
        musicSource.volume = Math.Min(volume, 1.0f);
    }

    /// <summary>
    ///     function to get the current volume of the sound effects (sfx) source/channel
    /// </summary>
    /// <returns>volume as float from 0.0 to 1.0</returns>
    public float GetSfxVolume()
    {
        return sfxSource.volume;
    }

    /// <summary>
    ///     sets the volume of the sound effects (sfx) source/channel
    /// </summary>
    /// <param name="volume">float (0.0-1.0) to set the channel volume to</param>
    public void SetSfxVolume(float volume)
    {
        sfxSource.volume = Math.Min(volume, 1.0f);
    }
}