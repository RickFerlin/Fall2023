using System;
using UnityEngine;
using UnityEngine.UIElements;

public class PaddleBehaviour : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 100f;
    private int moveValue;

    public float maxBounceAngle = 75f;

    private void Update()
    {
        transform.Translate(moveValue * moveSpeed * Time.deltaTime, 0f, 0f);
    }

    public void Move(int value)
    {
        moveValue = value;
    }

    private void OnCollisionEnter(Collision collision)
    {
        BallBehaviour ball = collision.gameObject.GetComponent<BallBehaviour>();

        if (ball != null)
        {
            Vector3 paddlePosition = transform.position;
            Vector3 contactPoint = collision.GetContact(0).point;

            float offset = paddlePosition.x - contactPoint.x;
            float width = collision.collider.bounds.size.x / 2;

            float currentAngle = Vector2.SignedAngle(Vector3.up, ball.rigidbody.velocity);
            float bounceAngle = (offset / width) * maxBounceAngle;
            float newAngle = Mathf.Clamp(currentAngle + bounceAngle, -maxBounceAngle, maxBounceAngle);
            
            Quaternion rotation = Quaternion.AngleAxis(newAngle, Vector3.forward);
            ball.rigidbody.velocity = rotation * Vector3.up * ball.rigidbody.velocity.magnitude;
        }
    }
}
