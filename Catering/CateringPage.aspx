<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="CateringPage.aspx.cs" Inherits="CateringPage" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/CateringPartTitel.png" />
        </div>
        <div class="MainPageContent" >
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 313px; left: 585px;">
                <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Image/InWareHouseItem.png" 
                    NavigateUrl="~/AllAvailableItemInWareHouse.aspx" BackColor="#764F26" 
                    ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
            <div style="width: 160px; height: 203px; float: left; position: absolute; top: 22px;
                left: 58px;">
                
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    ImageUrl="~/Image/OrederNewItem.png" ForeColor="#764F26" 
                    NavigateUrl="~/Catering/OrderNewItem.aspx">HyperLink</asp:HyperLink>
                
            </div>
            <div style="width: 199px; height: 254px; float: left; position: absolute; top: 9px;
                left: 299px;">
                
                <asp:HyperLink ID="HyperLink6" runat="server" 
                    ImageUrl="~/Image/editAndViewFoodInfo.png" 
                    NavigateUrl="~/Catering/ViewAndEditFoodInformation.aspx" 
                    ForeColor="#764F26">HyperLink</asp:HyperLink>
                
            </div>
            <div style="width: 208px; height: 232px; float: right; position: absolute; top: 333px;
                right: 332px;">
                <div style= "position:absolute; height:49px ; width:57px; top: 10px; left: 9px; font-size: large; font-weight: 700;">
                    <asp:HyperLink ID="NumHL" runat="server" 
                        style="color: #FF0000; font-size: x-large; background-color: #FFFFFF">[NumHL]</asp:HyperLink>
                    </div>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    ImageUrl="~/Image/listOfReserve.png" BackColor="#764F26" 
                    ForeColor="#764F26" 
                    NavigateUrl="~/Catering/AllFoodReservationInformation.aspx">HyperLink</asp:HyperLink>
                    
            </div>
            <div style="background-position: right center; width: 182px; height: 232px; float: left;
                position: absolute; top: 319px; left: 62px;">
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Image/messageFolder.png" 
                    ForeColor="#764F26" NavigateUrl="~/Catering/MessageForCatering.aspx">HyperLink</asp:HyperLink>
            </div>
             <div style="width: 208px; height: 232px; float: right; position: absolute; top: 38px;
                right: 72px;">
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    ImageUrl="~/Image/RegisterNewFood.png" 
                     NavigateUrl="~/Catering/FoodInformationRegisterAndEdit.aspx" 
                     ForeColor="#764F26">HyperLink</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>

