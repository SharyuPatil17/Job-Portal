<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="User_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style141
        {
            width: 679px;
        }
        .style149
        {
            text-decoration: underline;
        }
        .style151
    {
        height: 54px;
    }
        .style152
        {
            height: 37px;
        }
        .style153
        {
            font-size: large;
        }
        .style154
        {
            height: 51px;
        }
        .style155
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <table cellpadding="6" cellspacing="1" align="center">
        <tr>
            <td class="style152">
    <table cellpadding="5" 
                    
                    style="border-style: solid; border-width: 1px; width: 500px; height: 254px;">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Image ID="Image16" runat="server" ImageUrl="~/Images/loginicon.jpg" 
                    Width="18px" />
                <strong><span class="style153">Candidate Login</span><br />
                </strong>
                <asp:HyperLink ID="HyperLink14" runat="server" 
                    style="font-size: small; " CssClass="style149">Already User?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style151">
                Username</td>
            <td>
                <asp:TextBox ID="txtusernamecan" runat="server" Height="37px" Width="274px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpasswordcan" runat="server" Height="37px" Width="274px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;<asp:Button ID="btnlogincan" runat="server" BackColor="Maroon" 
                    BorderColor="Black" ForeColor="White" onclick="btnlogin_Click" Text="Login" 
                    Width="144px" Height="34px" BorderStyle="None" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnresetcan" runat="server" BackColor="Maroon" 
                    BorderColor="Black" ForeColor="White"  Text="Reset" 
                    Width="144px" Height="34px" onclick="btnresetcan_Click" 
                    BorderStyle="None"  />
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center" 
                style="text-decoration: underline; font-weight: 700">
                <asp:HyperLink ID="HyperLink17" runat="server" style="color: #000066" 
                    NavigateUrl="~/User/candidateregistration.aspx">New User?</asp:HyperLink>
            </td>
        </tr>
    </table>
            </td>
            <td>
        <table cellpadding="5" cellspacing="3" bgcolor="White" 
                    style="border: 1px solid #000000; width: 500px">
            <tr>
                <td style="color: #000000" align="center" colspan="2">
                    <asp:Image ID="Image17" runat="server" ImageUrl="~/Images/loginicon.jpg" 
                        Width="18px" />
                    <strong><span class="style153">Company Login</span><br />
                    </strong>
                    <asp:HyperLink ID="HyperLink16" runat="server" 
                        style="text-decoration: underline; font-size: small;">Already User?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="color: #000000">
                    Username</td>
                <td>
                    <asp:TextBox ID="txtusernamecom" runat="server" Height="37px" Width="274px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    <asp:TextBox ID="txtpasswordcom" runat="server" Height="37px" Width="274px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center" class="style154">
                    <asp:Button ID="btnlogincomp" runat="server" Height="34px"  
                        Text="Login" Width="144px" BackColor="Maroon" BorderColor="Black" 
                        ForeColor="White" onclick="btnlogincomp_Click" BorderStyle="None" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnresetcom" runat="server" BackColor="Maroon" 
                    BorderColor="Black" ForeColor="White"  Text="Reset" 
                    Width="144px" Height="34px" onclick="btnresetcom_Click" BorderStyle="None" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:HyperLink ID="HyperLink15" runat="server" 
                        style="text-decoration: underline; font-weight: 700; color: #000066;" 
                        NavigateUrl="~/User/companyregistration.aspx">New User?</asp:HyperLink>
                </td>
            </tr>
        </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" 
                style="border-style: solid; border-width: 1px; width: 50px; height: 25px;" 
                class="style155">
                <asp:Image ID="Image18" runat="server" ImageUrl="~/Images/loginicon.jpg" 
                    Width="23px" Height="20px" />
                &nbsp;
                <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Admin/login.aspx" 
                    ForeColor="Black" style="font-weight: 700"><span class="style153">Admin Login</span></asp:HyperLink>
            </td>
        </tr>
    </table>

</asp:Content>

