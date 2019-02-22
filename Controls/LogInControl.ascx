<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LogInControl.ascx.cs"
    Inherits="LogInControl"  %>
<div style="position: relative; float: right; height: 35px; width: 950px; text-align: right;
    margin: 0px; padding: 0px">
    <div style="float: right; height: 20px; width: 88px;
        margin: 10px 5px 0px 0px; padding: 0px; ">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/نام کاربری.png" />
    </div>
    <div style="float: right; width: 147px; height: 30px; margin: 2px 10px 0px 0px;">
        <asp:TextBox ID="UserNameText" runat="server" Style="height: 29px; width: 146px" 
            Font-Size="Medium" MaxLength="50"></asp:TextBox>
    </div>
    <div style="float: right; height: 20px; width: 88px;
        margin: 10px 10px 0px 0px; padding: 0px; ">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/کلمه عبور.png" />
    </div>
    <div style="float: right; width: 147px; height: 30px; margin: 2px 10px 0px 0px;">
        <asp:TextBox ID="PassWordTextBx" runat="server" Style="height: 29px; width: 146px" 
            Font-Size="Large" MaxLength="15" TextMode="Password"></asp:TextBox>
    </div>
    <div style="float: right; height: 20px; width: 36px; margin: 13px 10px 0px 0px; padding: 0px;">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/ورود.png" 
            onclick="ImageButton1_Click" CausesValidation="False" />
    </div>
     <div style=" float: right; height: 30px; width: auto;
        margin: 4px 10px 0px 0px; padding: 0px; color: #FF0000;">
         <asp:Label ID="Label1" runat="server"  
             Font-Size="Medium" Font-Bold="True" 
             style="font-family: Tahoma; color: #FFFF66">
             </asp:Label>
    </div>
</div>

