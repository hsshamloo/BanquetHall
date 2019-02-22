<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShowPersianTime.ascx.cs"
    Inherits="Controls_ShowPersianTime" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
    <div class="fieldNormal">
        
        <div class="persianClenderField">
            <asp:DropDownList ID="dayDropDownList" runat="server" Height="23px" Width="64px">
            </asp:DropDownList>
        </div>
        <div class="persianClenderField">
            روز
        </div>
        
         <div class="persianClenderField">
             <asp:DropDownList ID="monthDropDownList" runat="server" Width="104px">
             </asp:DropDownList>
        </div>
        <div class="persianClenderField">
        ماه
        </div>
        
        <div class="persianClenderField">
            <asp:DropDownList ID="yearDropDownList" runat="server" Height="22px" 
                Width="88px" onselectedindexchanged="yearDropDownList_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div class="persianClenderField">
        سال
        </div>
    </div>
</div>
