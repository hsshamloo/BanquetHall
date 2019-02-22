<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegisterFood.ascx.cs" Inherits="Controls_RegisterFood" %>

<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent" >
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="نام خوراک را وارد کنید" ControlToValidate="foodNameTxt"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="foodNameTxt" runat="server" CssClass="PersianText"></asp:TextBox>
</div>
<div class="RightChild">
    :نام خوراک</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="RequiredfoodType" runat="server" 
        ControlToValidate="foodTypeDropList" ErrorMessage="نوع خوراک را مشخص کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    <asp:CheckBox ID="addNewFoodType" runat="server" AutoPostBack="True" 
        oncheckedchanged="CheckBox1_CheckedChanged" Text=" افزودن نوع جدید" />
    <asp:DropDownList ID="foodTypeDropList" runat="server" AutoPostBack="True">
    </asp:DropDownList>
</div>
<div class="RightChild">
    :نوع خوراک</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="foodTypeValidCon" runat="server" 
        ControlToValidate="foodTypeTxt" ErrorMessage="نوع جدید خوراک را وارد کنید " 
        Visible="False"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    <asp:TextBox ID="foodTypeTxt" runat="server" Visible="False" Width="141px"></asp:TextBox>
</div>
<div class="RightChild">
    <asp:Label ID="foodTypeLb" runat="server" Text=":نوع خوراک جدید" 
        Visible="False"></asp:Label>
    </div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="foodPriceTxt" ErrorMessage="مقدار صحیح وارد کنید" 
        ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="foodPriceTxt" ErrorMessage="قیمت خوراک را وارد کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="foodPriceTxt" runat="server" Width="88px"></asp:TextBox>
</div>
<div class="RightChild">
    :قیمت خوراک</div>
</div>

<div class="fieldNormal">
<div class="LeftChild"></div>
<div class="MiddelChild">
    
    &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Image/register-Food.png" onclick="ImageButton1_Click"  />

    </div>
<div class= "RightChild"></div>
</div>

</div>