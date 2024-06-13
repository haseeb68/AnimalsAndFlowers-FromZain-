using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
public class InventoryButton : MonoBehaviour
{
    public Inventory inventoryItem;
    public TextMeshProUGUI itemCountTxt;
    public TextMeshProUGUI itemDescriptionTxt;
    public TextMeshProUGUI itemNameTxt;
    public Image itemImg;
    public Image itemIconImg;
    public string ItemDescription;
    public string ItemName;

    public ItemsSpriteScriptableObject itemsSpriteScriptableObject;
 
    public void Awake()
    {
        //itemIconImg = GetComponent<Image>();
        //itemCountTxt = transform.GetChild(0).GetComponent<TextMeshProUGUI>();
        //itemIconImg.sprite = itemsSpriteScriptableObject.GetItemSprite(inventoryItem.item);
    }
    private void OnEnable()
    {
        //GetItemCount();
    }
    public void OnClickItem()
    {
        itemNameTxt.text = ItemName.ToString();
        itemImg.sprite = itemIconImg.sprite;
        itemDescriptionTxt.text = ItemDescription;
    }
    private void GetItemCount()
    {
        itemCountTxt.text = JSONSaving.instance.GetCountOfItem(inventoryItem.item).ToString();
    }
}
