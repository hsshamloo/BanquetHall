using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class ShowHallTitle : System.Web.UI.UserControl
{
    DataClassesDataContext context = new DataClassesDataContext();

    private ReserveDateAndCapacity reserveDateAndCap;

    public ReserveDateAndCapacity ReserveDateAndCap
    {
        get { return reserveDateAndCap; }
        set { reserveDateAndCap = value; }
    }

    private ReceptionHalls hallInformation;

    public ReceptionHalls HallInformation
    {
        get { return hallInformation; }
        set { hallInformation = value; }
    }

    private bool deletView = false;

    public bool DeletView
    {
        get { return deletView; }
        set { deletView = value; }
    }

    private bool editView= false;
    public bool EditView
    {
        get { return editView; }
        set { editView = value; }
    }

    private bool reserveView= false;

    public bool ReserveView
    {
        get { return reserveView; }
        set { reserveView = value; }
    }

    
    private string imageId;
    public string ImageId
    {
        get { return imageId; }
        set { imageId = value; }
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        int numberOfPic = (from imageFile in context.ImagesTables
                           where imageFile.ObjectID.Equals(hallInformation.HallId)
                           select imageFile).Count();
        if (numberOfPic != 0)
        {

            ImagesTable imageFile = context.ImagesTables.First(imagefile => imagefile.ObjectID.Equals(hallInformation.HallId));
            imageId = imageFile.ImageId;
        }
        
        string hallId = hallInformation.HallId;

        editButton.Visible = editView;
        deletButton.Visible = deletView;
        reserveBtn.Visible = reserveView;

        if (imageId == null)
        {
            Image1.ImageUrl = @"~/Image/Nopic.jpg";

        }
        else
        {
            Image1.ImageUrl = @"~/Controls/photoshow.ashx?imageId=" + imageId;
        }

        HallNameHyper.NavigateUrl = @"~/ShowHallInformations.aspx?HallId=" + hallId;
        HallNameHyper.ForeColor = Color.White;

        HallNameHyper.Text = hallInformation.HallName;
        halCapacitylb.Text = hallInformation.Capacity.ToString();

    }

    protected void editButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(@"~/Manager/EditAvalilableHall.aspx?hallId=" + hallInformation.HallId);
    }
    protected void deletButton_Click(object sender, ImageClickEventArgs e)
    {
        string message = null;
        DataBaseConnection db = new DataBaseConnection();
        if (System.Windows.Forms.MessageBox.Show(" آیا تالار " + hallInformation.HallName.ToString() + " حذف گردد؟ ", "پیام سیستم", System.Windows.Forms.MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
        {
            message = db.deletHall(hallInformation.HallId);
            System.Windows.Forms.MessageBox.Show(message);
        }

        Response.Redirect(@"~/Manager/HallInforMationForManage.aspx");
    }
    protected void reserveBtn_Click(object sender, ImageClickEventArgs e)
    {

        HttpContext.Current.Session.Add("ReceptionHallInformation", hallInformation);
            Response.Redirect(@"~/Costumer/ReserveHall.aspx");
     }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
}