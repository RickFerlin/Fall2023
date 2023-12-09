using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LSLevelEntry : MonoBehaviour
{
    public string levelName, levelToCheck, displayName;

    private bool canLoadLevel, levelUnlocked, levelLoading;
    
    public GameObject mapPointActive, mapPointInactive;
    
    void Start()
    {
        if(PlayerPrefs.GetInt(levelToCheck + "_unlocked") == 1 || levelToCheck == "")
        {
            mapPointActive.SetActive(true);
            mapPointInactive.SetActive(false);
            levelUnlocked = true;
        }
        else
        {
            mapPointActive.SetActive(false);
            mapPointInactive.SetActive(true);
            levelUnlocked = false;
        }
        
        if(PlayerPrefs.GetString("CurrentLevel") == levelName)
        {
            PlayerController.instance.transform.position = transform.position;
            LSResetPosition.instance.respawnPosition = transform.position;
        }
    }

    void Update()
    {
        if (PlayerController.instance.playerInput.PlayerMain.Jump.triggered && canLoadLevel && levelUnlocked && !levelLoading)
        {
            StartCoroutine(LevelLoadCo());
            levelLoading = true;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag =="Player")
        {
            canLoadLevel = true;
            
            LSUIManager.instance.lNamePanel.SetActive(true);
            LSUIManager.instance.lNameText.text = displayName;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.tag == "Player")
        {
            canLoadLevel = false;
            
            LSUIManager.instance.lNamePanel.SetActive(false);
        }
    }
    
    public IEnumerator LevelLoadCo()
    {
        PlayerController.instance.stopMovement = true;
        UIManager.instance.fadeToBlack = true;
        
        yield return new WaitForSeconds(2f);
        
        SceneManager.LoadScene(levelName);
        PlayerPrefs.SetString("CurrentLevel", levelName);
    }
}
