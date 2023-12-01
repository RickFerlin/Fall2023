using System;
using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public static CameraController instance;
    
    public CinemachineBrain theCMBrain;

    private void Awake()
    {
        instance = this;
    }
}
