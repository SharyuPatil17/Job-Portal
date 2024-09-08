<%@ Page Title="" Language="C#" MasterPageFile="~/Comapny/company.master" AutoEventWireup="true" CodeFile="viewapplications.aspx.cs" Inherits="Comapny_viewapplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
            font-family: Verdana;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table cellpadding="5" cellspacing="0" align="center" width="70%">
    <tr>
        <td>
            <strong style="font-size: x-large">View Application<hr noshade="noshade" />
            </strong></td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="5" DataKeyNames="applied_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="applied_id" HeaderText="applied_id" ReadOnly="True" 
                        SortExpression="applied_id" />
                    <asp:BoundField DataField="applied_date" HeaderText="applied_date" 
                        SortExpression="applied_date" />
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
                    <asp:BoundField DataField="job_qualification" HeaderText="job_qualification" 
                        SortExpression="job_qualification" />
                    <asp:BoundField DataField="job_category" HeaderText="job_category" 
                        SortExpression="job_category" />
                    <asp:BoundField DataField="jobseeker_name" HeaderText="jobseeker_name" 
                        SortExpression="jobseeker_name" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [jobview] WHERE ([company_name] LIKE '%' + @company_name + '%')">
                <SelectParameters>
                    <asp:SessionParameter Name="company_name" SessionField="coname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
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
        </td>
    </tr>
</table>
    <br />
</asp:Content>

