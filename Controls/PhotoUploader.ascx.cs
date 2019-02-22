using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public partial class Controls_PhotoUploader : System.Web.UI.UserControl
{
    DataClassesDataContext context = new DataClassesDataContext();
    //DataBaseConnection newConnectionForPhotoManipulation = new DataBaseConnection();
    ImageInfo imageInfoObj = new ImageInfo();
    private string objectId;

    public string ObjectId
    {
        get { return objectId; }
        set { objectId = value; }
    }

    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            objectId = HttpContext.Current.Session["IdOfRegisteredObject"].ToString();
        }
        catch (Exception x)
        {
            
            System.Windows.Forms.MessageBox.Show(x.Message);
        }
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile && FileUpload1.PostedFile.ContentLength > 0)
        {
           
            using (System.Drawing.Image myImage = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream))
            {
                imageInfoObj.ImageHeight = myImage.Height;
                imageInfoObj.ImageWeight = myImage.Width;
                
            }

            imageInfoObj.ImageName =FileUpload1.FileName;
            imageInfoObj.ObjectID = ObjectId;
            byte[] fileByte = FileUpload1.FileBytes;
            imageInfoObj.ImageFile = new Binary(fileByte);
            
            global:: System.Windows.Forms.MessageBox.Show(imageInfoObj.UploadPhoto(imageInfoObj));
            Response.Redirect("~/Manager/PhotoUploader.aspx");
        }
    }
    protected void Finish(object sender, EventArgs e)
    {
        Response.Redirect(@"~/Manager/HallInforMationForManage.aspx");
    }
}