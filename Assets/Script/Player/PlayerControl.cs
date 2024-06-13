using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class PlayerControl : MonoBehaviour
{
    private Animator animator;
    public Rigidbody2D rigidbody2d;
    [SerializeField]
    private float speed = 10.9f;
    private InventoryController inventoryController;
    public bool CanMove = true;
    private void Awake()
    {
        inventoryController = GetComponent<InventoryController>();
        animator = GetComponent<Animator>();
        rigidbody2d = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void Update()
    {
        if (CanMove)
        {
            rigidbody2d.simulated = true;
            float horizontal = Input.GetAxisRaw("Horizontal");
            float vertical = Input.GetAxisRaw("Vertical");

            //When player press left or right
            if (horizontal != 0)
            {
                animator.SetFloat("Horizontal", horizontal);
                animator.SetFloat("Vertical", 0);
            }
            //When player press up or down
            if (vertical != 0)
            {
                animator.SetFloat("Vertical", vertical);
                animator.SetFloat("Horizontal", 0);
            }
            //the player changes stand to move
            Vector2 direction = new Vector2(horizontal, vertical);
            animator.SetFloat("Speed", direction.magnitude);

            //move character to the direction
            rigidbody2d.velocity = direction * speed;

            transform.localPosition = new Vector3(Mathf.Clamp(transform.localPosition.x, -32f, 32f), Mathf.Clamp(transform.localPosition.y, -32f, 32f), 0f);
        }

        
    }

    private void OnTriggerStay2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Gate"))
        {
            

        }
        else
        {
            rigidbody2d.simulated = false;
            CanMove = false;
        }
    }
    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Gate"))
        {
            rigidbody2d.simulated = true;
            this.GetComponent<Animator>().enabled = true;
            if (GameManager.Instance.InventoryCount >= 5)
            {
                rigidbody2d.simulated = false;
                this.GetComponent<Animator>().enabled = false;
                GameManager.Instance.OnCompleteGame();

            }
            else
            {
                GameManager.Instance.UnfinishedWorkPopUp.SetActive(true);

            }

        }
        else
        {
            // Wild Animals Trigger
            rigidbody2d.simulated = false;
            this.GetComponent<Animator>().enabled = false;
            if (collision.gameObject.CompareTag("Moose"))
            {
                CanMove = false;

                GameManager.Instance.MajesticMooseDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Snake"))
            {
                CanMove = false;
                GameManager.Instance.SnakeDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Hyenas"))
            {
                CanMove = false;
                GameManager.Instance.HyenasDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Gorilla"))
            {
                CanMove = false;
                GameManager.Instance.GorillaDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Scorpio"))
            {
                CanMove = false;
                GameManager.Instance.ScorpioDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Monkey"))
            {
                CanMove = false;
                GameManager.Instance.MonkeyDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Cow"))
            {
                CanMove = false;
                GameManager.Instance.CowDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Cat"))
            {
                CanMove = false;
                GameManager.Instance.CatDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Dog"))
            {
                CanMove = false;
                GameManager.Instance.DogDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Sheep"))
            {
                CanMove = false;
                GameManager.Instance.SheepDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Jasmine"))
            {
                CanMove = false;
                GameManager.Instance.JasmineDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("SunFlower"))
            {
                CanMove = false;
                GameManager.Instance.SunflowerDialogue.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Tulip"))
            {
                CanMove = false;
                GameManager.Instance.TulipDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }

            else if (collision.gameObject.CompareTag("Rose"))
            {
                CanMove = false;
                GameManager.Instance.RoseDialogues.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
            else if (collision.gameObject.CompareTag("Lillies"))
            {
                CanMove = false;
                GameManager.Instance.LilyDialogue.SetActive(true);
                Debug.Log("Gameobject Name__ " + collision.gameObject.name);

            }
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
       


        //if (collision.gameObject.CompareTag("Moose"))
        //{

        //    GameManager.Instance.InventoryList[GameManager.Instance.InventoryCount].GetComponent<Image>().sprite = collision.gameObject.GetComponent<ItemHolder>().AnimalImage;
        //    GameManager.Instance.OnIncreaseInventoryCount();
        //   // collision.gameObject.SetActive(false);




        //}
        //else if (collision.gameObject.CompareTag("Snake"))
        //{
        //    GameManager.Instance.InventoryList[GameManager.Instance.InventoryCount].GetComponent<Image>().sprite = collision.gameObject.GetComponent<ItemHolder>().AnimalImage;
        //    GameManager.Instance.OnIncreaseInventoryCount();
        //    collision.gameObject.SetActive(false);
        //}
        //else if (collision.gameObject.CompareTag("Hyenas"))
        //{
        //    GameManager.Instance.InventoryList[GameManager.Instance.InventoryCount].GetComponent<Image>().sprite = collision.gameObject.GetComponent<ItemHolder>().AnimalImage;
        //    GameManager.Instance.OnIncreaseInventoryCount();
        //    collision.gameObject.SetActive(false);

        //}
        //else if (collision.gameObject.CompareTag("Gorilla"))
        //{
        //    GameManager.Instance.InventoryList[GameManager.Instance.InventoryCount].GetComponent<Image>().sprite = collision.gameObject.GetComponent<ItemHolder>().AnimalImage;
        //    GameManager.Instance.OnIncreaseInventoryCount();
        //    collision.gameObject.SetActive(false);

        //}
        //else if (collision.gameObject.CompareTag("Scorpio"))
        //{
        //    GameManager.Instance.InventoryList[GameManager.Instance.InventoryCount].GetComponent<Image>().sprite = collision.gameObject.GetComponent<ItemHolder>().AnimalImage;
        //    GameManager.Instance.OnIncreaseInventoryCount();
        //    collision.gameObject.SetActive(false);

        //}

    }


}
