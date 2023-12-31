using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public string firstLevel, levelSelect;
    
    public GameObject continueButton;
    
    public string[] levelNames;
    
    void Start()
    {
        if(PlayerPrefs.HasKey("Continue"))
        {
            continueButton.SetActive(true);
        }
        else
        {
            continueButton.SetActive(false);
        }
    }
    
    public void NewGame()
    {
        SceneManager.LoadScene(firstLevel);
        
        PlayerPrefs.SetInt("Continue", 0);
        PlayerPrefs.SetString("CurrentLevel", firstLevel);
        
        ResetProgress();
    }
    
    public void Continue()
    {
        SceneManager.LoadScene(levelSelect);
    }
    
    public void QuitGame()
    {
        Application.Quit();
    }
    
    public void ResetProgress()
    {
        for(int i = 0; i < levelNames.Length; i++)
        {
            PlayerPrefs.SetInt(levelNames[i] + "_unlocked", 0);
        }
        
        PlayerPrefs.SetInt("Continue", 0);
    }
}
