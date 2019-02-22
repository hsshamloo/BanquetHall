<%@ WebHandler Language="C#" Class="photoshow" %>

using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;

public class photoshow : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        try
        {
            string bHallId = context.Request.QueryString["imageId"];
            context.Response.ContentType = "image/jpeg";
            Stream strm = ShowEmpImage(bHallId);
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);

            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
        }
        catch (Exception x)
        {

            System.Windows.Forms.MessageBox.Show(x.Message);
        }
    }
    public Stream ShowEmpImage(string imageId)
    {
        DataClassesDataContext dd = new DataClassesDataContext();
        
        var imageSource = (from imag in dd.ImagesTables
                           where imag.ImageId == imageId
                           select imag).First<ImagesTable>();
        return new MemoryStream(imageSource.ImageFile.ToArray());

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}