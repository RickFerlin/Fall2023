using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHealthManager : MonoBehaviour
{
    public int maxHealth = 1;
    private int currentHealth;

    public int deathSound;
    
    public GameObject deathEffect, itemToDrop;
    
    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    
    public void TakeDamage()
    {
        currentHealth --;
        
        if (currentHealth <= 0)
        {
            GetComponent<EnemyController>().SkellyFall();
            GetComponent<BoxCollider>().enabled = false;
            AudioManager.instance.PlaySFX(deathSound);
            PlayerController.instance.Bounce();
            
            Destroy(gameObject, 2f);
            Instantiate(deathEffect, transform.position, transform.rotation);
            Instantiate(itemToDrop, transform.position + new Vector3(0, 0.5f, 0), transform.rotation);
        }
    }
}
