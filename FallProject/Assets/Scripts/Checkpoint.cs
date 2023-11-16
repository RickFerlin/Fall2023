using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoint : MonoBehaviour
{
    public GameObject checkpointOn, checkpointOff;
    
    
    
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            GameManager.instance.SetSpawnPoint(transform.position);
            
            Checkpoint[] allCheckpoints = FindObjectsOfType<Checkpoint>();
            for(int i = 0; i < allCheckpoints.Length; i++)
            {
                allCheckpoints[i].checkpointOff.SetActive(true);
                allCheckpoints[i].checkpointOn.SetActive(false);
            }
            
            checkpointOff.SetActive(false);
            checkpointOn.SetActive(true);
        }
    }
}
