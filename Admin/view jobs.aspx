<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="view jobs.aspx.cs" Inherits="Admin_view_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 80%;
    }
    .style7
    {
        font-size: x-large;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="6" cellspacing="1" class="style6">
    <tr>
        <td class="style7">
            <strong>Manage Jobs</strong></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
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
                    <asp:BoundField DataField="job_category" HeaderText="job_category" 
                        SortExpression="job_category" />
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
                SelectCommand="SELECT * FROM [jobdetails]"
                DeleteCommand ="delete from [jobdetails] where [job_id]=@job_id"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

