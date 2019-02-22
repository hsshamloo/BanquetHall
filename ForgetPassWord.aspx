<%@ Page Title="" Language="C#" MasterPageFile="~/BanquetMasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassWord.aspx.cs" Inherits="ForgetPassWord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_Themes/StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="MainPage">
        <div class="MainPageTitle">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/PaswordRecoveryTitel.png" />
        </div>
        <div class="MainPageContent" >
            <div>
            <div style="width: auto; float: right;">
            &nbsp;&nbsp;
            ایمیل کاربر
            </div>
            <div style="width: auto; float: right;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
              <div style="width: auto; float: right;">
                  <asp:Button ID="Button1" runat="server" Text="ارسال" BackColor="#FFCC00" 
                      BorderColor="#FFCC00" onclick="Button1_Click" />
            </div>  
            
            
            </div>
        </div>
    </div>
</asp:Content>

