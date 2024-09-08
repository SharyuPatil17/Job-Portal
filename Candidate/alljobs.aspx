<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="alljobs.aspx.cs" Inherits="Candidate_alljobs" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="all Jobs.aspx.cs" Inherits="User_all_Jobs" %>
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style142
    {
        width: 80%;
    }
    .style143
    {
        width: 80%;
        border-left-style: solid;
        border-left-width: 1px;
        border-right: 1px solid #C0C0C0;
        border-top-style: solid;
        border-top-width: 1px;
        border-bottom: 1px solid #C0C0C0;
    }
    .style144
    {
        height: 48px;
    }
        .style145
        {
            width: 100px;
        }
        .style146
        {
            height: 48px;
            width: 100px;
        }
    .style147
    {
        font-size: large;
        color: #800000;
            text-align: center;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="10" style="border:thin solid #C0C0C0" width="90%">
    <tr>
        <td class="style147">
            <strong>All Jobs</strong></td>
    </tr>
    <tr>
        <td align="center">
            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" 
                onselectedindexchanged="DataList1_SelectedIndexChanged" ForeColor="Black" 
                 Width="800px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table cellpadding="4" cellspacing="4" class="style143">
                        <tr>
                            <td colspan="2" style="text-align: left">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-weight: 700; font-size: large; color: #CC0000;" 
                                    Text='<%# Eval("job_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style145">
                                Company Name:</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Eval("company_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style145">
                                Job Location</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style145">
                                Job Designation</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("job_designation") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style146">
                                Minimum Salary</td>
                            <td class="style144">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("job_minsalary") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style145">
                                Maximum Salary</td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("job_maxsalary") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style145">
                                Experience Required</td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("job_experience") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style145">
                                Qualification</td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("job_qualification") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnapply" runat="server" BackColor="Maroon" ForeColor="White" 
                                    style="text-align: center; font-weight: 700; background-color: #CC0000;" 
                                    Text="Apply Now " Width="164px" Height="33px" BorderStyle="None" 
                                    onclick="btnapply_Click" CommandArgument='<%# Eval("job_id") %>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="Black" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [jobdetails]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>


