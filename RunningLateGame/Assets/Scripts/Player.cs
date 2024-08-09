/*
 * author: ryan lin
 * date: 8/8/2024
 * description: TODO
 */

using UnityEngine;

/// <summary>
///     TODO
/// </summary>
public class Player : MonoBehaviour
{
    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private Transform playerPosition;
    
    /// <summary>
    ///     TODO
    /// </summary>
    [SerializeField] private float seeDistance;
    
    /// <summary>
    ///     TODO
    /// </summary>
    public LayerMask raycastLayers;
    
    /// <summary>
    ///     TODO
    /// </summary>
    private bool _active;
    
    /// <summary>
    ///     TODO
    /// </summary>
    private CommonInteractable _currentInteractable;
    
    /// <summary>
    ///     TODO
    /// </summary>
    private bool _raycast;
    
    /// <summary>
    ///     TODO
    /// </summary>
    public RaycastHit Hit;

    /// <summary>
    ///     TODO
    /// </summary>
    private void Update()
    {
        _raycast = Physics.Raycast(
            playerPosition.position,
            playerPosition.TransformDirection(Vector3.forward),
            out Hit,
            seeDistance,
            raycastLayers
        );
        Debug.DrawRay(
            playerPosition.position,
            playerPosition.TransformDirection(Vector3.forward) * seeDistance,
            Color.green
        );
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private void OnAction()
    {
        Debug.Log("test");
        if (_raycast)
            if (Hit.transform.CompareTag("Interactable"))
                Hit.transform.GetComponent<CommonInteractable>().Interact();
    }
}