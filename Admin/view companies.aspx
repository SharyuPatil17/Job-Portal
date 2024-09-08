<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="view companies.aspx.cs" Inherits="Admin_view_companies" %>

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
    <table cellpadding="5" cellspacing="1" class="style6">
    <tr>
        <td class="style7" align="center">
            <strong>Manage Companies</strong></td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="company_id" DataSourceID="SqlDataSource1" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="company_id" HeaderText="company_id" ReadOnly="True" 
                        SortExpression="company_id" />
                    <asp:BoundField DataField="company_name" HeaderText="company_name" 
                        SortExpression="company_name" />
                    <asp:BoundField DataField="location" HeaderText="location" 
                        SortExpression="location" />
                    <asp:BoundField DataField="company_contact" HeaderText="company_contact" 
                        SortExpression="company_contact" />
                    <asp:BoundField DataField="company_email" HeaderText="company_email" 
                        SortExpression="company_email" />
                    <asp:BoundField DataField="company_type" HeaderText="company_type" 
                        SortExpression="company_type" />
                    <asp:BoundField DataField="description" HeaderText="description" 
                        SortExpression="description" />
                    <asp:BoundField DataField="company_website" HeaderText="company_website" 
                        SortExpression="company_website" />
                    <asp:BoundField DataField="password" HeaderText="password" 
                        SortExpression="password" />
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
                SelectCommand="SELECT * FROM [companydetails]"
                 DeleteCommand ="delete from [companydetails] where [company_id]=@company_id"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

