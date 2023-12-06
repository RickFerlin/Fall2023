using UnityEngine;

public class HurtPlayer : MonoBehaviour
{
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
            {
                HealthManager.instance.HurtPlayer();
            }
    }
}
