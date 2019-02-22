using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ReciveAndReplyEmailControl : System.Web.UI.UserControl
{
    int counter = 0;
    private string roleType;

    public string RoleType
    {
        get { return roleType; }
        set { roleType = value; }
    }
    public string email;
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = roleType;
        Members memberInfo = (Members)HttpContext.Current.Session["ValidUser"];
        email = memberInfo.email;
        Array availableRole = new Members().allAvailableRoleType(roleType, "مشتری");

        Array tyoeOfMessage = new MessageAndEmail().allKindOfUser();
        DepartemantName.DataSource = availableRole;
        typeofMessageDropDown.DataSource = tyoeOfMessage;

        if (!IsPostBack)
        {
            DepartemantName.DataBind();
            typeofMessageDropDown.DataBind();
            GridView1.DataSource = LinqDataSource1;
            GridView1.DataBind();
        }


    }

    protected void typeofMessageDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (typeofMessageDropDown.SelectedValue ==
            roleType)
        {
            GridView1.DataSource = LinqDataSource1;

        }

        else
        {
            GridView1.DataSource = LinqDataSource2;

        }
        GridView1.DataBind();


    }
    protected void typeofMessageDropDown_DataBound(object sender, EventArgs e)
    {
        foreach (ListItem item in typeofMessageDropDown.Items)
        {
            if (roleType != "مدیر" && item.Value == "کاربر سایت")
            {
                item.Enabled = false;
            }


            if (item.Text == roleType)
            {
                item.Text = "پیام های ارسالی";
            }
            else
            {
                item.Text = "پیام ارسالی از " + "" + item.Text;
            }
        }
    }
    protected void DepartemantName_DataBound(object sender, EventArgs e)
    {

        foreach (ListItem item in DepartemantName.Items)
        {
            if (item.Value == "مشتری" || item.Value == "UnValid")
            {
                item.Enabled = false;

            }

        }

        DepartemantName.SelectedIndex = 0;
    }
    protected void DepartemantName_DataBinding(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        MessageAndEmail mea = new MessageAndEmail()
        {
            MessageReciver = DepartemantName.SelectedValue,
            MessageSender = roleType,
            EmailOfSender = email,
            SendDate = DateTime.Now,
            Subject = SubjectOfMessageTxt.Text,
            MessageText = ContentOfMessageTxt.Text,
            StatusOfMessage = "معلق",
        };

        int message = mea.SendMessage(mea);
        switch (message)
        {
            case 1: System.Windows.Forms.MessageBox.Show("پیغام ارسال شد");
                break;
            case 0: System.Windows.Forms.MessageBox.Show("خطا در هنگام ارسال پیام");
                break;
        }

        switch (roleType)
        {
            case "مشتری": Response.Redirect(@"~/Costumer/UsersPage.aspx"); break;
            case "مدیر": Response.Redirect(@"~/Manager/ManagerPage.aspx"); break;
            case "مدیر آشپزخانه": Response.Redirect(@"~/Catering/CateringPage.aspx"); break;
            case "مدیر انبار": Response.Redirect(@"~/Warehouse/WareHouse.aspx"); break;
            }

    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        if (GridView1.PageCount > 1)
        {
            Button1.Visible = true;
            Button2.Visible = true;
        }
        else
        {
            Button1.Visible = false;
            Button2.Visible = false;

        }


    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        
        //GridView1.AllowPaging = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.PageIndex = GridView1.PageIndex + 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.PageIndex = GridView1.PageIndex -1;
    }
    protected void GridView1_DataBinding(object sender, EventArgs e)
    {

    }
}