using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class UIManager : MonoBehaviour
{
    public static UIManager instance;
    
    public Image blackScreen;
    public float fadeSpeed = 1f;
    public bool fadeToBlack, fadeFromBlack;
    
    public TextMeshProUGUI healthText;
    public Image healthImage;
    
    public TextMeshProUGUI coinText;

    public GameObject pauseScreen, optionsScreen, touchControls;
    
    public Slider musicVolumeSlider, sfxVolumeSlider;
    
    public string levelSelect, mainMenu;

    private void Awake()
    {
        instance = this;
    }
    
    void Update()
    {
        if(fadeToBlack)
        {
            blackScreen.color = new Color(blackScreen.color.r, blackScreen.color.g, blackScreen.color.b, Mathf.MoveTowards(blackScreen.color.a, 1f, fadeSpeed * Time.deltaTime));
            
            if(blackScreen.color.a == 1f)
            {
                fadeToBlack = false;
            }
        }
        
        if(fadeFromBlack)
        {
            blackScreen.color = new Color(blackScreen.color.r, blackScreen.color.g, blackScreen.color.b, Mathf.MoveTowards(blackScreen.color.a, 0f, fadeSpeed * Time.deltaTime));
            
            if(blackScreen.color.a == 0f)
            {
                fadeFromBlack = false;
            }
        }
    }

    public void Resume()
    {
        GameManager.instance.PauseUnpause();
    }
    
    public void OpenOptions()
    {
        optionsScreen.SetActive(true);
    }
    
    public void CloseOptions()
    {
        optionsScreen.SetActive(false);
    }
    
    public void LevelSelect()
    {
        SceneManager.LoadScene(levelSelect);
        
        Time.timeScale = 1f;
    }
    
    public void MainMenu()
    {
        SceneManager.LoadScene(mainMenu);
        
        Time.timeScale = 1f;
    }

    public void SetMusicLevel()
    {
        AudioManager.instance.SetMusicLevel();
    }
    
    public void SetSFXLevel()
    {
        AudioManager.instance.SetSFXLevel();
    }
}
