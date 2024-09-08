<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="Admin_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 365px;
        }
    .style9
    {
        text-align: center;
    }
    .style11
    {
        height: 29px;
            width: 202px;
        }
    .style12
    {
        width: 640px;
    }
        .style13
        {
            width: 202px;
        }
        .style15
        {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
<table align="center" width="50%" style="border: thin solid #C0C0C0">
    <tr>
        <td class="style12" style="border-style: hidden">
    <p>
        <div>
        <br />
        </div>
        <table cellpadding="3" cellspacing="1">
            <tr>
                <td colspan="2">
                    <strong style="font-size: large">Change Password</strong></td>
            </tr>
            <tr>
                <td>
                    Username:</td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server" Height="34px" Width="151px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatorusername" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="Please enter username." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password:</td>
                <td>
                    <asp:TextBox ID="txtpass1" runat="server" Height="35px" Width="149px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    New Password:</td>
                <td>
                    <asp:TextBox ID="txtpass2" runat="server" Height="33px" Width="149px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
                    &nbsp;<asp:Button 
                        ID="btnchangepass" runat="server" onclick="btnchangepass_Click" 
                        Text="Change Password" Height="35px" 
                        style="color: #FFFFFF; background-color: #CC0000" Width="148px" 
                        BackColor="Maroon" BorderStyle="None" ForeColor="White" />
                    &nbsp;<asp:Button ID="btncancel" 
                        runat="server" ForeColor="Black" onclick="btncancel_Click" Text="Cancel" 
                        Height="34px" style="color: #FFFFFF; background-color: #CC0000" 
                        Width="150px" BackColor="Maroon" BorderStyle="None" />
                </td>
            </tr>
        </table>
    </p>
        </td>
        <td>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/ChangePassword.png" 
                Height="247px" Width="204px" />
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

