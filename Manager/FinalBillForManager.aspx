<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="FinalBillForManager.aspx.cs" Inherits="FinalBillForManager" EnableEventValidation="false"%>

<%@ Register src="~/Controls/BillReportForm.ascx" tagname="BillReportForm" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="~/App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/finalFactorTitle.png" />
        </div>
        <div class="MainPageContent" style="text-align: left; width: 860px; left: 30px; overflow: auto;">
            <asp:Panel ID="Panel2" runat="server" CssClass="panelTegisterUser">
                <uc1:BillReportForm ID="BillReportForm1" runat="server" />
            </asp:Panel>
        </div>
        s</div>
</asp:Content>

