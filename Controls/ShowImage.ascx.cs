using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ShowImage : System.Web.UI.UserControl
{
    DataClassesDataContext context = new DataClassesDataContext();
    DataBaseConnection newConnectionForPhotoManipulation = new DataBaseConnection();
    private string hallId;

    public string HallId
    {
        get { return hallId; }
        set { hallId = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (newConnectionForPhotoManipulation.NumberOfAvailablePhoto(hallId) != 0)
        {
            var imageFile = from imagefile in context.ImagesTables
                            where imagefile.ObjectID == hallId
                            select imagefile;

            foreach (var imaGeFiLe in imageFile)
            {
                Image imageView = new Image();
                
                imageView.Height = 250;
                imageView.Width = 350;

                imageView.BorderWidth = 4;
                imageView.Style.Add("Margin", "5px 5px 5px 5px");
                imageView.ImageUrl = "~/Controls/photoshow.ashx?imageId=" + imaGeFiLe.ImageId;
                Panel1.Controls.Add(imageView);
            }
        }

    }
}