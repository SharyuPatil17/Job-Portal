<%@ Page Title="" Language="C#" MasterPageFile="~/Comapny/company.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Comapny_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table cellpadding="5" cellspacing="0" align="center" width="70%">
    <tr>
        <td>
            <strong style="font-size: x-large">Edit Profile<hr noshade="noshade" />
            </strong></td>
    </tr>
    <tr>
        <td align="center">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="53px" Width="543px" 
                AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="company_id" 
                DataSourceID="SqlDataSource1" style="text-align: left">
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [companydetails] WHERE ([company_name] LIKE '%' + @company_name + '%')"
                 UpdateCommand="update [companydetails] set [company_name]=@company_name,[location]=@location,[company_contact]=@company_contact,[company_email]=@company_email,[company_type]=@company_type,[description]=@description,[company_website]=@company_website,[password]=@password where [company_id]=@company_id"
                
                >
                <SelectParameters>
                    <asp:SessionParameter Name="company_name" SessionField="coname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
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

