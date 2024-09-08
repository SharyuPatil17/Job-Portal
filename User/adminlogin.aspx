<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="User_adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style4
        {            height: 34px;
        }
        .style146
        {
            height: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <div align="center" style="width: 831px; height: 263px">
            <strong><span class="style145">Admin Login</span></strong><br />
            <table class="style2">
                <tr>
                    <td style="text-align: left; font-size: medium">
                        Admin Id</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtadmin_id" runat="server" Height="30px" 
                            style="margin-left: 7px" Width="231px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="validatorid" runat="server" 
                            ControlToValidate="txtadmin_id" ErrorMessage="*Id must be entred." 
                            ForeColor="#FF3300" style="font-size: medium" ViewStateMode="Enabled"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; text-align: left">
                        Password</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtapassword" runat="server" Height="30px" 
                            style="margin-top: 27px" Width="231px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="Validatorpassword" runat="server" 
                            ControlToValidate="txtapassword" ErrorMessage="*Password must be entred" 
                            ForeColor="#FF3300" style="font-size: medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; text-align: left">
                        Name</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="txtaname" runat="server" Height="30px" 
                            style="margin-top: 33px" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        <asp:Button ID="btnlogin" runat="server" BackColor="Maroon" ForeColor="White" 
                            Height="30px" Text="Login" Width="150px" onclick="btnlogin_Click" 
                            BorderStyle="None" />
                    </td>
                </tr>
                </table>
            <br />
        </div>
    </p>
</asp:Content>

