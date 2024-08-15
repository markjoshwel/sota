/*
 * author: ryan lin
 * date: 08/08/2024
 * description: to cull and spawn AI people
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = System.Random;


/// <summary>
///     to cull and spawn AI people
/// </summary>
public class AIManager : MonoBehaviour
{
    /// <summary>
    ///     a reference to the player
    /// </summary>
    public Transform player;

    /// <summary>
    ///     the distance of which the AI would be "killed"
    /// </summary>
    public float cullingDistance;

    /// <summary>
    ///     the prefab to spawn
    /// </summary>
    public GameObject aiPrefab;

    /// <summary>
    ///     the maximum number of AI that can be spawned at any time
    /// </summary>
    public int maxAI;

    /// <summary>
    ///     AI Spawn locations
    /// </summary>
    [SerializeField] private List<Transform> aiSpawn;

    /// <summary>
    ///     An array that contains the game objects of the AI objects
    /// </summary>
    private GameObject[] _ais;

    /// <summary>
    ///     a temporary float to find the distance between the player and the AI
    /// </summary>
    private float _distance;

    /// <summary>
    ///     to start the manager loop
    /// </summary>
    private void Start()
    {
        StartCoroutine(Manager());
    }

    /// <summary>
    ///     to show the range in the inspector when the object is selected
    /// </summary>
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(player.position, cullingDistance);
    }

    /// <summary>
    ///     to allow the IEnumerator to destroy or instantiate AI
    /// </summary>
    private IEnumerator Manager()
    {
        while (true)
        {
            // FIXME: feels weird
            _ais = GameObject.FindGameObjectsWithTag("AIs");
            if (_ais.Length < maxAI)
            {
                var rand = new Random();
                var spawnNo = rand.Next(0, aiSpawn.Count);

                var instance = Instantiate(aiPrefab, aiSpawn[spawnNo]);
            }

            foreach (var i in _ais)
            {
                _distance = Vector3.Distance(i.transform.position, player.position);
                if (_distance > cullingDistance) Destroy(i.gameObject);
            }

            yield return new WaitForSeconds(1);
        }
    }
}