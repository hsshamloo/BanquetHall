using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;

/// <summary>
/// Summary description for ImageInfo
/// </summary>
public class ImageInfo
{
    DataClassesDataContext context = new DataClassesDataContext();
    private string imageId, imageName, objectID;

    public string ObjectID
    {
        get { return objectID; }
        set { objectID = value; }
    }

    public string ImageName
    {
        get { return imageName; }
        set { imageName = value; }
    }

    public string ImageId
    {
        get { return imageId; }
        set { imageId = value; }
    }

    private Binary imageFile;

    public Binary ImageFile
    {
        get { return imageFile; }
        set { imageFile = value; }
    }

    private float imageHeight, imageWeight;

    public float ImageWeight
    {
        get { return imageWeight; }
        set { imageWeight = value; }
    }

    public float ImageHeight
    {
        get { return imageHeight; }
        set { imageHeight = value; }
    }

    public ImageInfo()
    {

    }

    public string UploadPhoto(ImageInfo imageinfo)
    {

        try
        {
            int i = (from imageNumber in context.ImagesTables
                     select imageNumber).Count<ImagesTable>();
            DateTime dd = DateTime.Now;
            string userId = "Image" + dd.Year.ToString() + dd.Month.ToString() + dd.Day.ToString() + dd.Minute.ToString() + dd.Second.ToString() +
                dd.Millisecond.ToString() + dd.Millisecond.ToString();
            context.ImagesTables.InsertOnSubmit(new ImagesTable
            {
                ImageId = userId,
                ImageName = imageName,
                ObjectID = imageinfo.ObjectID,
                ImageFile = imageinfo.ImageFile,
                ImageHeight = imageinfo.ImageHeight,
                ImageWeight = imageinfo.ImageWeight

            });
            context.SubmitChanges(ConflictMode.FailOnFirstConflict);
            return "عکس با موفقیت ثبت گردید";
        }
        catch (Exception x)
        {

            return "خطا در هنگام ذخیره عکس"+ x.Message;
        }
    }
}