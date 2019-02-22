<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ItemOrderPartControl.ascx.cs" Inherits="Controls_ItemOrderPartControl" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height:auto;">
    <div class="HalfMainField">
        <div class="MiddelChild">
        </div>
        <div class="RightChild">
        </div>
    </div>
    <div class="HalfMainField" style="border-bottom-color:White">
        <div class="MiddelChild">
            <asp:DropDownList ID="ItemTypesDropList" runat="server" Width="184px" 
                AutoPostBack="True" 
                onselectedindexchanged="ItemTypesDropList_SelectedIndexChanged" 
                CssClass="comboBoxPersian">
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :نوع کالا</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:DropDownList ID="ItemNameDropDown" runat="server" Width="215px" 
                onselectedindexchanged="itemNameDropDown_SelectedIndexChanged1" 
                AutoPostBack="True" CssClass="comboBoxPersian">
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            :نام کالا</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="ItemCost" runat="server" style="color: #FFFFCC"></asp:Label>
        </div>
        <div class="RightChild">
            :قیمت کالا 
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Button ID="addBtn" runat="server" Text="اضافه کردن" BackColor="#FFCC33" BorderColor="#FFCC33"
                OnClick="addBtn_Click" />
            &nbsp;
            <asp:TextBox ID="numberOfItemTxt" runat="server" Width="70px"></asp:TextBox>
        </div>
        <div class="RightChild">
            :تعداد</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="numberOfItemTxt" ErrorMessage="مقداری درست وارد کنید" 
                ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            
            </div>
        <div class="RightChild">
            </div>
    </div>
</div>