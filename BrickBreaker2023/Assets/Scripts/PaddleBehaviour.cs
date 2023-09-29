using System;
using UnityEngine;

public class PaddleBehaviour : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 100f;
    private int moveValue;

    private void Update()
    {
        transform.Translate(moveValue * moveSpeed * Time.deltaTime, 0f, 0f);
    }

    public void Move(int value)
    {
        moveValue = value;
    }
}
