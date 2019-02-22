<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master"
    AutoEventWireup="true" CodeFile="UsersPage.aspx.cs" Inherits="UsersPage" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/UserSession.png" />
        </div>
        <div class="MainPageContent">

            <div style="background-position: right center; width: 176px; height: 232px; float: left;
                position: absolute; top: 32px; left: 252px;">
                
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    ImageUrl="~/Image/billGraphic.png" ForeColor="#764F26" 
                    NavigateUrl="~/Costumer/ListOfFactorForUser.aspx">HyperLink</asp:HyperLink>
                
            </div>
            <div style="background-position: right center; width: 201px; height: 141px; float: left;
                position: absolute; top: 75px; left: 19px;">
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    ImageUrl="~/Image/EditUserInformation.png" 
                    NavigateUrl="~/EditUserInformation.aspx" ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
            <div style="width: 176px; height: 254px; float: left; position: absolute; top: 25px;
                left: 459px;">
                
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    ImageUrl="~/Image/ChangeInReserve.png" 
                    NavigateUrl="~/Costumer/BrifShowReservesInformation.aspx" 
                    ForeColor="#764F26">HyperLink</asp:HyperLink>
                
            </div>
            <div style="width: 176px; height: 232px; float: right; position: absolute; top: 65px;
                right: 0px;">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Image/Reserve.png" 
                    NavigateUrl="~/Costumer/findSuiteableHall.aspx" ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
            <div style="width: 144px; height: 221px; position: absolute; top: 371px; left: 370px;">
                
            </div>
        </div>
    </div>
</asp:Content>
