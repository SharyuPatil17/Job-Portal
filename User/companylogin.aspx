<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="companylogin.aspx.cs" Inherits="User_companyregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
            height: 100%;
            border-style: solid;
            border-width: 2px;
            background-image: url('../Images/loginbackground.jpg');
        }
        .style8
        {
            color: #FFFFFF;
            width: 354px;
        }
        .style9
        {
        }
        .style10
        {
            text-align: center;
            text-decoration: underline;
            font-weight: 700;
            font-size: xx-large;
        }
    .style72
    {
        width: 520px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <div class="style10">
            Company Login<br />
        </div>
        <table cellpadding="5" cellspacing="3" class="style7">
            <tr>
                <td class="style9" style="color: #FFFFFF">
                    Username</td>
                <td class="style72">
                    <asp:TextBox ID="txtusername" runat="server" Height="37px" Width="274px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="*Username must be entred." 
                        ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Password</td>
                <td class="style72">
                    <asp:TextBox ID="txtpassword" runat="server" Height="37px" Width="274px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatorpassword" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="*Password must be entred" 
                        ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Company Id</td>
                <td class="style72">
                    <asp:TextBox ID="txtcompanyid" runat="server" Height="37px" Width="274px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatorid" runat="server" 
                        ErrorMessage="*Company id must be entred." 
                        ControlToValidate="txtcompanyid" ForeColor="White"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnlogin" runat="server" Height="45px" onclick="btnlogin_Click" 
                        Text="Login" Width="203px" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

