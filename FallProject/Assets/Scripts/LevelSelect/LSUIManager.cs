using TMPro;
using UnityEngine;

public class LSUIManager : MonoBehaviour
{
    public static LSUIManager instance;
    
    public TextMeshProUGUI lNameText;
    public GameObject lNamePanel;
    
    void Awake()
    {
        LSUIManager.instance = this;
    }
}
