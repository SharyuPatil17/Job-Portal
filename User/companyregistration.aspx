<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="companyregistration.aspx.cs" Inherits="User_companylogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-size: large;
        color: #FF0000;
    }
        .style5
        {
            height: 35px;
        }
        .style9
        {
            height: 55px;
        }
        .style143
        {
            text-align: center;
            font-weight: bold;
        }
        .style149
    {
            text-align: left;
            font-weight: bold;
        }
        .style150
        {
            height: 35px;
            width: 97%;
            text-align: right;
        }
        .style151
        {
            height: 55px;
            font-size: medium;
            text-align: right;
            width: 97%;
        }
        .style152
        {
            height: 55px;
            font-size: medium;
            width: 98%;
        }
        .style153
        {
            height: 35px;
            width: 98%;
        }
        .style154
        {
            width: 98%;
        }
        .style155
        {
            width: 97%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color: #CC0000">
        <br class="style4" />
    </p>
    <table cellpadding="5" cellspacing="0" align="center" border="0" 
    style="border-style: solid; border-width: thin" width="80%">
        <tr>
            <td style="color: #CC0000; font-size: large; background-color: #00CCFF;" 
                colspan="4">
        <span>Company&nbsp; Registration</span></td>
        </tr>
        <tr>
            <td class="style149">
                Company ID</td>
            <td class="style3">
            &nbsp;
                <asp:TextBox ID="txtid" runat="server" Height="35px" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorid" runat="server" 
                    ControlToValidate="txtcompany_name" ErrorMessage="ID must be entere" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style151">
                <strong>Company Name</strong></td>
            <td class="style152">
                <asp:TextBox ID="txtcompany_name" runat="server" Height="35px" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                    ControlToValidate="txtcompany_name" ErrorMessage="Name must be enterd." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style149">
                Location</td>
            <td class="style3">
            &nbsp;<asp:DropDownList ID="drpclocation" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                    Height="35px" Width="230px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [location]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorlocation" runat="server" 
                    ErrorMessage="Please select location" ForeColor="Red" 
                    ControlToValidate="drpclocation"></asp:RequiredFieldValidator>
&nbsp;</td>
            <td class="style150">
                <strong>Company Contact</strong></td>
            <td class="style153">
                <asp:TextBox ID="txtcompany_contact" runat="server" Height="35px" Width="230px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="validatorcontact" runat="server" 
                    ControlToValidate="txtcompany_contact" 
                    ErrorMessage="Entered contact no is wrong" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style149">
                Company Type</td>
            <td class="style3">
                &nbsp;<asp:DropDownList 
                    ID="drpcompany_type" runat="server" DataSourceID="SqlDataSource3" 
                    DataTextField="category_name" DataValueField="category_name" Height="35px" 
                    Width="230px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [category_name] FROM [category]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorcomtype" runat="server" 
                    ControlToValidate="drpcompany_type" 
                    ErrorMessage="*Company type must be entred." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style150">
                <strong>Company Email</strong></td>
            <td class="style153">
                <asp:TextBox ID="txtcompany_email" runat="server" Height="35px" Width="230px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="validatoremail" runat="server" 
                    ControlToValidate="txtcompany_email" ErrorMessage="Entered email is wrong" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style149">
                Description</td>
            <td class="style3">
                <asp:TextBox ID="txtdescription" runat="server" Height="58px" Width="230px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td id="txt" class="style150">
                <strong>Company Website</strong></td>
            <td id="txt" class="style153">
                <asp:TextBox ID="txtcompany_website" runat="server" Width="230px" Height="35px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="validatorwebsite" runat="server" 
                    ControlToValidate="txtcompany_website" ErrorMessage="Enter proper website" 
                    ForeColor="Red" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style149">
                <strong>Password</strong></td>
            <td class="style3">
                <asp:TextBox ID="txtpass" runat="server" Height="35px" Width="230px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorpass" runat="server" 
                    ErrorMessage="Password must be enterd." ForeColor="Red" 
                    ControlToValidate="txtpass"></asp:RequiredFieldValidator>
            </td>
            <td class="style155">
                &nbsp;</td>
            <td class="style154">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;<asp:Button ID="btnsubmit" runat="server" BackColor="Maroon" 
                    BorderColor="Black" ForeColor="White" onclick="btnsubmit_Click" Text="Submit" 
                    Width="230px" Height="35px" BorderStyle="None" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

