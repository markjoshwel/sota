using UnityEngine;


public class Player : MonoBehaviour
{
    public RaycastHit Hit;
    [SerializeField] private Transform playerPosition;
    [SerializeField] private float seeDistance;
    private Interactable _currentInteractable;
    private bool _active;
    private bool _raycast;
    public LayerMask raycastLayers;


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

    private void OnAction()
    {
        Debug.Log("test");
        if (_raycast)
        {
            if (Hit.transform.CompareTag("Interactable"))
            {
                Hit.transform.GetComponent<Interactable>().Interact();
            }
        }
    }
}