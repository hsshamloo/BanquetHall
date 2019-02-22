using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ItemOrderPartControl : System.Web.UI.UserControl
{
    Members informationOfOrderer;
    ItemInWarehouse itemObject = new ItemInWarehouse();
    string itemTypeSelected;
    private string itemType;

    public string ItemType
    {
        get { return itemType; }
        set { itemType = value; }
    }
   decimal priceOfItem;

    protected void Page_Load(object sender, EventArgs e)
    {
       informationOfOrderer  = (Members)HttpContext.Current.Session["ValidUser"];

        Array itemTypeAvailable = itemObject.retriveItemType();
        ItemTypesDropList.DataSource = itemTypeAvailable;
        if (!IsPostBack)
        {
            ItemTypesDropList.DataBind();
        }
        else
        {
            itemTypeSelected = ItemTypesDropList.SelectedValue;
        }

    }
    protected void ItemTypesDropList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Array itemsWithSameType =
            itemObject.reriveItemInfoWithSameType(itemTypeSelected);
        ItemNameDropDown.DataSource = itemsWithSameType;
        ItemNameDropDown.DataBind();
        itemObject = new ItemInWarehouse().
           retriveItemInfoByName(ItemNameDropDown.SelectedValue);
        priceOfItem = itemObject.ItemPrice;
        ItemCost.Text = ((int)priceOfItem).ToString();
    }
    protected void itemNameDropDown_SelectedIndexChanged1(object sender, EventArgs e)
    {
        itemObject = new ItemInWarehouse().
            retriveItemInfoByName(ItemNameDropDown.SelectedValue);
        priceOfItem = itemObject.ItemPrice;
        ItemCost.Text = ((int)priceOfItem).ToString();
  }
    protected void addBtn_Click(object sender, EventArgs e)
    {
        int numberOfItem = int.Parse(numberOfItemTxt.Text);
        ItemOrder newOrder = new ItemOrder();
        ItemInWarehouse ItemToChose = new ItemInWarehouse().retriveItemInfoByName
            (ItemNameDropDown.SelectedValue);

        newOrder.Count = numberOfItem;
        newOrder.ItemName = ItemToChose.ItemName;
        newOrder.ItemId = ItemToChose.ItemId;
        newOrder.Email = informationOfOrderer.email;
        priceOfItem = ItemToChose.ItemPrice;

        newOrder.StatusOfOrder = "معلق";
        newOrder.Price = numberOfItem * priceOfItem;
        newOrder.SubmitDate = DateTime.Now;
        

        newOrder.orderNewItem(newOrder, "مورد نیاز");
        //کالا را سفارش می دهیم ، اگر مقدار کالا کمتر از حد نیاز شد ، در وضعیت آن مورد نیاز ثبت می گردد

        Response.Redirect("~/Catering/OrderNewItem.aspx");

    }

}
