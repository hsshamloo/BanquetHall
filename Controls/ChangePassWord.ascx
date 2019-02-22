<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ChangePassWord.ascx.cs" Inherits="Controls_ChangePassWord" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="HalfLeftMainPageContent" style="height:auto; float:right ; right:30px">
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:Label ID="OldPassWord" runat="server" style="color: #FFFF99"></asp:Label>
        </div>
        <div class="RightChild">
            :رمز عبور فعلی</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            *<asp:TextBox ID="newPassTxt" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="RightChild">
            : رمز عبور جدید</div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            *<asp:TextBox ID="reNewPassTxt" runat="server" 
                TextMode="Password"></asp:TextBox>
        </div>
        <div class="RightChild">
         :تکرار رمز جدید
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="رمز عبور جدید را وارد کنید" ControlToValidate="newPassTxt"></asp:RequiredFieldValidator>
        </div>
        <div class="RightChild">
       
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="reNewPassTxt" ControlToValidate="newPassTxt" 
                ErrorMessage="رمز عبور و تکرار مطابق نیستند"></asp:CompareValidator>
        </div>
        <div class="RightChild">
       
        </div>
    </div>
    <div class="HalfMainField">
        <div class="MiddelChild">
            <asp:ImageButton ID="ImageButton2" runat="server" 
                ImageUrl="~/Image/UpdateInfo.png" onclick="ImageButton1_Click" />
        </div>
        <div class="RightChild">
       
        </div>
    </div>
    </div>