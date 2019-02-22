using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_changeUserRoleType : System.Web.UI.UserControl
{
    Members findMemberToRetrive = new Members();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            findMemberToRetrive = new Members().retriveUserInfo(membersEmailDDl.SelectedValue);
            if (findMemberToRetrive != null)
            {
                UserInformationControl1.MemberInfo = findMemberToRetrive;
            }
        }


        Array listOfEmail = findMemberToRetrive.
            retriveUserEmailsWithSameRoleType("UnValid");
        membersEmailDDl.DataSource = listOfEmail;
        if (!IsPostBack)
        {
            membersEmailDDl.DataBind();
        }

        statusOfAvailabLb.Visible = false;
        if (findMemberToRetrive == null)
        {
            changeRoleTypeBtn.Visible = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //findMemberToRetrive = new Members().retriveUserInfo(membersEmailDDl.SelectedValue);
        if (findMemberToRetrive != null)
        {
            
            UserInformationControl1.MemberInfo = findMemberToRetrive;
            changeRoleTypeBtn.Visible = true;
            HttpContext.Current.Session.Add("userInfo", findMemberToRetrive);
        }
        else
        {
            statusOfAvailabLb.Visible = true;
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int message = -1;
        if (HttpContext.Current.Session["userInfo"] != null)
        {
            findMemberToRetrive = (Members)HttpContext.Current.Session["userInfo"];
            message = new Members().updateUserRoleType(findMemberToRetrive.email,
                  DropDownList1.SelectedValue);
        }

        switch (message)
        {
            case 0: System.Windows.Forms.MessageBox.Show("نوع کاربری با موفقیت تغییر کرد");
                Response.Redirect("~/Manager/ManagerPage.aspx");
                break;
            case -1: System.Windows.Forms.MessageBox.Show("خطا در هنگام تغییر کاربری");
                Response.Redirect("~/Manager/ChangeUserRoleType.aspx");

                break;
        }
    }
}