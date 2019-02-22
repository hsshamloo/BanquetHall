using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;
using System.Collections;


public partial class Controls_ShowPersianTime : System.Web.UI.UserControl
{
    private int yearNum, monthNum, dayMonth;
    private bool justShow;
    ArrayList gYearDate = new ArrayList();
    ArrayList gMonthDate = new ArrayList();
    ArrayList gDayDate = new ArrayList();


    PersianCalendar pCalender = new PersianCalendar();
    private DateTime Gda;

    public bool JustShow
    {
        get { return justShow; }
        set { justShow = value; }
    }

    public int DayMonth
    {
        get { return dayMonth; }
        set { dayMonth = value; }
    }

    public int MonthNum
    {
        get { return monthNum; }
        set { monthNum = value; }
    }

    public int YearNum
    {
        get { return yearNum; }
        set { yearNum = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Gda = DateTime.Now;
    ChangTime();
    }

    private void ChangTime()
    {
        int year = pCalender.GetYear(Gda);
        for (int counter = year; counter < year + 10; counter++)
        {
            gYearDate.Add(counter);
        }


        int month = pCalender.GetMonth(Gda);
        for (int counter = month; counter <= 12; counter++)
        {
            gMonthDate.Add(counter);
        }

        int day = pCalender.GetDayOfMonth(Gda);
        int maxCounter;

        if (pCalender.IsLeapYear(year) && day == 12)
        {
            maxCounter = 29;
        }
        else
        {
            if (day > 6) { maxCounter = 30; }
            else { maxCounter = 31; }

        }
        for (int counter = day; counter <= maxCounter; counter++)
        {
            gDayDate.Add(counter);
        }

        yearDropDownList.DataSource = gYearDate;
        yearDropDownList.DataBind();

        monthDropDownList.DataSource = gMonthDate;
        monthDropDownList.DataBind();

        dayDropDownList.DataSource = gDayDate;
        dayDropDownList.DataBind();
    }
    protected void yearDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}