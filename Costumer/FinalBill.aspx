<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="FinalBill.aspx.cs" Inherits="FinalBill" EnableEventValidation="false"%>

<%@ Register src="~/Controls/finalBillForm.ascx" tagname="finalBillForm" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/billAndPeymentTitle.png" />
        </div>
        <div class="MainPageContent" >
            <div>
            پرداخت 20 درصد هزینه تالار ، برای وارد شدن ، سفارش به فاز اجرایی ، الزامی است
            </div>
            <div style="height:auto ; position:relative ; top: 10px;">
            <asp:Panel ID="Panel2" runat="server" >
                <uc1:finalBillForm ID="finalBillForm1" runat="server" />
            </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

