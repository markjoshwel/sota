/*
 * author: ryan lin, mark joshwel
 * date: 15/08/2024
 * description: common vehicular behaviour
 */

using UnityEngine;

/// <summary>
///     logic to move a vehicle to a target position
/// </summary>
public class CommonVehicle : MonoBehaviour
{
    /// <summary>
    ///     game object that the vehicle is moving towards
    /// </summary>
    [SerializeField] private GameObject targetWaypoint;

    /// <summary>
    ///     enum of states that the vehicle can be in
    /// </summary>
    private enum State
    {
        Stopped,
        Slowed,
        Driving
    }
}