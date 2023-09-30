using System;
using UnityEngine;

public class BallBehaviour : MonoBehaviour
{
    public Rigidbody rigidbody;
    public float thrust = 20f;
    [SerializeField] private float minSpeed;

    void Start()
    {
        rigidbody = GetComponent<Rigidbody>();
        Invoke(nameof(SetDirection), 1.5f);
    }

    void SetDirection()
    {
        Vector3 force = Vector3.zero;
        force.x = UnityEngine.Random.Range(-1f, 1f);
        force.y = -1f;
        
        rigidbody.AddForce(force.normalized * thrust * Time.deltaTime);
    }
}
