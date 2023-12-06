using UnityEngine;

public class LSBridge : MonoBehaviour
{
    public string levelToUnlock;
    
    void Start()
    {
        if(PlayerPrefs.GetInt(levelToUnlock + "_unlocked") == 0)
        {
            gameObject.SetActive(false);
        }
    }
}