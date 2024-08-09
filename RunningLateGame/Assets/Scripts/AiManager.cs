/*
 * author: ryan lin
 * date: TODO
 * description: TODO
 */

using System.Collections;
using UnityEngine;

public class AIManager : MonoBehaviour
{
    /// <summary>
    ///     TODO
    /// </summary>
    public Transform player;

    /// <summary>
    ///     TODO
    /// </summary>
    public float cullingDistance;

    /// <summary>
    ///     TODO
    /// </summary>
    public GameObject aiPrefab;

    /// <summary>
    ///     TODO
    /// </summary>
    public int maxAI;

    /// <summary>
    ///     TODO
    /// </summary>
    private GameObject[] _ais;

    /// <summary>
    ///     TODO
    /// </summary>
    private float _distance;

    /// <summary>
    ///     TODO
    /// </summary>
    private void Start()
    {
        StartCoroutine(Manager());
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(player.position, cullingDistance);
    }

    /// <summary>
    ///     TODO
    /// </summary>
    private IEnumerator Manager()
    {
        while (true)
        {
            // FIXME: feels weird
            _ais = GameObject.FindGameObjectsWithTag("AIs");
            if (_ais.Length < maxAI)
            {
                // var instance = Instantiate(aiPrefab, gameObject.transform);
            }

            foreach (var i in _ais)
            {
                _distance = Vector3.Distance(i.transform.position, player.position);
                if (_distance > cullingDistance) Destroy(i.gameObject);
            }

            yield return new WaitForSeconds(1);
        }
        // TODO: iterator never returns? is this intended?
    }
}