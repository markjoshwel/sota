/*
 * authors: ryan lin, mark joshwel
 * date: 10/8/2024
 * description: lift behaviour implementation
 */

using System.Collections;
using UnityEngine;

/// <summary>
///     lift-ting behaviour for lifts
/// </summary>
public class LiftController : MonoBehaviour
{
    /// <summary>
    ///     height of each level
    /// </summary>
    public float levelHeight;

    /// <summary>
    ///     the time it takes for the lift to move from one floor to another
    /// </summary>
    public float duration;

    /// <summary>
    ///     a bool to check if the lift is moving
    /// </summary>
    [HideInInspector] public bool moving;

    /// <summary>
    ///     the current time of the lift moving for lerps
    /// </summary>
    private float _currentTime;

    /// <summary>
    ///     the door of the lift
    /// </summary>
    private Door _liftDoor;

    /// <summary>
    ///     the start position of the lift
    /// </summary>
    private Vector3 _start;

    /// <summary>
    ///     the target position of the lift
    /// </summary>
    private Vector3 _target;

    /// <summary>
    ///     initialisation function
    /// </summary>
    private void Start()
    {
        _liftDoor = transform.parent.GetComponentInChildren<Door>();
        DoorCloser();
    }

    /// <summary>
    ///     to check if the door is open and call a function to close it
    /// </summary>
    public void DoorCloser()
    {
        Debug.Log("DoorCloser");
        if (_liftDoor.isOpen && !_liftDoor.opening)
            Invoke(nameof(CloseDoor), 2f);
        Invoke(nameof(DoorCloser), 2f);
    }

    /// <summary>
    ///     to close the door
    /// </summary>
    public void CloseDoor()
    {
        _liftDoor.Interact();
    }

    /// <summary>
    ///     to move the lift
    /// </summary>
    public IEnumerator Move(int floorsMoved)
    {
        moving = true;
        _start = transform.position;
        _target = new Vector3(_start.x, _start.y + levelHeight * floorsMoved, _start.z);
        _currentTime = 0;
        while (_currentTime < duration)
        {
            _currentTime += Time.deltaTime;
            transform.position = Vector3.Lerp(_start, _target, _currentTime / duration);
            yield return null;
        }

        moving = false;
    }
}