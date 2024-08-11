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
///     door interaction and animation
/// </summary>
public class Door : CommonInteractable
{
    /// <summary>
    ///     the type of door that is being used
    /// </summary>
    public enum DoorType
    {
        Sliding,
        Rotating
    }

    /// <summary>
    ///     the list of doors that are being used
    /// </summary>
    public List<DoorInput> doors;

    /// <summary>
    ///     the duration of the door opening
    /// </summary>
    public float duration;

    /// <summary>
    ///     the animation curve of the door opening
    /// </summary>
    public AnimationCurve curve;

    /// <summary>
    ///     a bool to check if the door is open
    /// </summary>
    [HideInInspector] public bool isOpen;

    /// <summary>
    ///     a bool to check if the door is opening
    /// </summary>
    [HideInInspector] public bool opening;

    /// <summary>
    ///     to interact with the door
    /// </summary>
    public override void Interact()
    {
        if (!opening) StartCoroutine(OpenDoor());
    }

    /// <summary>
    ///     to open the door
    /// </summary>
    public IEnumerator OpenDoor()
    {
        opening = true;
        float currentDuration = 0;
        while (opening)
        {
            currentDuration += Time.deltaTime;
            var t = currentDuration / duration;
            foreach (var variable in doors)
                if (!isOpen)
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
                opening = false;
                isOpen = !isOpen;
            }

            yield return new WaitForEndOfFrame();
        }
    }

    /// <summary>
    ///     a struct to hold the door input
    /// </summary>
    [Serializable]
    public struct DoorInput
    {
        public GameObject doorObject;
        public Vector3 startPosition;
        public DoorType type;
        public Vector3 endPosition;
    }
}