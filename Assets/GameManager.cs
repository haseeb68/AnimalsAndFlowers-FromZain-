using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class GameManager : MonoBehaviour
{
    public GameObject MajesticMooseDialogues, SnakeDialogues, GorillaDialogues, ScorpioDialogues
    , HyenasDialogues, MonkeyDialogues, CowDialogues, CatDialogues, DogDialogues, SheepDialogues, JasmineDialogues
    , TulipDialogues, RoseDialogues, LilyDialogue, SunflowerDialogue;
    public static GameManager Instance;
    public int Attempts = 5;
    public GameObject GameOverPopUp;
    public Text AttemptsText;
    public int InventoryCount = 0;
    public GameObject[] InventoryList;
    public GameObject GameCompletePopup,UnfinishedWorkPopUp;
    // Start is called before the first frame update
    void Start()
    {
        Instance = this;
        Attempts = 5;
        AttemptsText.text = "ATTEMPTS: " + Attempts;
    }
    private void Update()
    {
        AttemptsText.text = "ATTEMPTS: " + Attempts;
    }

    public void OnAttemptLose()
    {

        Attempts -= 1;

    }

    public void OnIncreaseInventoryCount()
    {

        InventoryCount++;

    }

    public void OnCompleteGame()
    {

        GameCompletePopup.SetActive(true);


    }
    public void OnRestart()
    {

        SceneManager.LoadScene(SceneManager.GetActiveScene().name);

    }
    public void OnNextlevel()
    {

        SceneManager.LoadScene("Level2");

    }
    public void OnHome()
    {
        SceneManager.LoadScene("Start Menu");


    }

}
