using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditHallInfo : System.Web.UI.UserControl
{
    DataClassesDataContext context = new DataClassesDataContext();
    ReceptionHalls editHallInfo = new ReceptionHalls();
    ReceptionHalls newHallInfo = new ReceptionHalls();
    private ReceptionHalls oldHallInfo;

    public ReceptionHalls OldHallInfo
    {
        get { return oldHallInfo; }
        set { oldHallInfo = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            newHallInfo.HallName = hallNameTxt.Text;
            newHallInfo.HallType = HalTypeTxt.SelectedValue;
            newHallInfo.Capacity = int.Parse(hallCapacityTxt.Text);
            newHallInfo.HallDescription = HallFullDescriptionTxt.Text;
            newHallInfo.PricePerPerson = decimal.Parse(hallPriceTxt.Text);
        }
        else
        {
            hallNameTxt.Text = OldHallInfo.HallName;
            HalTypeTxt.SelectedValue = OldHallInfo.HallType;
            hallCapacityTxt.Text = OldHallInfo.Capacity.ToString();
            HallFullDescriptionTxt.Text = OldHallInfo.HallDescription;
            hallPriceTxt.Text =((int) OldHallInfo.PricePerPerson).ToString();
        }
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        System.Windows.Forms.MessageBox.Show(editHallInfo.HallUpdateInfo(newHallInfo, oldHallInfo.HallId),"پیام سیستم");
        HttpContext.Current.Session.Add("IdOfRegisteredObject", oldHallInfo.HallId);
        System.Windows.Forms.MessageBox.Show(" به بخش ویرایش عکس منقل می شوید", "پیام سیستم");
        Response.Redirect(@"~/Manager/PhotoUploader.aspx");

         }
   
}