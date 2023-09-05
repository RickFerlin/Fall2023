using UnityEngine;

[CreateAssetMenu(fileName = "New Float Data", menuName = "Custom/Float Data")]
public class FloatData : ScriptableObject
{
    [SerializeField] private float initialValue = 0.0f;
    [SerializeField] private float value;
    
    public float Value { get { return value; } set { this.value = value; } }

    private void OnEnable()
    {
        value = initialValue;
    }
}
