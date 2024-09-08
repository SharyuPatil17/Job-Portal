<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="jobbycategory.aspx.cs" Inherits="Candidate_jobbycategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style143
        {
            width: 100%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #003366;
        }
       
        .style144
    {
        height: 48px;
    }
        
        .style145
        {
            height: 30px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    ContentPlaceHolderId="ContentPlaceHolder1">
    </br>
    <table align="center" cellpadding="8" cellspacing="5" style="border:thin solid #C0C0C0" width="90%">
    <tr>
        <td align="left">
               <strong style="font-size: large">&nbsp; </strong>
                <strong style="text-decoration: underline; font-size: large">Select Job category</strong></td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
                    Width="250px" BackColor="Silver" style="background-color: #CCCCCC">
               
                <ItemTemplate>
                    <table align="center" cellpadding="15" class="style143">
                        <tr>
                            <td bgcolor="Silver">
                                <asp:Button ID="Button1" runat="server" BorderStyle="None" 
                                        CommandArgument='<%# Eval("job_category") %>' Height="30px" 
                                        onclick="Button1_Click" Text='<%# Eval("job_category") %>' Width="177px" />
                            </td>
                        </tr>
                    </table>
                   
                </ItemTemplate>
                
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [job_category] FROM [jobdetails]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [job_category] FROM [jobdetails]">
            </asp:SqlDataSource>
        </td>
        <td valign="top">
            <asp:DataList ID="DataList1" runat="server" BackColor="Silver" 
                 BorderStyle="None"  CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource3" GridLines="Both" 
                     Width="678px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table cellpadding="4" cellspacing="0" class="style143">
                        <tr>
                            <td colspan="2" style="border-style: none;" bgcolor="Silver" valign="top">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-weight: 700; font-size: large; color: #CC0000;" 
                                    Text='<%# Eval("job_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-style: none;" bgcolor="Silver" class="style145" valign="top">
                                Company Name:</td>
                            <td bgcolor="Silver" class="style145" style="border-style: none" valign="top">
                                <asp:Label ID="Label2" runat="server" style="color: #000000" 
                                    Text='<%# Eval("company_name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                Job Location</td>
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("location") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td bgcolor="Silver" valign="top">
                                Job Designation</td>
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("job_designation") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td class="style144" bgcolor="Silver" valign="top">
                                Minimum Salary</td>
                            <td class="style144" bgcolor="Silver" valign="top">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("job_minsalary") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td bgcolor="Silver" valign="top">
                                Maximum Salary</td>
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("job_maxsalary") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                Experience Required</td>
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("job_experience") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="style100">
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                Qualification</td>
                            <td bgcolor="Silver" style="border-style: none" valign="top">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("job_qualification") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" bgcolor="Silver" style="border-style: none" valign="top">
                                <asp:Button ID="btnapply" runat="server" BackColor="#0066FF" ForeColor="Black" 
                                    style="text-align: center; font-weight: 700; background-color: #CC0000;" 
                                    Text="Apply Now " Width="164px" Height="33px" BorderStyle="None" 
                                    onclick="btnapply_Click" CommandArgument='<%# Eval("job_id") %>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [jobdetails] WHERE ([job_category] LIKE '%' + @job_category + '%')">
                <SelectParameters>
                    <asp:SessionParameter Name="job_category" SessionField="CAT" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>


