<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="job by designation.aspx.cs" Inherits="User_job_by_designation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style142
        {
            width: 80%;
            height: 100%;
        }
        .style143
        {
            width: 100%;
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
        .style147
        {
            text-decoration: underline;
            font-size: large;
            color: #000000;
        }
        .style148
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="8" cellspacing="5" style="border:thin solid #C0C0C0" width="90%">
        <tr>
            <td  align="left">
                <strong><span class="style147">&nbsp;Select Job Designation</span></strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top" class="style148">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    Width="250px" onselectedindexchanged="DataList1_SelectedIndexChanged" 
                >
                    <ItemTemplate>
                        <table align="center" cellpadding="15" class="style143">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BorderStyle="None" 
                                        CommandArgument='<%# Eval("job_designation") %>' Height="30px" 
                                        onclick="Button1_Click" Text='<%# Eval("job_designation") %>' Width="177px" />
                                </td>
                            </tr>
                        </table>
                       

                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselecting="SqlDataSource1_Selecting" 
                    SelectCommand="SELECT DISTINCT [job_designation] FROM [jobdetails]">
                </asp:SqlDataSource>
            </td>
            <td align="center" valign="top">
            <asp:DataList ID="DataList2" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource2" GridLines="Both" Width="800px" 
                    onselectedindexchanged="DataList2_SelectedIndexChanged" 
                    style="text-align: left">
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
                            <td>
                                Company Name:</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" 
                                    Text='<%# Eval("company_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td>
                                Job Location</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td>
                                Job Designation</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("job_designation") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style144">
                                Minimum Salary</td>
                            <td class="style144">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("job_minsalary") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td>
                                Maximum Salary</td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("job_maxsalary") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td>
                                Experience Required</td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("job_experience") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td>
                                Qualification</td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("job_qualification") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: left; color: #CC0000">
                                <asp:Button ID="btnapply" runat="server" BackColor="Maroon" ForeColor="White" 
                                    
                                    style="text-align: center; color: #FFFFFF; background-color: #CC0000;" 
                                    Text="Apply Now " Width="175px" BorderStyle="None" Height="31px" 
                                    onclick="btnapply_Click" PostBackUrl="~/User/login.aspx" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [jobdetails] WHERE ([job_designation] LIKE '%' + @job_designation + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="job_designation" SessionField="DES" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

