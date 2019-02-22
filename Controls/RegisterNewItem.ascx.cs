using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterNewItem : System.Web.UI.UserControl
{
    ItemInWarehouse newItemObject = new ItemInWarehouse();
    protected void Page_Load(object sender, EventArgs e)
    {
        Array itemTypeDataSource = newItemObject.retriveItemType();
        ItemDropList.DataSource = itemTypeDataSource;
        if (!IsPostBack)
        {
            ItemDropList.DataBind();
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (ItemDropList.Visible)
        {
            RequiredItemType.Visible = false;
            ItemDropList.Visible = false;
            ItemTypeTxt.Visible = true;
            itemTypeLb.Visible = true;
            itemTypeValidCon.Visible = true;
        }
        else
        {
            RequiredItemType.Visible = true;
            ItemDropList.Visible = true;
            ItemTypeTxt.Visible = false;
            itemTypeLb.Visible = false;
            itemTypeValidCon.Visible = false;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
            registerNewItem("ثبت توسط انبار");
    }

    private void registerNewItem(string StatusOfItem)
    {
        newItemObject.ItemName = ItemNameTxt.Text;
        if (addNewItemType.Checked)
        {
            newItemObject.ItemType = ItemTypeTxt.Text;
        }
        else
        {
            newItemObject.ItemType = ItemDropList.SelectedItem.Value;
        }
        newItemObject.ItemPrice = decimal.Parse(ItemPriceTxt.Text);
        newItemObject.NumberOfAvailable = int.Parse(NumberOfItem.Text);
        newItemObject.StatusOfItem = StatusOfItem;
        int message = newItemObject.registerNewItem(newItemObject);
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("تعداد کالا به روز شد");
                Response.Redirect(@"~/Warehouse/RegisterNewItem.aspx"); break;
            case 2: System.Windows.Forms.MessageBox.Show("کالا با موفقیت ثبت گردید");
                Response.Redirect(@"~/Warehouse/RegisterNewItem.aspx"); break;
            default: System.Windows.Forms.MessageBox.Show("خطا در هنگام ثبت کالا");
                Response.Redirect(@"~/Warehouse/RegisterNewItem.aspx"); break;
        }
    }
}