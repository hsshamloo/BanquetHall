using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;
using System.Collections;

public partial class persianCalender : System.Web.UI.UserControl
{
    ArrayList gYearDate = new ArrayList();
    ArrayList gMonthDate = new ArrayList();
    ArrayList gDayDate = new ArrayList();

    PersianCalendar pCalender = new PersianCalendar();
    private DateTime Gda;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            Gda = DateTime.Now;

            int pMonth = pCalender.GetMonth(Gda);


            int pYear = pCalender.GetYear(Gda);
            for (int i = 0; i < 10; i++)
            {
                gYearDate.Add(pYear + i);
            }
            yearPicker.DataSource = gYearDate;
            yearPicker.DataBind();
        }
    }
    protected void yearPicker_SelectedIndexChanged(object sender, EventArgs e)
    {
        monthPicker.Visible = true;
        Label1.Text = yearPicker.SelectedValue;

    }
    protected void monthPicker_SelectedIndexChanged(object sender, EventArgs e)
    {
        int counter = 0;

        dayPicker.Items.Clear();
        if (monthPicker.SelectedIndex <= 5)
            counter = 31;

        else if (monthPicker.SelectedIndex > 5)
            counter = 30;

        if (monthPicker.SelectedIndex == 11 && (pCalender.IsLeapYear(int.Parse(yearPicker.SelectedValue))))
            counter = 29;

        for (int i = 1; i <= counter; i++)
        {
            gDayDate.Add(i);
        }

        dayPicker.DataSource = gDayDate;
        dayPicker.DataBind();

        Label1.Text = yearPicker.SelectedValue + @"/" + monthPicker.SelectedValue;
    }
    protected void dayPicker_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = yearPicker.SelectedValue + @"/" + monthPicker.SelectedValue + @"/" + dayPicker.SelectedValue;
        Gda = pCalender.ToDateTime(int.Parse(yearPicker.SelectedValue), int.Parse(monthPicker.SelectedValue), int.Parse(dayPicker.SelectedValue), 0, 0, 0, 0);
        Label2.Text = Gda.ToShortDateString();
        HttpContext.Current.Session.Add("DesireDate", Gda);
    }

    

}
