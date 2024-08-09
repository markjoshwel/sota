/*
 * author: ryan lin
 * date: 8/8/2024
 * description: door interaction and animation
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
///     TODO
/// </summary>
public class Door : CommonInteractable
{
    /// <summary>
    ///     TODO
    /// </summary>
    public enum DoorType
    {
        Sliding,
        Rotating
    }

    /// <summary>
    ///     TODO
    /// </summary>
    public List<DoorInput> doors;

    /// <summary>
    ///     TODO
    /// </summary>
    public float duration;
    
    /// <summary>
    ///     TODO
    /// </summary>
    public AnimationCurve curve;
    
    /// <summary>
    ///     TODO
    /// </summary>
    private bool _isOpen;
    
    /// <summary>
    ///     TODO
    /// </summary>
    private bool _opening;

    /// <summary>
    ///     TODO
    /// </summary>
    public override void Interact()
    {
        if (!_opening) StartCoroutine(OpenDoor());
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private IEnumerator OpenDoor()
    {
        _opening = true;
        float currentDuration = 0;
        while (_opening)
        {
            currentDuration += Time.deltaTime;
            var t = currentDuration / duration;
            foreach (var variable in doors)
                if (!_isOpen)
                {
                    if (variable.type == DoorType.Sliding)
                        variable.doorObject.transform.localPosition = Vector3.Lerp(variable.startPosition,
                            variable.endPosition,
                            curve.Evaluate(t));
                    else if (variable.type == DoorType.Rotating)
                        variable.doorObject.transform.localEulerAngles = Vector3.Slerp(variable.startPosition,
                            variable.endPosition,
                            curve.Evaluate(t));
                }
                else
                {
                    if (variable.type == DoorType.Sliding)
                        variable.doorObject.transform.localPosition = Vector3.Lerp(variable.endPosition,
                            variable.startPosition,
                            curve.Evaluate(t));
                    else if (variable.type == DoorType.Rotating)
                        variable.doorObject.transform.localEulerAngles = Vector3.Slerp(variable.endPosition,
                            variable.startPosition,
                            curve.Evaluate(t));
                }


            if (currentDuration >= duration)
            {
                currentDuration = 0;
                _opening = false;
                if (_isOpen)
                    _isOpen = false;
                else
                    _isOpen = true;
            }

            yield return new WaitForEndOfFrame();
        }
    }

    /// <summary>
    ///     TODO
    /// </summary>
    // NOTE: why is this at the bottom lol
    [Serializable]
    public struct DoorInput
    {
        public GameObject doorObject;
        public Vector3 startPosition;
        public DoorType type;
        public Vector3 endPosition;
    }
}