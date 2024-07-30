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
    public enum EntityType
    {
        Human,
        Car
    };

    public EntityType entityType;
    public LayerMask walkableLayers;
    private NavMeshAgent _agent;
    private Animator _animator;
    private string _currentState;
    private string _nextState;
    private static readonly int AnimatorSpeed = Animator.StringToHash("Speed");
    private bool _walkPointSet;
    public Vector3 walkPoint;
    public int strollRange;


    public void Awake()
    {
        _agent = GetComponent<NavMeshAgent>();
        if (entityType == EntityType.Human)
        {
            _animator = GetComponent<Animator>(); 
            _currentState = "Strolling";
            StartCoroutine(Strolling());
        }
    }

    public void Update()
    {
        if (entityType == EntityType.Human)
        {
            _animator.SetFloat(AnimatorSpeed, _agent.velocity.magnitude);
        }
    }

    private void SearchWalkPoint()
    {
        var rand = new Random();
        float randomX = rand.Next(-strollRange * 100, strollRange * 100);
        float randomZ = rand.Next(-strollRange * 100, strollRange * 100);
        walkPoint = new Vector3(
            transform.position.x + (randomX / 100),
            transform.position.y,
            transform.position.z + (randomZ / 100)
        );
        if (Physics.Raycast(walkPoint, -transform.up, 2f, walkableLayers))
        {
            _walkPointSet = true;
        }
    }

    IEnumerator Strolling()
    {
        SearchWalkPoint();
        
        while (_currentState == "Strolling")
        {
            Debug.Log("strolling");
            if (!_walkPointSet)
            {
                SearchWalkPoint();
            }
            else
            {
                _agent.SetDestination((walkPoint));
            }

            if ((transform.position - walkPoint).magnitude < 1f)
            {
                _walkPointSet = false;
            }

            yield return new WaitForSeconds(1F);
        }
    }
}