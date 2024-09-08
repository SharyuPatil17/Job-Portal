<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="job by company.aspx.cs" Inherits="User_job_by_company" %>

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
         background-color: #C0C0C0;
    }
    .style144
    {
        height: 48px;
    }
        
        .style146
        {
            text-decoration: underline;
        }
        .style147
        {
            text-decoration: underline;
            color: #000000;
        }
        .style148
        {
            text-decoration: underline;
            color: #000000;
            font-size: large;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="8" cellspacing="5" style="border:thin solid #C0C0C0" width="90%">
        <tr>
            <td class="style147" align="left">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style148">Select Job Company</span></strong></td>
            <td class="style146">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top" class="style149">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    Width="250px" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged1" 
                    style="text-align: left">
                    <ItemTemplate>
                    <table align="center" cellpadding="15" class="style143">
                    <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" BorderStyle="None"
                            CommandArgument='<%# Eval("company_name") %>' Height="30px" 
                            onclick="Button1_Click" 
                            Text='<%# Eval("company_name") %>' Width="177px" />
                            
                            </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [company_name] FROM [jobdetails]">
                </asp:SqlDataSource>
            </td>
            <td valign="top" class="style146">
            <asp:DataList ID="DataList2" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource2" GridLines="Both" Width="800px" 
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
                            <td colspan="2">
                                <asp:Button ID="btnapply" runat="server" BackColor="Maroon" ForeColor="#663300" 
                                    
                                    style="text-align: center; font-weight: 700; color: #FFFFFF; background-color: #CC0000;" 
                                    Text="Apply Now " Width="188px" BorderStyle="None" Height="34px" 
                                    onclick="btnapply_Click" PostBackUrl="~/User/login.aspx" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [jobdetails] WHERE ([company_name] LIKE '%' + @company_name + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="company_name" SessionField="COM" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

