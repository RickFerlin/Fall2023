using System;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public static PlayerController instance;

    public Player playerInput;
    private Transform cameraMain;
    
    public float moveSpeed;
    public float jumpForce;
   
    public float gravityScale = 5f;
    public float bounceForce = 8f;
    
    public CharacterController charController;
    
    private Vector3 move;

    private Camera theCam;
    
    public GameObject playerModel;
    public float rotateSpeed;
    
    public Animator anim;

    public bool isKnockingBack;
    public float knockBackLength = .5f;
    private float knockBackCounter;
    public Vector2 knockBackPower;
    
    public GameObject[] playerPieces;

    public bool hasHighJump;
    public bool canHighJump;
    public float doubleJumpForce;

    public int playerJumpSound;
    public int playerWalkSound;
    
    public bool stopMovement;

    private void Awake()
    {
        instance = this;
        playerInput = new Player();
        charController = GetComponent<CharacterController>();
    }

    private void Start()
    {
        theCam = Camera.main;
        cameraMain = theCam.transform;
    }

    private void Update()
    {
        if (!isKnockingBack && !stopMovement)
        {
            float yStore = move.y;
            //moveDirection = new Vector3(Input.GetAxisRaw("Horizontal"), 0f, Input.GetAxisRaw("Vertical"));
            //moveDirection = 
                //new Vector3(playerInput.PlayerMain.Move.ReadValue<Vector2>().x, 0f,
                   // playerInput.PlayerMain.Move.ReadValue<Vector2>().y);
            Vector2 movementInput = playerInput.PlayerMain.Move.ReadValue<Vector2>();
            move = (cameraMain.forward * movementInput.y + cameraMain.right * movementInput.x);
            move.Normalize();
            move *= moveSpeed;
            move.y = yStore;
           
            if (charController.isGrounded)
            {
                //charController.Move(move * Time.deltaTime);
                //playerModel.transform.position = new Vector3(playerModel.transform.position.x, 0,
                    //playerModel.transform.position.z);
                    move.y = -.1f;
                
                if (playerModel.transform.position.y < charController.transform.position.y)
                {
                    playerModel.transform.position = new Vector3(playerModel.transform.position.x,
                        charController.transform.position.y, playerModel.transform.position.z);
                }
                
                if(hasHighJump)
                {
                    canHighJump = true;
                }

                if (playerInput.PlayerMain.Jump.triggered && !canHighJump)
                {
                    move.y = jumpForce;
                    AudioManager.instance.PlaySFX(playerJumpSound);
                }
                else if(playerInput.PlayerMain.Jump.triggered && canHighJump)
                {
                    move.y = jumpForce*doubleJumpForce;
                    canHighJump = false;
                    AudioManager.instance.PlaySFX(playerJumpSound);
                }
            }
            
            move.y += Physics.gravity.y * Time.deltaTime * gravityScale;
            charController.Move(move * Time.deltaTime);

            //transform.position += moveDirection * (moveSpeed * Time.deltaTime);

            
            
            if (//Input.GetAxisRaw("Horizontal") != 0 || Input.GetAxisRaw("Vertical") != 0
                 movementInput != Vector2.zero)
            {
                transform.rotation = Quaternion.Euler(0f, theCam.transform.rotation.eulerAngles.y, 0f);
                Quaternion newRotation = Quaternion.LookRotation(new Vector3(move.x, 0f, move.z));
                playerModel.transform.rotation = Quaternion.Slerp(playerModel.transform.rotation, newRotation,
                    rotateSpeed * Time.deltaTime);
                if (!AudioManager.instance.sfx[playerWalkSound].isPlaying)
                {
                    AudioManager.instance.PlaySFX(playerWalkSound);
                }
            }
            else
            {
                if (AudioManager.instance.sfx[playerWalkSound].isPlaying)
                {
                    AudioManager.instance.sfx[playerWalkSound].Stop();
                }
            }
        }
        
        if (isKnockingBack)
        {
            knockBackCounter -= Time.deltaTime;
            
            float yStore = move.y;
            move = playerModel.transform.forward * -knockBackPower.x;
            move.y = yStore;
            
            if (charController.isGrounded)
            {
                move.y = -1f;
            }
            
            move.y += Physics.gravity.y * Time.deltaTime * gravityScale;
            
            charController.Move(move * Time.deltaTime);
            
            if (knockBackCounter <= 0)
            {
                isKnockingBack = false;
            }
        }
        
        if(stopMovement)
        {
            move = Vector3.zero;
            //moveDirection.y += Physics.gravity.y * Time.deltaTime * gravityScale;
            charController.Move(move * Time.deltaTime);
        }

        anim.SetFloat("Speed", Mathf.Abs(playerInput.PlayerMain.Move.ReadValue<Vector2>().x) + Mathf.Abs(playerInput.PlayerMain.Move.ReadValue<Vector2>().y));
        anim.SetBool("Grounded", charController.isGrounded);
    }
    
    public void Knockback()
    {
        isKnockingBack = true;
        knockBackCounter = knockBackLength;
        
        move.y = knockBackPower.y;
        move.x = knockBackPower.x;
        charController.Move(move * Time.deltaTime);
    }
    
    public void Bounce()
    {
        move.y = bounceForce;
        charController.Move(move * Time.deltaTime);
    }

    private void OnEnable()
    {
        playerInput.Enable();
    }
    
    private void OnDisable()
    {
        playerInput.Disable();
    }
}
