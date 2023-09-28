using UnityEngine;

public class PaddleBehaviour : MonoBehaviour
{
    [SerializeField] private float moveSpeed;

    private void FixedUpdate()
    {
        TouchMove();
    }

    void TouchMove()
    {
        if (Input.GetMouseButton(0))
        {
            Vector3 mousePos = Camera.main.ScreenToWorldPoint(Input.mousePosition);
            if (mousePos.x > 1)
            {
                transform.Translate(moveSpeed * Time.deltaTime, 0, 0);
            } else if (mousePos.x < -1)
            {
                transform.Translate(-moveSpeed * Time.deltaTime, 0, 0);
            }
        }
    }
    
}
