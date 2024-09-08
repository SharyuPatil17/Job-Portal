<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="jobbycompany.aspx.cs" Inherits="Candidate_jobbycompany" %>

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
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderId="ContentPlaceHolder1">
</br>
    <table align="center" cellpadding="8" cellspacing="5" style="border:thin solid #C0C0C0" width="90%">
        <tr>
        <td align="left">
        <strong style="font-size: large">&nbsp; </strong>
                <strong style="text-decoration: underline; font-size: large">Select Job Company</strong></td>
           
            <td>
            &nbsp;</td>
            </tr>
            <tr>
            <td align="left" valign="top">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" width="250px">
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
                </td>
            <td valign="top">
                <asp:DataList ID="DataList2" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource2" GridLines="Both" Width="780px" 
                    onselectedindexchanged="DataList2_SelectedIndexChanged" ForeColor="White">
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
                            <tr>
                                <td>
                                Job Location</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr >
                                <td>
                                Job Designation</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("job_designation") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr class="style100">
                                <td>
                                Minimum Salary</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("job_minsalary") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr class="style100">
                                <td class="style145">
                                Maximum Salary</td>
                                <td class="style145">
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
                                    <asp:Button ID="btnapply" runat="server" BackColor="#CC0000" ForeColor="#663300" 
                                    
                                        style="text-align: center; font-weight: 700; color: #000000; background-color: #CC0000;" 
                                        Text="Apply Now " Width="188px" BorderStyle="None" Height="34px" 
                                        onclick="btnapply_Click" CommandArgument='<%# Eval("job_id") %>' />
                                    &nbsp;&nbsp;
                                    <asp:Label runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [company_name] FROM [jobdetails]">
                </asp:SqlDataSource>
            </td>
            <td valign="top">
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


