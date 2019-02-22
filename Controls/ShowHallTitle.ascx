<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShowHallTitle.ascx.cs"
    Inherits="ShowHallTitle" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <div class="showTitleMainField">
        <div class="showTitleRow">
            <div class="showTitleRowLeftChild">
                <asp:HyperLink ID="HallNameHyper" runat="server">[HallNameHyper]</asp:HyperLink>
            </div>
            <div class="showTitleRowRightChild">
                :نام تالار</div>
        </div>
        <div class="showTitleRow">
            <div class="showTitleRowLeftChild">
                <asp:Label ID="halCapacitylb" runat="server" Style="color: #FFFFFF"></asp:Label>
            </div>
            <div class="showTitleRowRightChild">
                :ظرفیت</div>
        </div>
        <div class="showTitleRow">
            <div class="showTitleRowLeftChild">
               <asp:ImageButton ID="deletButton" runat="server" 
                    ImageUrl="~/Image/DeletHall.png" Height="17px" 
                    onclick="deletButton_Click" CausesValidation="False" />
                &nbsp;
               <asp:ImageButton ID="editButton" runat="server"  
                    ImageUrl="~/Image/EditHall.png" onclick="editButton_Click" 
                    style="height: 17px" CausesValidation="False" />
                &nbsp;
                 
                <asp:ImageButton ID="reserveBtn" runat="server" 
                    ImageUrl="~/Image/haleReserve.png" Visible="False" 
                    onclick="reserveBtn_Click" CausesValidation="False" />
                
                 
            </div>
            <div class="showTitleRowRightChild">
                
                </div>
        </div>
        <div class="titleHallDivPic">
            <asp:Image ID="Image1" runat="server" Height="250px" Width="350px" />
        </div>
    </div>
</div>
