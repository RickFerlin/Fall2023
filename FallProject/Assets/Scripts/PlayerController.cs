using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

public class PlayerController : MonoBehaviour
{
    public static PlayerController instance;
    
    public float moveSpeed;
    public float jumpForce;
   
    public float gravityScale = 5f;
    
    public CharacterController charController;
    
    private Vector3 moveDirection;

    private Camera theCam;
    
    public GameObject playerModel;
    public float rotateSpeed;
    
    public Animator anim;

    public bool isKnockingBack;
    public float knockBackLength = .5f;
    private float knockBackCounter;
    public Vector2 knockBackPower;
    
    public GameObject[] playerPieces;

    [FormerlySerializedAs("hasDoubleJump")] public bool hasHighJump;
    [FormerlySerializedAs("canDoubleJump")] public bool canHighJump;
    public float doubleJumpForce;

    private void Awake()
    {
        instance = this;
    }

    private void Start()
    {
        theCam = Camera.main;
    }

    private void Update()
    {
        if (!isKnockingBack)
        {

            float yStore = moveDirection.y;
            //moveDirection = new Vector3(Input.GetAxisRaw("Horizontal"), 0f, Input.GetAxisRaw("Vertical"));
            moveDirection = (transform.forward * Input.GetAxisRaw("Vertical")) +
                            (transform.right * Input.GetAxisRaw("Horizontal"));
            moveDirection.Normalize();
            moveDirection *= moveSpeed;
            moveDirection.y = yStore;

            if (charController.isGrounded)
            {
                playerModel.transform.position = new Vector3(playerModel.transform.position.x, 0,
                    playerModel.transform.position.z);
                moveDirection.y = -1f;
                
                if(hasHighJump)
                {
                    canHighJump = true;
                }

                if (Input.GetButtonDown("Jump") && !canHighJump)
                {
                    moveDirection.y = jumpForce;
                    
                }
                else if(Input.GetButtonDown("Jump") && canHighJump)
                {
                    moveDirection.y = jumpForce*doubleJumpForce;
                    canHighJump = false;
                }
            }
            
            
            
            moveDirection.y += Physics.gravity.y * Time.deltaTime * gravityScale;

            //transform.position += moveDirection * (moveSpeed * Time.deltaTime);

            charController.Move(moveDirection * Time.deltaTime);

            if (Input.GetAxisRaw("Horizontal") != 0 || Input.GetAxisRaw("Vertical") != 0)
            {
                transform.rotation = Quaternion.Euler(0f, theCam.transform.rotation.eulerAngles.y, 0f);
                Quaternion newRotation = Quaternion.LookRotation(new Vector3(moveDirection.x, 0f, moveDirection.z));
                playerModel.transform.rotation = Quaternion.Slerp(playerModel.transform.rotation, newRotation,
                    rotateSpeed * Time.deltaTime);
            }
        }
        
        if (isKnockingBack)
        {
            knockBackCounter -= Time.deltaTime;
            
            float yStore = moveDirection.y;
            moveDirection = playerModel.transform.forward * -knockBackPower.x;
            moveDirection.y = yStore;
            
            if (charController.isGrounded)
            {
                moveDirection.y = -1f;
            }
            
            moveDirection.y += Physics.gravity.y * Time.deltaTime * gravityScale;
            
            charController.Move(moveDirection * Time.deltaTime);
            
            if (knockBackCounter <= 0)
            {
                isKnockingBack = false;
            }
        }

        anim.SetFloat("Speed", Mathf.Abs(moveDirection.x) + Mathf.Abs(moveDirection.z));
        anim.SetBool("Grounded", charController.isGrounded);
    }
    
    public void Knockback()
    {
        isKnockingBack = true;
        knockBackCounter = knockBackLength;
        
        moveDirection.y = knockBackPower.y;
        moveDirection.x = knockBackPower.x;
        charController.Move(moveDirection * Time.deltaTime);
    }
}
