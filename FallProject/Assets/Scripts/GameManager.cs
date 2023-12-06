using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    private Vector3 respawnPosition;
    
    public GameObject deathEffect;
    
    public int currentCoins;

    public int levelEndMusic = 3;

    public string levelToLoad;


    private void Awake()
    {
        instance = this;
    }

    // Start is called before the first frame update
    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        
        respawnPosition = PlayerController.instance.transform.position;
        
        AddCoins(0);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Escape))
        {
            PauseUnpause();
        }
    }
    
    public void Respawn()
    {
        StartCoroutine(RespawnCo());
        
        HealthManager.instance.PlayerKilled();
    }
    
    public IEnumerator RespawnCo()
    {
        PlayerController.instance.gameObject.SetActive(false);
        
        CameraController.instance.theCMBrain.enabled = false;
        
        UIManager.instance.fadeToBlack = true;
        
        Instantiate(deathEffect, PlayerController.instance.transform.position + new Vector3(0f, 1.25f, 0f), PlayerController.instance.transform.rotation);
        
        yield return new WaitForSeconds(2f);
        
        HealthManager.instance.ResetHealth();
        
        UIManager.instance.fadeFromBlack = true;
        
        PlayerController.instance.transform.position = respawnPosition;
        
        CameraController.instance.theCMBrain.enabled = true;
        
        PlayerController.instance.gameObject.SetActive(true);
    }
    
    public void SetSpawnPoint(Vector3 newSpawnPoint)
    {
        respawnPosition = newSpawnPoint;
    }
    
    public void AddCoins(int coinsToAdd)
    {
        currentCoins += coinsToAdd;
        
        UIManager.instance.coinText.text = currentCoins.ToString();
    }
    
    public void PauseUnpause()
    {
        if(UIManager.instance.pauseScreen.activeInHierarchy)
        {
            UIManager.instance.pauseScreen.SetActive(false);
            
            Cursor.visible = false;
            Cursor.lockState = CursorLockMode.Locked;
            
            Time.timeScale = 1f;
        }
        else
        {
            UIManager.instance.pauseScreen.SetActive(true);
            UIManager.instance.CloseOptions();
            
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
            
            Time.timeScale = 0f;
        }
    }
    
    public IEnumerator LevelEndCo()
    {
        AudioManager.instance.PlayMusic(levelEndMusic);
        PlayerController.instance.stopMovement = true;
        yield return new WaitForSeconds(2f);
        UIManager.instance.fadeToBlack = true;
        
        PlayerPrefs.SetInt(SceneManager.GetActiveScene().name + "_unlocked", 1);
        SceneManager.LoadScene(levelToLoad);
    }
}
