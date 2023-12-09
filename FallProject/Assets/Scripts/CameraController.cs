using System;
using Cinemachine;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public static CameraController instance;
    
    public CinemachineBrain theCMBrain;

    public float lookSpeed = 1f;
    
    private CinemachineFreeLook freeLookCam;
    private Player playerInput;

    private void Awake()
    {
        instance = this;
        playerInput = new Player();
        freeLookCam = GetComponent<CinemachineFreeLook>();
    }
    
    private void OnEnable()
    {
        playerInput.Enable();
    }
    
    private void OnDisable()
    {
        playerInput.Disable();
    }

    private void Update()
    {
        Vector2 delta = playerInput.PlayerMain.Look.ReadValue<Vector2>();
        freeLookCam.m_XAxis.Value += delta.x * 200 * lookSpeed * Time.deltaTime;
        freeLookCam.m_YAxis.Value += delta.y * lookSpeed * Time.deltaTime;
    }
}
