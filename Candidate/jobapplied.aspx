<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="jobapplied.aspx.cs" Inherits="Candidate_jobapplied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 90%;
        }
        .style10
        {
            font-family: Verdana;
            font-size: x-large;
            color: #CC0000;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <br />
    <table align="center" cellpadding="6" class="style9">
        <tr>
            <td class="style10" style="text-align: center">
                <strong>My Applications</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#000099" 
                    BorderStyle="Inset" BorderWidth="2px" CellPadding="3" DataKeyNames="applied_id" 
                    DataSourceID="SqlDataSource1" PageSize="5" Width="1200px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
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
                        <asp:BoundField DataField="job_category" HeaderText="job_category" 
                            SortExpression="job_category" />
                        <asp:BoundField DataField="location" HeaderText="location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="job_designation" HeaderText="job_designation" 
                            SortExpression="job_designation" />
                        <asp:BoundField DataField="job_qualification" HeaderText="job_qualification" 
                            SortExpression="job_qualification" />
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
                    SelectCommand="SELECT [applied_id], [applied_date], [job_id], [company_name], [job_name], [job_category], [location], [job_designation], [job_qualification] FROM [jobview] WHERE ([jobseeker_name] LIKE '%' + @jobseeker_name + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="jobseeker_name" SessionField="cname" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>


