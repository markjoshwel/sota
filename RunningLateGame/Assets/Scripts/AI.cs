/*
 * author: lin hengrui ryan
 * date: 30/7/2024
 * description: ai code for the different ai in the game
 */

using System.Collections;
using UnityEngine;
using UnityEngine.AI;
using Random = System.Random;

public class AI : MonoBehaviour
{
    /// <summary>
    ///     the types of ai that this game object can be
    /// </summary>
    public enum EntityType
    {
        Human,
        Car
    }

    /// <summary>
    ///     to save resources when referring to the speed of this ai if its a human
    /// </summary>
    private static readonly int AnimatorSpeed = Animator.StringToHash("Speed");

    /// <summary>
    ///     to show the entity types in the inspector as a dropdown
    /// </summary>
    public EntityType entityType;

    /// <summary>
    ///     set the layers the AI can be on
    /// </summary>
    public LayerMask walkableLayers;

    /// <summary>
    ///     the destination coordinate of the AI
    /// </summary>
    public Vector3 destinationCoord;

    /// <summary>
    ///     the range that the AI can set as their destination
    /// </summary>
    public int movingRange;

    /// <summary>
    ///     the nav mash agent that is on this AI
    /// </summary>
    private NavMeshAgent _agent;

    /// <summary>
    ///     the animator that is attached to this AI if applicable
    /// </summary>
    private Animator _animator;

    /// <summary>
    ///     the current state that the AI is at this point in time
    /// </summary>
    private string _currentState;

    /// <summary>
    ///     a bool to check if the destination point is set
    /// </summary>
    private bool _destinationPointSet;

    /// <summary>
    ///     the state that the AI will be on the next update
    /// </summary>
    private string _nextState;

    /// <summary>
    ///     to set initial values
    /// </summary>
    public void Awake()
    {
        _agent = GetComponent<NavMeshAgent>();
        if (entityType == EntityType.Human)
        {
            _animator = GetComponent<Animator>();
            _currentState = "Strolling";
        }

        _nextState = _currentState;
        ChangeState();
    }

    /// <summary>
    ///     to update the speed of the AI to the animator each frame and to update any state changes to the ai
    /// </summary>
    public void Update()
    {
        if (entityType == EntityType.Human) _animator.SetFloat(AnimatorSpeed, _agent.velocity.magnitude);
        _currentState = _nextState;
    }

    /// <summary>
    ///     to change the scene when needed
    /// </summary>
    public void ChangeState()
    {
        StartCoroutine(_currentState);
    }

    /// <summary>
    ///     to set a random x and y coordinate for the AI to go to
    /// </summary>
    private void SearchWalkPoint()
    {
        var rand = new Random();
        float randomX = rand.Next(-movingRange * 100, movingRange * 100);
        float randomZ = rand.Next(-movingRange * 100, movingRange * 100);
        destinationCoord = new Vector3(
            transform.position.x + randomX / 100,
            transform.position.y,
            transform.position.z + randomZ / 100
        );
        if (Physics.Raycast(destinationCoord, -transform.up, 2f, walkableLayers)) _destinationPointSet = true;
    }

    /// <summary>
    ///     a state that the AI wonders around using the SearchWalkPoint function to find a location for the AI to go to
    /// </summary>
    private IEnumerator Strolling()
    {
        SearchWalkPoint();

        while (_currentState == "Strolling")
        {
            Debug.Log("strolling");
            if (!_destinationPointSet)
                SearchWalkPoint();
            else
                _agent.SetDestination(destinationCoord);

            if ((transform.position - destinationCoord).magnitude < 1f) _destinationPointSet = false;

            yield return new WaitForSeconds(1f);
        }

        ChangeState();
    }
}