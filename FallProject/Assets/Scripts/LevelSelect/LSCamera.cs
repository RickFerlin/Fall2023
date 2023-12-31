using UnityEngine;

public class LSCamera : MonoBehaviour
{
    public Transform target;
    private Vector3 offset;
    
    void Awake()
    {
        offset = transform.position - target.position;
    }

    void Update()
    {
        transform.position = target.position + offset;
    }
}
