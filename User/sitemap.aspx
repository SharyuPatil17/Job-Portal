<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="sitemap.aspx.cs" Inherits="User_sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style142
    {
        width: 100%;
    }
    .style144
    {
        width: 355px;
    }
        .style146
        {
            width: 180px;
        }
        .style150
        {
            font-weight: bold;
            background-color: #33CCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table cellpadding="5" cellspacing="4" class="" width="80%" align="center" 
        style="border: thin solid #C0C0C0">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Image ID="Image16" runat="server" Height="148px" 
                ImageUrl="~/Images/sitemap5.jpg" style="text-align: center" Width="686px" />
            <strong style="font-size: x-large"><br />
            </strong></td>
    </tr>
    <tr>
        <td class="style150" style="padding: 7px" width="300">
            General</td>
        <td class="style150" style="padding: 7px" width="300">
            Job Seeker</td>
        <td class="style150" style="padding: 7px" width="300">
            Admin</td>
    </tr>
    <tr>
        <td class="style146">
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/User/home.aspx">Home</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink17" runat="server" 
                        NavigateUrl="~/User/aboutus.aspx">About us</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink19" runat="server" 
                        NavigateUrl="~/User/services.aspx">Services</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink20" runat="server" 
                        NavigateUrl="~/User/sitemap.aspx">Sitemap</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink21" runat="server" 
                        NavigateUrl="~/User/contactus.aspx">Contact</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink22" runat="server" 
                        NavigateUrl="~/User/login.aspx">Login</asp:HyperLink>
                </li>
            </ul>
        </td>
        <td valign="top">
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink23" runat="server" 
                        NavigateUrl="~/User/login.aspx">Manage Profile</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink24" runat="server" 
                        NavigateUrl="~/User/login.aspx">Job Applied</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink25" runat="server" 
                        NavigateUrl="~/User/login.aspx">Change Password</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="~/User/login.aspx">Jobs</asp:HyperLink>
                </li>
            </ul>
        </td>
        <td class="style144" valign="top">
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink26" runat="server" 
                        NavigateUrl="~/Admin/login.aspx">Add Company</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink27" runat="server" 
                        NavigateUrl="~/Admin/login.aspx">Add Job</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink28" runat="server" 
                        NavigateUrl="~/Admin/login.aspx">Manage Candidate</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink29" runat="server" 
                        NavigateUrl="~/Admin/login.aspx">Applied Jobs</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink30" runat="server" 
                        NavigateUrl="~/Admin/login.aspx">Report</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink31" runat="server" 
                        NavigateUrl="~/Admin/login.aspx">Change Password</asp:HyperLink>
                </li>
            </ul>
        </td>
    </tr>
    <tr>
        <td class="style146">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style144">
            &nbsp;</td>
    </tr>
</table>
    <br />
</asp:Content>

