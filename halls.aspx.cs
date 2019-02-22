using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class halls : System.Web.UI.Page
{
    DataClassesDataContext context = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //با استفاده از این دستور لینک ، اطلاعات کلیه تالار هایی که در دیتابیس موجود می باشد ، بدست می آوریم 
            List<ReceptionsHallTable> avaliabelHalls = (from hallsInfo in context.ReceptionsHallTables
                                                        select hallsInfo).ToList<ReceptionsHallTable>();

            /*با استفاده از این حلقه اطلاعات مربوط به تک تک تالار هایی که
              با استفاده از دستور قبلی از دیتابیس خارج کردیم ، بدست می آوریم*/

            foreach (var singleHall in avaliabelHalls)
            {


                ReceptionHalls hallInforamation = new ReceptionHalls().retriveHallInformaion(singleHall.ReHallId1);

                /*به ازای هر تالاریی که در دیتابیس موجود هست ،
                یک کنترل ، که وظیفه نمایش تالار را به صورت خلاصه به عهده دارد ، می سازیم */

                ShowHallTitle showAvailableHall = (ShowHallTitle)LoadControl(@"~/Controls/ShowHallTitle.ascx");
                showAvailableHall.HallInformation = hallInforamation;
                showAvailableHall.EditView = false;
                showAvailableHall.ReserveView = false;
                showAvailableHall.DeletView = false;

                Panel2.Controls.Add(showAvailableHall);

            }

        }
        catch (Exception x)
        {

            System.Windows.Forms.MessageBox.Show("خطا در "+ x.Message);
        }

    }
}