<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="advancesearch.aspx.cs" Inherits="Candidate_advancesearch" %>

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
            background-color: #C0C0C0;
        }
        .style100
        {
            color: #000000;
        }
        .style144
    {
        height: 48px;
    }
        .style145
        {
            height: 68px;
            text-align: left;
        }
        .style146
        {
            font-size: large;
            text-align: center;
            color: #660066;
            font-family: Verdana;
        }
        .style147
        {
            font-weight: bold;
            font-family: Verdana;
            font-size: medium;
        }
        .style148
        {
            height: 68px;
            font-weight: bold;
            text-align: center;
            font-family: Verdana;
            font-size: medium;
        }
        .style149
        {
            text-align: left;
        }
        .style150
        {
            font-weight: bold;
            text-align: center;
            font-family: Verdana;
            font-size: medium;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="6" cellspacing="1" frame="box">
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/advanced-search.png" 
                    style="text-align: center" Width="20%" />
            </td>
        </tr>
        <tr>
            <td class="style146" colspan="2">
                <strong>Advance Search</strong></td>
        </tr>
        <tr>
            <td class="style150" style="border-right-style: solid">
                Category:</td>
            <td class="style149">
                <asp:DropDownList ID="drpcategory" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="job_category" 
                    DataValueField="job_category" Height="40px" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [job_category] FROM [jobdetails]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorcategory" runat="server" 
                    ControlToValidate="drpcategory" ErrorMessage="Please select Category" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style148" style="border-right-style: solid">
                Company:</td>
            <td class="style145">
                <asp:DropDownList ID="drpcompany" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="company_name" 
                    DataValueField="company_name" Height="40px" Width="200px" 
                    CssClass="style147">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [company_name] FROM [jobdetails]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorcompany" runat="server" 
                    ControlToValidate="drpcompany" ErrorMessage="Please select Company" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style150" style="border-right-style: solid">
                Post:</td>
            <td class="style149">
                <asp:DropDownList ID="drppost" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="job_designation" 
                    DataValueField="job_designation" Height="40px" Width="200px" 
                    CssClass="style147">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [job_designation] FROM [jobdetails]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorpost" runat="server" 
                    ControlToValidate="drppost" ErrorMessage="Please select Post or designation" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style150" style="border-right-style: solid">
                Expected Salary:</td>
            <td class="style149">
                <asp:TextBox ID="txtminsalary" runat="server" AutoPostBack="True" 
                    CssClass="style147" Height="40px" Width="170px"></asp:TextBox>
                <span class="style147">&nbsp;to
                </span>
                <asp:TextBox ID="txtmaxsalary" runat="server" AutoPostBack="True" 
                    CssClass="style147" Height="40px" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style150" style="border-right-style: solid">
                Location:</td>
            <td class="style149">
                <asp:DropDownList ID="drplocation" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource5" DataTextField="location" 
                    DataValueField="location" Height="40px" Width="200px" CssClass="style147">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [location] FROM [jobdetails]">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="validatorlocation" runat="server" 
                    ControlToValidate="drplocation" ErrorMessage="Please select Location" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsearch" runat="server" Height="45px" 
                    onclick="btnsearch_Click" style="color: #FFFFFF; background-color: #800000" 
                    Text="Search" Width="200px" BackColor="Maroon" BorderStyle="None" 
                    ForeColor="White" />
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2" DataSourceID="SqlDataSource3" GridLines="Both" 
                     Width="680px" onselectedindexchanged="DataList1_SelectedIndexChanged" 
                    Visible="False">
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
                            <td style="color: #000000">
                                Company Name:</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" style="color: #000000" 
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
                                <asp:Button ID="btnapply" runat="server" BackColor="Maroon" ForeColor="White" 
                                    style="text-align: center; font-weight: 700; background-color: #CC0000;" 
                                    Text="Apply Now " Width="164px" Height="33px" BorderStyle="None" 
                                    onclick="btnapply_Click" CommandArgument='<%# Eval("job_id") %>' />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [jobdetails] WHERE (([job_category] LIKE '%' + @job_category + '%') AND ([company_name] LIKE '%' + @company_name + '%') AND ([job_designation] LIKE '%' + @job_designation + '%') AND ([location] LIKE '%' + @location + '%') AND ([job_minsalary] &gt; @job_minsalary) AND ([job_maxsalary] &lt; @job_maxsalary))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpcategory" Name="job_category" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="drpcompany" Name="company_name" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="drppost" Name="job_designation" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="drplocation" Name="location" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtminsalary" Name="job_minsalary" 
                        PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtmaxsalary" Name="job_maxsalary" 
                        PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


