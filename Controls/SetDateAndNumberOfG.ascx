<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SetDateAndNumberOfG.ascx.cs" Inherits="Controls_SetDateAndNumberOfG" %>
<%@ Register Assembly="Heidarpour.WebControlUI" Namespace="Heidarpour.WebControlUI"
    TagPrefix="rhp" %>
<link href="../App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
<div class="Parent">
<div >
    <div class="fieldNormal">
        <div class="LeftChild">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DatePicker1" ErrorMessage="تاریخ را وارد کنید"></asp:RequiredFieldValidator>
        </div>
        <div class="MiddelChild">
            <rhp:DatePicker ID="DatePicker1" runat="server"></rhp:DatePicker>
        </div>
        <div class="RightChild">
        :تاریخ مراسم
        </div>
    </div>
    <div class="fieldNormal">
        <div class="LeftChild">
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="numberOfGuestTxt" ErrorMessage="مقدار صحیح وارد کنید" 
        ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="تعداد مهمان ها را وارد کنید " 
                ControlToValidate="numberOfGuestTxt"></asp:RequiredFieldValidator>
        </div>
        <div class="MiddelChild">
            *<asp:TextBox ID="numberOfGuestTxt" runat="server" Width="52px" 
                ViewStateMode="Enabled"></asp:TextBox>
        </div>
        <div class="RightChild">
        :تعداد مهمان ها
        </div>
    </div>

     <div class="fieldNormal">
        <div class="LeftChild">
        </div>
        <div class="MiddelChild">
            <asp:Button ID="Button1" runat="server" Text="جستجو" BackColor="#FFCC00" 
                onclick="Button1_Click" />
        </div>
        <div class="RightChild">
        
        </div>
    </div>
    </div>
    </div>