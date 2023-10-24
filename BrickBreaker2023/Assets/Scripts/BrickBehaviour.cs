using UnityEngine;

public class BrickBehaviour : MonoBehaviour
{
   public Material material { get; private set; }
   [SerializeField] private int health;
   public Material[] states;
   public bool unbreakable;

   private void Awake()
   {
      material = GetComponent<Material>();
   }

   private void Start()
   {
      health = states.Length;
      material = states[health - 1];
   }

   private void Hit()
   {
      health--;
      
      if(health <= 0)
      {
         gameObject.SetActive(false);
      }
      else
      {
         material = states[health - 1];
      }
   }

   private void OnCollisionEnter(Collision collision)
   {
      if (collision.gameObject.name == "BallBehaviour")
      {
         Hit();
      }
   }
}
