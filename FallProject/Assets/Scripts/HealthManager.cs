using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthManager : MonoBehaviour
{
    public static HealthManager instance;
    
    public int currentHealth, maxHealth;
    
    public float invincibleLength = 2f;
    private float invincibleCounter;
    
    public Sprite[] healthBarImages;
    
    private void Awake()
    {
        instance = this;
    }

    // Start is called before the first frame update
    void Start()
    {
        ResetHealth();
    }

    // Update is called once per frame
    void Update()
    {
        if(invincibleCounter > 0)
        {
            invincibleCounter -= Time.deltaTime;
            
            for(int i = 0; i < PlayerController.instance.playerPieces.Length; i++)
            {
                if(Mathf.Floor(invincibleCounter * 5f) % 2 == 0)
                {
                    PlayerController.instance.playerPieces[i].SetActive(false);
                }
                else
                {
                    PlayerController.instance.playerPieces[i].SetActive(true);
                }
                
                if(invincibleCounter <= 0)
                {
                    PlayerController.instance.playerPieces[i].SetActive(true);
                }
            }
        }
    }
    
    public void HurtPlayer()
    {
        if (invincibleCounter <= 0)
        {
            currentHealth -= 1;

            if (currentHealth <= 0)
            {
                currentHealth = 0;
                GameManager.instance.Respawn();
            }
            else
            {
                PlayerController.instance.Knockback();
                invincibleCounter = invincibleLength;
            }
            UpdateUI();
        }
    }
    
    public void ResetHealth()
    {
        currentHealth = maxHealth;
        
        UpdateUI();
    }
    
    public void AddHealth(int amountToHeal)
    {
        currentHealth += amountToHeal;
        if(currentHealth > maxHealth)
        {
            currentHealth = maxHealth;
        }
        
        UpdateUI();
    }
    
    public void UpdateUI()
    {
        UIManager.instance.healthText.text = currentHealth.ToString();
        switch (currentHealth)
        {
            case 5:
                UIManager.instance.healthImage.sprite = healthBarImages[5];
                break;
            case 4:
                UIManager.instance.healthImage.sprite = healthBarImages[4];
                break;
            case 3:
                UIManager.instance.healthImage.sprite = healthBarImages[3];
                break;
            case 2:
                UIManager.instance.healthImage.sprite = healthBarImages[2];
                break;
            case 1:
                UIManager.instance.healthImage.sprite = healthBarImages[1];
                break;
            case 0:
                UIManager.instance.healthImage.sprite = healthBarImages[0];
                break;
        }
    }
    
    public void PlayerKilled()
    {
        currentHealth = 0;
        UpdateUI();
    }
}
