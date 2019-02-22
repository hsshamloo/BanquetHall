<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PhotoUploader.ascx.cs" Inherits="Controls_PhotoUploader" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
<div class="fieldNormal">
<div class ="LeftChild">
    <asp:FileUpload ID="FileUpload1" runat="server" Width="394px" BackColor="White" 
        BorderColor="#FFCC33" />
</div>
<div class= "MiddelChild" style="text-align:left;">
    <asp:Button ID="Button1" runat="server" Text="آپلود تصویر" BackColor="#FFCC33" 
        BorderColor="#FFDD33" Height="26px" Width="103px" 
        onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="پایان ثبت تالار" BackColor="#FF9900" 
        BorderColor="#FF9900" Height="26px" Width="103px" 
        onclick="Finish" />
</div>
<div class="RightChild"> 
    </div>
</div>

</div>