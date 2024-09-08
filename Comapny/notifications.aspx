<%@ Page Title="" Language="C#" MasterPageFile="~/Comapny/company.master" AutoEventWireup="true" CodeFile="notifications.aspx.cs" Inherits="Comapny_notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        height: 32px;
    }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="0" style="width: 42%">
    <tr>
        <td>
            To,</td>
    </tr>
    <tr>
        <td>
            Candidate Name:-</td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="drpname" runat="server" CssClass="style6" 
                DataSourceID="SqlDataSource1" DataTextField="jobseeker_name" 
                DataValueField="jobseeker_name" Height="36px" Width="170px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [jobseeker_name] FROM [jobview] WHERE ([company_name] LIKE '%' + @company_name + '%')">
                <SelectParameters>
                    <asp:SessionParameter Name="company_name" SessionField="coname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                ControlToValidate="drpname" ErrorMessage="Select Candidate Name" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Subject:-</td>
    </tr>
    <tr>
        <td class="style5">
            <asp:TextBox ID="txtsubject" runat="server" Height="36px" Width="245px" 
                CssClass="style6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorsubject" runat="server" 
                ControlToValidate="txtsubject" ErrorMessage="Please enter Subject" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Contents:-</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtcontent" runat="server" Height="38px" Width="241px" 
                CssClass="style6" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorcontent" runat="server" 
                ControlToValidate="txtcontent" ErrorMessage="Please enter Message" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnsend" runat="server" BackColor="Maroon" BorderStyle="None" 
                ForeColor="White" Height="31px" Text="Send" Width="141px" 
                CssClass="style6" onclick="btnsend_Click" />
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
        </td>
    </tr>
</table>
</asp:Content>

