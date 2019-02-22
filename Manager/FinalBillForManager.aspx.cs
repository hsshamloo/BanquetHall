﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinalBillForManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string reserveId = Request.QueryString["ReserveId"];
        BillAndPayment newBillInformationForManager = new BillAndPayment().retriveBillInformationByReseveId(reserveId);
        BillReportForm1.BillAndPaymentObject = newBillInformationForManager;

    }
}