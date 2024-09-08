<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate/candidate.master" AutoEventWireup="true" CodeFile="manageprofile.aspx.cs" Inherits="Candidate_manageprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style143
        {
            width: 100%;
        }
        .style146
        {
            width: 654px;
            color: #CC0000;
            height: 26px;
            font-size: large;
        }
        .style151
        {
            height: 26px;
        }
        .style144
        {
            width: 654px;
        }
        .style152
        {
            color: #CC0000;
            font-size: large;
            height: 29px;
        }
        .style153
        {
            width: 557px;
            height: 29px;
        }
        .style149
        {
            width: 20px;
        }
        .style145
        {
            height: 25px;
        }
        .style148
        {
            height: 25px;
            width: 557px;
        }
        .style150
        {
            width: 557px;
        }
        .style154
        {
            height: 29px;
        }
        .style117
        {
            color: #CC0000;
        }
        .style155
        {
            height: 28px;
        }
        .style156
        {
            width: 557px;
            height: 28px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
    <br />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="jobseeker_id" HeaderText="jobseeker_id" 
                SortExpression="jobseeker_id" />
            <asp:BoundField DataField="experience" HeaderText="experience" 
                SortExpression="experience" />
            <asp:BoundField DataField="company_name" HeaderText="company_name" 
                SortExpression="company_name" />
            <asp:BoundField DataField="designation" HeaderText="designation" 
                SortExpression="designation" />
            <asp:BoundField DataField="salary" HeaderText="salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="skills" HeaderText="skills" 
                SortExpression="skills" />
            <asp:BoundField DataField="resumepath" HeaderText="resumepath" 
                SortExpression="resumepath" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="jobseekerid" HeaderText="jobseekerid" 
                SortExpression="jobseekerid" />
            <asp:BoundField DataField="SSC_institute" HeaderText="SSC_institute" 
                SortExpression="SSC_institute" />
            <asp:BoundField DataField="SSC_percent" HeaderText="SSC_percent" 
                SortExpression="SSC_percent" />
            <asp:BoundField DataField="HSC_institute" HeaderText="HSC_institute" 
                SortExpression="HSC_institute" />
            <asp:BoundField DataField="HSC_percent" HeaderText="HSC_percent" 
                SortExpression="HSC_percent" />
            <asp:BoundField DataField="Grad_institute" HeaderText="Grad_institute" 
                SortExpression="Grad_institute" />
            <asp:BoundField DataField="Grad_percent" HeaderText="Grad_percent" 
                SortExpression="Grad_percent" />
            <asp:BoundField DataField="Grad_sp" HeaderText="Grad_sp" 
                SortExpression="Grad_sp" />
            <asp:BoundField DataField="Postgrad_institute" HeaderText="Postgrad_institute" 
                SortExpression="Postgrad_institute" />
            <asp:BoundField DataField="Postgrad_percent" HeaderText="Postgrad_percent" 
                SortExpression="Postgrad_percent" />
            <asp:BoundField DataField="Postgrad_sp" HeaderText="Postgrad_sp" 
                SortExpression="Postgrad_sp" />
            <asp:BoundField DataField="PHD_institute" HeaderText="PHD_institute" 
                SortExpression="PHD_institute" />
            <asp:BoundField DataField="PHD_percent" HeaderText="PHD_percent" 
                SortExpression="PHD_percent" />
            <asp:BoundField DataField="PHD_sp" HeaderText="PHD_sp" 
                SortExpression="PHD_sp" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" 
                SortExpression="contactno" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" 
                SortExpression="emailid" />
            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
            <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" />
            <asp:BoundField DataField="Expr3" HeaderText="Expr3" SortExpression="Expr3" />
            <asp:BoundField DataField="Expr4" HeaderText="Expr4" SortExpression="Expr4" />
            <asp:BoundField DataField="Expr5" HeaderText="Expr5" SortExpression="Expr5" />
            <asp:BoundField DataField="Expr6" HeaderText="Expr6" SortExpression="Expr6" />
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
        SelectCommand="SELECT * FROM [candidateview] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="cname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    <asp:Panel ID="Panel1" runat="server">
        <table align="center" cellpadding="5" cellspacing="0">
            <tr>
                <td>
                    <table cellpadding="3" cellspacing="1" class="style143">
                        <tr>
                            <td class="style146">
                                <strong>Login Details</strong></td>
                            <td class="style151">
                            </td>
                        </tr>
                        <tr>
                            <td class="style144">
                                Username</td>
                            <td>
                                <asp:TextBox ID="txtname" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style144">
                                Password</td>
                            <td>
                                <asp:TextBox ID="txtpass1" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style144">
                                Confirm Password</td>
                            <td>
                                <asp:TextBox ID="txtpass2" runat="server" AutoPostBack="True"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table cellpadding="3" cellspacing="1" class="style143">
                        <tr>
                            <td class="style152">
                                <strong>Candidate Personal Details</strong></td>
                            <td class="style153">
                                <asp:TextBox ID="txtid" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td class="style149" rowspan="12">
                                <asp:Image ID="Image16" runat="server" Height="98px" style="margin-left: 17px" 
                                Width="139px" ImageUrl="~/Images/Imagesforproject/imageprofile.png" />
                                <br />
                                <asp:FileUpload ID="fuphoto" runat="server" />
                                <br />
                                <asp:Button ID="btnupload1" runat="server" onclick="btnupload1_Click" 
                                Text="Upload" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style145">
                                Name</td>
                            <td class="style148">
                                <asp:TextBox ID="txtfirstname" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style150">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Address</td>
                            <td id="txtaddress0" class="style150">
                                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" 
                                    AutoPostBack="True"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td id="txtaddress1" class="style150">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style154">
                                City</td>
                            <td class="style153">
                                <asp:TextBox ID="txtcity" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style145">
                                State</td>
                            <td class="style148">
                                <asp:TextBox ID="txtstate" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style155">
                                Gender</td>
                            <td class="style156">
                                <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                DOB</td>
                            <td class="style150">
                                <asp:TextBox ID="txtdob" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contact No</td>
                            <td class="style150">
                                <asp:TextBox ID="txtcontact" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email</td>
                            <td class="style150">
                                <asp:TextBox ID="txtemail" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style150">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table cellpadding="3" cellspacing="1" class="style143">
                        <tr>
                            <td class="style117">
                                <strong>Candidate Educational Details</strong></td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Course</td>
                            <td>
                                Institute</td>
                            <td>
                                Specilization</td>
                            <td>
                                Grade</td>
                        </tr>
                        <tr>
                            <td>
                                SSC</td>
                            <td>
                                <asp:TextBox ID="txtssc" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtspssc" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgradessc" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                HSC</td>
                            <td>
                                <asp:TextBox ID="txthsc" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtsphsc" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgradehsc" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Graduation</td>
                            <td>
                                <asp:TextBox ID="txtgraduation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtspgraduation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgradegraducation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Post Graduation</td>
                            <td>
                                <asp:TextBox ID="txtpostgraduation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtsppostgraduation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgradepostgraduation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Phd</td>
                            <td>
                                <asp:TextBox ID="txtphd" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtspphd" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgradephd" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Certification</td>
                            <td>
                                <asp:TextBox ID="txtcertification" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtspcertification" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtgradespecilization" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table cellpadding="3" cellspacing="1" class="style143">
                        <tr>
                            <td class="style117">
                                <strong>Candidate Professional Details</strong></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Experience</td>
                            <td>
                                <asp:TextBox ID="txtexperience" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Company Name</td>
                            <td>
                                <asp:TextBox ID="txtcompanyname" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Designation</td>
                            <td>
                                <asp:TextBox ID="txtdesignation" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Salary</td>
                            <td>
                                <asp:TextBox ID="txtsalary" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Skills</td>
                            <td>
                                <asp:TextBox ID="txtskills" runat="server" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table cellpadding="3" class="style143">
                        <tr>
                            <td class="style117">
                                <strong>Resume Details</strong></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Resume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="txtresume" runat="server" AutoPostBack="True"></asp:TextBox>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                &nbsp;
                                <asp:Button ID="btnupload2" runat="server" onclick="btnupload2_Click" 
                                Text="Upload" Width="93px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rdacceptance" runat="server" 
                    Text="I accept all the terms and condition" />
                    <br />
                    <asp:Button ID="btnupdate" runat="server" BackColor="#CC0000" 
                    onclick="btnsubmit_Click" Text="Update" Width="143px" />
                    <br />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


