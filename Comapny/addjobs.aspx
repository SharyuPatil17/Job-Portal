<%@ Page Title="" Language="C#" MasterPageFile="~/Comapny/company.master" AutoEventWireup="true" CodeFile="addjobs.aspx.cs" Inherits="Comapny_addjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        height: 0;
        border-style: solid;
        border-width: 1px;
    }
    .style2
    {
        }
    .style3
    {
        text-align: center;
        font-size: xx-large;
        text-decoration: underline;
    }
        .style8
        {
        font-weight: bold;
        text-align: left;
    }
    .style10
    {
        text-align: left;
        width: 398px;
    }
    .style11
    {
        text-align: left;
        font-size: x-large;
    }
    .style12
    {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
<p>
    <table cellpadding="7" cellspacing="1" align="center" width="80%">
        <tr>
            <td class="style11" colspan="4">
                <strong style="text-align: left">Add Jobs</strong><strong style="font-size: x-large"><hr noshade="noshade" />
            </strong></td>
        </tr>
        <tr>
            <td class="style8">
                Job Id</td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Height="30px" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorjobid" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="Please enter job id." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style12">
                <strong>Company&nbsp; Name</strong></td>
            <td>
                <asp:TextBox ID="txtcname" runat="server" Height="30px" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorcname" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="Please enter company name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Job Name</td>
            <td>
                <asp:TextBox ID="txtjobname" runat="server" 
                    ontextchanged="TextBox2_TextChanged" Width="230px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorjname" runat="server" 
                    ControlToValidate="txtjobname" ErrorMessage="Please enter job name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style12">
                <strong>Job Designation</strong></td>
            <td>
                <asp:TextBox ID="txtdesignation" runat="server" 
                    ontextchanged="TextBox2_TextChanged" Width="230px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatordesignation" runat="server" 
                    ControlToValidate="txtdesignation" ErrorMessage="Please enter designation." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Location</td>
            <td>
                <asp:DropDownList ID="drplocation" runat="server" DataSourceID="SqlDataSource3" 
                    DataTextField="Name" DataValueField="Name" Width="230px" Height="30px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [location]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorlocation" runat="server" 
                    ControlToValidate="drplocation" ErrorMessage="Please select location." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style12">
                <strong>Job Experience</strong></td>
            <td>
                <asp:TextBox ID="txtexperience" runat="server" 
                    ontextchanged="TextBox2_TextChanged" Width="230px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorexperience" runat="server" 
                    ControlToValidate="txtexperience" 
                    ErrorMessage="Please enter required desisgnation." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Job Minsalary</td>
            <td id="txtmin">
                <asp:TextBox ID="txtmin" runat="server" ontextchanged="TextBox2_TextChanged" 
                    Width="230px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatormin" runat="server" 
                    ControlToValidate="txtmin" ErrorMessage="Please enter Minimum salary." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10">
                <strong>Job Maxsalary</strong></td>
            <td id="txtmin">
                <asp:TextBox ID="txtmax" runat="server" ontextchanged="TextBox2_TextChanged" 
                    Width="230px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatormax" runat="server" 
                    ControlToValidate="txtmax" ErrorMessage="Please enter Maximum salary." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Job Qualification</td>
            <td>
                <asp:TextBox ID="txtqualification" runat="server" 
                    ontextchanged="TextBox2_TextChanged" Width="230px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorqualification" runat="server" 
                    ControlToValidate="txtqualification" 
                    ErrorMessage="Please enter required qualification." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
    <asp:Button ID="btnnew" runat="server" Text="New" Width="150px" 
        BackColor="#CC0000" BorderColor="Black" ForeColor="White" 
        onclick="btnnew_Click" BorderStyle="None" Height="30px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnsave" runat="server" Text="Save" Width="150px" 
        BackColor="#CC0000" BorderColor="Black" ForeColor="White" 
        onclick="btnsave_Click1" BorderStyle="None" Height="30px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnupdate" runat="server" Text="Update" Width="150px" 
        BackColor="#CC0000" BorderColor="Black" ForeColor="White" 
        onclick="btnupdate_Click" BorderStyle="None" Height="30px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btndelete" runat="server" Text="Delete" Width="150px" 
        BackColor="#CC0000" BorderColor="Black" ForeColor="White" 
        onclick="btndelete_Click" BorderStyle="None" Height="30px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="150px" 
        BackColor="#CC0000" BorderColor="Black" ForeColor="White" 
        onclick="btncancel_Click" BorderStyle="None" Height="30px" />
            </td>
        </tr>
    </table>
&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView 
        ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="job_id" HeaderText="job_id" 
                SortExpression="job_id" />
            <asp:BoundField DataField="company_name" HeaderText="company_name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="job_name" HeaderText="job_name" 
                SortExpression="job_name" />
            <asp:BoundField DataField="location" HeaderText="location" 
                SortExpression="location" />
            <asp:BoundField DataField="job_designation" HeaderText="job_designation" 
                SortExpression="job_designation" />
            <asp:BoundField DataField="job_minsalary" HeaderText="job_minsalary" 
                SortExpression="job_minsalary" />
            <asp:BoundField DataField="job_maxsalary" HeaderText="job_maxsalary" 
                SortExpression="job_maxsalary" />
            <asp:BoundField DataField="job_experience" HeaderText="job_experience" 
                SortExpression="job_experience" />
            <asp:BoundField DataField="job_qualification" HeaderText="job_qualification" 
                SortExpression="job_qualification" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [jobdetails]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
</asp:Content>

