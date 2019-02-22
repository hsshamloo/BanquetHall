<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditHallInfo.ascx.cs" Inherits="Controls_EditHallInfo" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />

<div class="Parent" style="height:490px">
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="نام تالار را وارد کنید" ControlToValidate="hallNameTxt"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="hallNameTxt" runat="server" CssClass="PersianText"></asp:TextBox>
</div>
<div class="RightChild">
    :نام تالار</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
</div>
<div class= "MiddelChild">
    <asp:DropDownList ID="HalTypeTxt" runat="server" CssClass="PersianText" 
        Height="30px" style="font-size: small" Width="235px">
        <asp:ListItem>مناسب مهمانی های کوچک</asp:ListItem>
        <asp:ListItem>مناسب مهمانی متوسط</asp:ListItem>
        <asp:ListItem>مناسب مهمانی بزرگ</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="RightChild">
    :نوع تالار</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="hallCapacityTxt" ErrorMessage="مقدار صحیح وارد کنید" 
        ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="hallCapacityTxt" ErrorMessage="مقدار را وارد کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    * <asp:TextBox ID="hallCapacityTxt" runat="server" Width="72px" 
        MaxLength="5"></asp:TextBox>
</div>
<div class="RightChild">
    :ظرفیت تالار</div>
</div>
<div class="fieldNormal" >
<div class ="LeftChild">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="hallPriceTxt" ErrorMessage="مقدار صحیح وارد کنید" 
        ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="hallPriceTxt" ErrorMessage="مقدار را وارد کنید"></asp:RequiredFieldValidator>
</div>
<div class= "MiddelChild">
    *<asp:TextBox ID="hallPriceTxt" runat="server"></asp:TextBox>
</div>
<div class="RightChild">
    :هزینه ی هر نفر</div>
</div>
<div class="fieldNormal">
<div class ="RightChild">
    :توضیح 
    درباره تالار</div><div class="LeftChild">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="HallFullDescriptionTxt" 
            ErrorMessage="توضیحات مربوط به تالار را وارد کنید"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="fieldBigExtrem" style="text-align: center" 
        >

    <asp:TextBox ID="HallFullDescriptionTxt" runat="server" Height="220px" TextMode="MultiLine" 
        Width="693px" Font-Names="Tahoma" Font-Size="Large" CssClass="PersianText"></asp:TextBox>

</div>
<div class="fieldNormal">
<div class="LeftChild"></div>
<div class="MiddelChild">
    
    &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/Image/UpdateInfo.png" onclick="ImageButton1_Click" />

    </div>
<div class= "RightChild"></div>
</div>

</div>