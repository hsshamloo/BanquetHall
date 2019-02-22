using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

/// <summary>
/// Summary description for PageClass
/// </summary>
public class PageClass 
{
	public PageClass()
	{
       
    }
    public void Redirector(string UserType)
    {
        
        
        if (HttpContext.Current.Session["ValidUser"]  == null)
        {
           
          //  //HttpResponse res = new HttpResponse() ;
          //  res.Redirect("~/RegisterNewUser.aspx");
          ////Redirect("~/RegisterNewUser.aspx");
        }
        else
        {
            if (HttpContext.Current.Session["UserRoleType"].ToString() != UserType)
            {
                //Redirect("~/Default.aspx");
            }
        }
    }
}