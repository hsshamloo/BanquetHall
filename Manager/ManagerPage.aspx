<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ManagerPage.aspx.cs" Inherits="ManagerPage" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/ManagerPartTitle.png" />
        </div>
        <div class="MainPageContent" >
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 321px; left: 40px;">
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Image/messageFolder.png" 
                    ForeColor="#764F26" NavigateUrl="~/Manager/MessagePage.aspx">HyperLink</asp:HyperLink>
            </div>
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 313px; left: 585px;">
                <div style= "position:absolute; height:49px ; width:57px; top: 10px; left: 9px; font-size: large; font-weight: 700;">
                    <asp:HyperLink ID="NNUhl" runat="server" 
                        NavigateUrl="~/Manager/ChangeUserRoleType.aspx" 
                        style="color: #FF0000; font-size: x-large; background-color: #FFFFFF">[NNUhl]</asp:HyperLink>
                    </div>
                <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Image/UserList.png" 
                    NavigateUrl="~/Manager/UserReport.aspx" BackColor="#764F26" 
                    ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
            <div style="width: 160px; height: 203px; float: left; position: absolute; top: 22px;
                left: 58px;">
                <div style= "position:absolute; height:49px ; width:57px; top: 10px; left: 9px; font-size: large; font-weight: 700;">
                    <asp:HyperLink ID="INBhl" runat="server" 
                        NavigateUrl="~/Manager/ReportItemToBuy.aspx" 
                        style="color: #FF0000; font-size: x-large; background-color: #FFFFFF">[INBhl]</asp:HyperLink>
                    </div>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    ImageUrl="~/Image/byeGeorce.png" ForeColor="#764F26">HyperLink</asp:HyperLink>
                
            </div>
            <div style="width: 199px; height: 254px; float: left; position: absolute; top: 9px;
                left: 299px;">
                
                <asp:HyperLink ID="HyperLink6" runat="server" 
                    ImageUrl="~/Image/EditAndRewiveHallInfo.png" 
                    NavigateUrl="~/Manager/HallInforMationForManage.aspx" ForeColor="#764F26">HyperLink</asp:HyperLink>
                
            </div>
            <div style="width: 208px; height: 232px; float: right; position: absolute; top: 333px;
                right: 332px;">
                <div style= "position:absolute; height:49px ; width:57px; top: 10px; left: 9px; font-size: large; font-weight: 700;">
                    <asp:HyperLink ID="NNRhl" runat="server" 
                        NavigateUrl="~/Manager/ReportPendingReserveInfo.aspx" 
                        style="color: #FF0000; font-size: x-large; background-color: #FFFFFF">[NNRhl]</asp:HyperLink>
                    </div>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    ImageUrl="~/Image/listOfReserve.png" BackColor="#764F26" 
                    ForeColor="#764F26" 
                    NavigateUrl="~/Manager/ReportAllReserveInformation.aspx">HyperLink</asp:HyperLink>
                    
            </div>
             <div style="width: 208px; height: 232px; float: right; position: absolute; top: 38px;
                right: 72px;">
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    ImageUrl="~/Image/ManagerAddNewHall.png" 
                     NavigateUrl="~/Manager/RegisterNewHallForm.aspx" ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>

