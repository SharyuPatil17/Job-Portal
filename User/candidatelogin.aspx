<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="candidatelogin.aspx.cs" Inherits="User_candidatelogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style3
        {
        }
        .style4
        {
            text-align: center;
            font-size: x-large;
        }
    .style125
    {
        width: 0;
    }
    .style126
    {
        width: 222px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" class="style2">
        <tr>
            <td class="style4" colspan="2">
                <strong>Candidate Login<br />
                </strong>
                <asp:HyperLink ID="HyperLink14" runat="server" 
                    style="font-size: small; text-decoration: underline">Already User?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Username</td>
            <td class="style126">
                <asp:TextBox ID="txtusername" runat="server" Height="35px" Width="229px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="*Username must be entred." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style125">
                Password</td>
            <td class="style126">
                <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="229px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorpassword" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="*Password must be entred." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btnlogin" runat="server" BackColor="#CC0000" 
                    BorderColor="Black" ForeColor="White" onclick="btnlogin_Click" Text="Login" 
                    Width="144px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" BackColor="#CC0000" 
                    BorderColor="Black" ForeColor="White" onclick="btnlogin_Click" Text="Reset" 
                    Width="144px" />
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" 
                style="text-decoration: underline; font-weight: 700">
                New User?</td>
        </tr>
    </table>
</asp:Content>

