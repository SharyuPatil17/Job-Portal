<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="Candidate_inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 50%;
        }
        .style10
        {
            font-size: x-large;
            color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style9">
        <tr>
            <td align="center" class="style10">
                <strong>My Notifications</strong></td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" Height="103px" 
                    style="text-align: center; margin-top: 6px;" Width="662px" 
                    ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="company_name" HeaderText="company_name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="candidate_name" HeaderText="candidate_name" 
                SortExpression="candidate_name" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="sub" HeaderText="sub" SortExpression="sub" />
            <asp:BoundField DataField="content" HeaderText="content" 
                SortExpression="content" />
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
        
                    SelectCommand="SELECT * FROM [notifications] WHERE ([candidate_name] LIKE '%' + @candidate_name + '%')">
        <SelectParameters>
            <asp:SessionParameter Name="candidate_name" SessionField="cname" 
                Type="String" />
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
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p align="center">
        &nbsp;</p>
</asp:Content>

