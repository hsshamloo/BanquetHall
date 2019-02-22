<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegisterNewItem.ascx.cs" Inherits="RegisterNewItem" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="نام کالا را وارد کنید" ControlToValidate="ItemNameTxt"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="ItemNameTxt" runat="server" CssClass="PersianText"></asp:TextBox>
</div>
<div class="RightChild">
    :نام کالا</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="RequiredItemType" runat="server" 
        ControlToValidate="ItemDropList" ErrorMessage="نوع کالار را مشخص کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    <asp:CheckBox ID="addNewItemType" runat="server" AutoPostBack="True" 
        oncheckedchanged="CheckBox1_CheckedChanged" Text=" افزودن نوع جدید" />
    <asp:DropDownList ID="ItemDropList" runat="server">
    </asp:DropDownList>
</div>
<div class="RightChild">
    :نوع کالا</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="itemTypeValidCon" runat="server" 
        ControlToValidate="ItemTypeTxt" ErrorMessage="نوع جدید کالا را وارد کنید " 
        Visible="False"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    <asp:TextBox ID="ItemTypeTxt" runat="server" Visible="False" Width="141px"></asp:TextBox>
</div>
<div class="RightChild">
    <asp:Label ID="itemTypeLb" runat="server" Text=":نوع کالا جدید" 
        Visible="False"></asp:Label>
    </div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="ItemPriceTxt" ErrorMessage="مقدار صحیح وارد کنید" 
        ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="ItemPriceTxt" ErrorMessage="قیمت کالا را وارد کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="ItemPriceTxt" runat="server" Width="88px"></asp:TextBox>
</div>
<div class="RightChild">
    :قیمت کالا</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="NumberOfItem" ErrorMessage="مقدار صحیح وارد کنید" 
        ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="NumberOfItem" ErrorMessage="تعداد کالا را وارد کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="NumberOfItem" runat="server" Width="88px"></asp:TextBox>
</div>
<div class="RightChild">
    :تعداد کالا</div>
</div>
<div class="fieldNormal">
<div class="LeftChild"></div>
<div class="MiddelChild">
    
    
            <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Image/registerItem.png" onclick="ImageButton1_Click"  />

    </div>
<div class= "RightChild"></div>
</div>
</div>