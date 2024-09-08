<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="manage candidates.aspx.cs" Inherits="Admin_manage_candidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 80%;
    }
    .style7
    {
        text-align: center;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="6" cellspacing="1" class="style6" align="center">
    <tr>
        <td class="style7">
            <strong>Manage Candidates</strong></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" PageSize="5" DataKeyNames="jobseeker_id">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="jobseeker_id" HeaderText="jobseeker_id" 
                        SortExpression="jobseeker_id" />
                    <asp:BoundField DataField="experience" HeaderText="experience" 
                        SortExpression="experience" />
                    <asp:BoundField DataField="resumepath" HeaderText="resumepath" 
                        SortExpression="resumepath" />
                    <asp:BoundField DataField="username" HeaderText="username" 
                        SortExpression="username" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="contactno" HeaderText="contactno" 
                        SortExpression="contactno" />
                    <asp:BoundField DataField="emailid" HeaderText="emailid" 
                        SortExpression="emailid" />
                    <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                    <asp:BoundField DataField="gender" HeaderText="gender" 
                        SortExpression="gender" />
                    <asp:BoundField DataField="SSC_percent" HeaderText="SSC_percent" 
                        SortExpression="SSC_percent" />
                    <asp:BoundField DataField="HSC_percent" HeaderText="HSC_percent" 
                        SortExpression="HSC_percent" />
                    <asp:BoundField DataField="Grad_percent" HeaderText="Grad_percent" 
                        SortExpression="Grad_percent" />
                    <asp:BoundField DataField="Grad_sp" HeaderText="Grad_sp" 
                        SortExpression="Grad_sp" />
                    <asp:BoundField DataField="designation" HeaderText="designation" 
                        SortExpression="designation" />
                    <asp:BoundField DataField="company_name" HeaderText="company_name" 
                        SortExpression="company_name" />
                    <asp:BoundField DataField="skills" HeaderText="skills" 
                        SortExpression="skills" />
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
                SelectCommand="SELECT [jobseeker_id], [experience], [resumepath], [username], [name], [contactno], [emailid], [photo], [gender], [SSC_percent], [HSC_percent], [Grad_percent], [Grad_sp], [designation], [company_name], [skills] FROM [candidateview]"
            DeleteCommand ="delete from [candidate] where [jobseeker_id]=@jobseeker_id">
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
        </td>
    </tr>
</table>
</asp:Content>

