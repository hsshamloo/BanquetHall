<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SecondLogInControl.ascx.cs"
    Inherits="Controls_SecondLogInControl" %>
<div style="position: relative; float: right; height: 105px; width: 600px; text-align: right;">
    <div style="position: relative; float: right; height: 35px; width: 600px; text-align: right;
        margin: 0px; padding: 0px">
        <div style="float: right; height: 20px; width: 88px; margin: 10px 5px 0px 0px; padding: 0px;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/نام کاربری.png" />
        </div>
        <div style="float: right; width: 147px; height: 30px; margin: 2px 10px 0px 0px;">
            <asp:TextBox ID="UserNameText" runat="server" Style="height: 29px; width: 146px"
                Font-Size="Medium" MaxLength="50"></asp:TextBox>
        </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="ایمیل را به شکل صحیح وارد کنید" 
            style="float: left; font-family: Tahoma; color: #FFCC00" 
            ControlToValidate="UserNameText" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
    <div style="position: relative; float: right; height: 35px; width: 600px; text-align: right;">
        <div style="float: right; height: 20px; width: 88px; margin: 10px 5px 0px 0px; padding: 0px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/کلمه عبور.png" />
        </div>
        <div style="float: right; width: 147px; height: 30px; margin: 2px 10px 0px 0px;">
            <asp:TextBox ID="PassWordTextBx" runat="server" Style="height: 29px; width: 146px"
                Font-Size="Large" MaxLength="15" TextMode="Password"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="PassWordTextBx" ErrorMessage="رمز عبور را وارد کنید" 
            style="font-family: Tahoma; color: #FFCC00; float: left"></asp:RequiredFieldValidator>
    </div>
    <div style="position: relative; float: right; height: 35px; width: 600px; text-align: right;">
        <div style="float: right; height: 20px; width: 36px; margin: 13px 100px 0px 0px; padding: 0px;">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/LoginBtnWhite copy.png" OnClick="ImageButton1_Click"
                CausesValidation="False" Style="height: 15px" />
        </div>
        <div style="float: right; height: 30px; width: auto; margin: 4px 10px 0px 0px; padding: 0px;
            color: #FF0000;">
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" Font-Bold="True" Style="font-family: Tahoma;
                color: #FFFF66">
            </asp:Label>
        </div>
    </div>
</div>
