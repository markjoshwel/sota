using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : Interactable
{
    public enum DoorType
    {
        Sliding,
        Rotating
    }

    public List<DoorInput> doors;

    public float duration;
    public AnimationCurve curve;
    private bool _isOpen;
    private bool _opening;


    public override void Interact()
    {
        if (!_opening) StartCoroutine(OpenDoor());
    }

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
                {
                    _isOpen = false;
                }
                else
                {
                    _isOpen = true;
                }
            }

            yield return new WaitForEndOfFrame();
        }
    }

    [Serializable]
    public struct DoorInput
    {
        public GameObject doorObject;
        public Vector3 startPosition;
        public DoorType type;
        public Vector3 endPosition;
    }
}