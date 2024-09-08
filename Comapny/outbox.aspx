<%@ Page Title="" Language="C#" MasterPageFile="~/Comapny/company.master" AutoEventWireup="true" CodeFile="outbox.aspx.cs" Inherits="Comapny_outbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }
    .style5
    {
        font-size: x-large;
            text-align: center;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="1" class="style4">
    <tr>
        <td class="style5">
            <strong style="text-align: center">Outbox</strong></td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Width="724px">
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
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [notifications] WHERE ([company_name] LIKE '%' + @company_name + '%')">
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

