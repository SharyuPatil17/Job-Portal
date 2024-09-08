<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" 
        BackImageUrl="~/Images/Imagesforproject/login bg.jpg" Height="100%" 
        style="text-align: center" Width="100%">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" bgcolor="#FFCCCC" cellpadding="10" cellspacing="0" 
            style="height: 246px; width: 358px; font-family: Arial, Helvetica, sans-serif">
            <tr>
                <td class="style2" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="33px" 
                        ImageUrl="~/Images/Imagesforproject/JPRS-banner-icon.png" />
                    <strong style="font-size: x-large; text-align: left">Admin Login<hr noshade="noshade" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td>
                    Username</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="153px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="Please enter username." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtpass" runat="server" Height="31px" TextMode="Password" 
                        Width="153px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="text-align: left">
                    <strong style="font-size: x-large; text-align: left">
                    <hr noshade="noshade" />
                    </strong>
                    <asp:Button ID="btnlogin" runat="server" BorderStyle="None" Height="30px" 
                        onclick="btnlogin_Click" 
                        style="color: #FFFFFF; font-weight: 700; font-family: Arial, Helvetica, sans-serif; background-color: #800000" 
                        Text="Login" Width="150px" />
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
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
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
    </asp:Panel>
    </form>
</body>
</html>
