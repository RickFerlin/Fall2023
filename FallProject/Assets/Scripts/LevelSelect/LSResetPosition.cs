using UnityEngine;

public class LSResetPosition : MonoBehaviour
{
    public static LSResetPosition instance;
    
    public Vector3 respawnPosition;
    
    void Awake()
    {
        instance = this;
    }
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            PlayerController.instance.gameObject.SetActive(false);
            PlayerController.instance.transform.position = respawnPosition;
            PlayerController.instance.gameObject.SetActive(true);
        }
    }
}
