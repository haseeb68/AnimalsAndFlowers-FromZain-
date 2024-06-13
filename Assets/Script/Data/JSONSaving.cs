using System.IO;
using UnityEngine;
using System.Collections.Generic;
using Newtonsoft.Json;
public class JSONSaving : Singleton<JSONSaving>
{
    private Dictionary<InventoryItem, int> playerInventoryItems;
    private string path = "";
    private string persistentPath = "";

    protected override void Awake()
    {
        base.Awake();
        SetPaths();
    }
    // Start is called before the first frame update
    private void Start()
    {
        LoadData();
    }
    public int GetCountOfItem(InventoryItem item)
    {
        return playerInventoryItems[item];
    }
    private void CreatePlayerData()
    {
        playerInventoryItems = new Dictionary<InventoryItem, int>();
        
    }
    public void AddItem(InventoryItem item)
    {
      if (playerInventoryItems.ContainsKey(item))
        {
            playerInventoryItems[item] += 1;
        }
        else
        {
            playerInventoryItems[item] = 1;
        }
        SaveData();
    }
    private void SetPaths()
    {
        path = Application.dataPath + Path.AltDirectorySeparatorChar + "SaveData.json";
        persistentPath = Application.persistentDataPath + Path.AltDirectorySeparatorChar + "SaveData.json";
    }

    public void SaveData()
    {
        string savePath = persistentPath;
        Debug.Log("Saving Data at " + savePath);
        string jsonOutput = JsonConvert.SerializeObject(playerInventoryItems);
        Debug.Log(jsonOutput);
       using StreamWriter writer = new StreamWriter(savePath);
        writer.Write(jsonOutput);
    }

    public void LoadData()
    {
        using StreamReader reader = new StreamReader(persistentPath);
        string json = reader.ReadToEnd();
        CreatePlayerData();
        playerInventoryItems = JsonConvert.DeserializeObject<Dictionary<InventoryItem, int>>(json);
        Debug.Log(playerInventoryItems.Count);
    }
}