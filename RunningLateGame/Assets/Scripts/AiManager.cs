using System.Collections;
using UnityEngine;

public class AiManager : MonoBehaviour
{
    public Transform player;
    public float cullingDistance;
    public GameObject aiPrefab;
    private GameObject[] _ais;
    private float _distance;
    public int maxAI;
    private void Start()
    {
        StartCoroutine(Manager());
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(player.position, cullingDistance);
    }

    private IEnumerator Manager()
    {
        while (true)
        {
            _ais = GameObject.FindGameObjectsWithTag("AIs");
            if (_ais.Length < maxAI )
            {
                var instance = Instantiate(aiPrefab, gameObject.transform);
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