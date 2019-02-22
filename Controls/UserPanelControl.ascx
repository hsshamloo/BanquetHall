<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserPanelControl.ascx.cs" Inherits="UserPanelControl" %>
<div style="position: relative; float: right; height: 35px; width: 700px; text-align: right;
    margin: 0px; padding: 0px">
    
    <div style=" float: right; height: 30px; width: auto;
        margin: 4px 10px 0px 0px; padding: 0px; color: #FF0000;">
         <asp:Label ID="WelcomeText" runat="server" Text="خوش آمدید " 
             Font-Size="Medium" Font-Bold="True" 
             style="font-family: Tahoma; color: #FFFFFF;">
             </asp:Label>
    </div>
    <div style=" float: right; height: 30px; width: auto;
        margin: 4px 3px 0px 0px; padding: 0px; color: #FF0000;">
        <asp:Label ID="NameOfUser" runat="server" Text="" 
             Font-Size="Medium" Font-Bold="True" 
             style="font-family: Tahoma; color: #FFFF66">
             </asp:Label>
    </div>
    <div style="float: right; height: 20px; width: 45px; margin: 7px 10px 0px 0px; padding: 0px;">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/خروج.png" 
            onclick="ImageButton1_Click" CausesValidation="False" />
    </div>
    <div style="float: right; height: 20px; width: auto; margin: 7px 10px 0px 0px; padding: 0px;">
        
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" 
            ImageUrl="~/Image/LinkToMyPage.png" onclick="ImageButton2_Click" />
        
    </div>
     <div style="float: right; height: 20px; width: auto; margin: 7px 10px 0px 0px; padding: 0px;">
        
         <asp:HyperLink ID="HyperLink1" runat="server" 
             ImageUrl="~/Image/changePassWord.png" NavigateUrl="~/ChangePassword.aspx" 
             ForeColor="#A88A6E">HyperLink</asp:HyperLink>
        
    </div>
</div>