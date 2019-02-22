<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MessageControl.ascx.cs"
    Inherits="Controls_MessageControl" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />

<div class="HalfLeftMainPageContent" style="height: auto; float: right; right: 30px">
    
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:DropDownList ID="DepartemantName" runat="server" Width="190px" 
                AutoPostBack="True" Visible="False" >
                <asp:ListItem Value="مدیر" >مدیر</asp:ListItem>
                <asp:ListItem Value="مدیر آشپزخانه">مدیر آشپزخانه</asp:ListItem>
                <asp:ListItem Value="مدیر انبار">مدیر انبار</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="RightChild">
            </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            *<asp:TextBox ID="emailTxt" runat="server" MaxLength="30" Width="125px"></asp:TextBox>
        </div>
        <div class="RightChild">
            : ایمیل</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="emailTxt" ErrorMessage="ایمیل معتبر نمی باشد" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                style="color: #FFFFCC"></asp:RegularExpressionValidator>
        </div>
        <div class="RightChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="emailTxt" ErrorMessage="ایمیل را وارد کنید" 
                style="color: #FFFFCC"></asp:RequiredFieldValidator>
            </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            *<asp:TextBox ID="SubjectOfMessageTxt" runat="server" MaxLength="30"></asp:TextBox>
        </div>
        <div class="RightChild">
            : موضوع پیام</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="متن پیام را وارد کنید" 
                style="color: #FFFFCC"></asp:RequiredFieldValidator>
        </div>
        <div class="RightChild">
            :متن پیام</div>
    </div>
    <div class="HalfMainField" style="height:160px">
    <div class="MiddelChild" style="height:159px; width:420px">
        *<asp:TextBox ID="TextBox1" runat="server" Height="146px"  
            style="text-align: right" TextMode="MultiLine" Width="400px"></asp:TextBox>
    </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/Image/sendbtn.png" onclick="ImageButton1_Click" />
        </div>
        <div class="RightChild">
        </div>
    </div>
    </div>
