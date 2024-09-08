<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="candidateregistration.aspx.cs" Inherits="User_candidateregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style143
        {
            width: 100%;
        }
        .style145
        {
            height: 25px;
        }
        .style146
        {
            color: #CC0000;
            height: 26px;
            font-size: large;
        background-color: #33CCCC;
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
        .style152
        {
            color: #CC0000;
            font-size: large;
            height: 29px;
        background-color: #33CCCC;
    }
        .style154
        {
            height: 29px;
        }
    .style155
    {
        height: 34px;
    }
        .style156
        {
            width: 387px;
        }
        .style157
        {
            width: 524px;
        }
        .style158
        {
            height: 34px;
            width: 524px;
        }
        .style159
        {
            width: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" cellspacing="0" border="1">
        <tr>
            <td>
                <table cellpadding="3" cellspacing="1" class="" width="100%">
                    <tr>
                        <td class="style146" colspan="2">
                            <strong>Login Details</strong></td>
                    </tr>
                    <tr>
                        <td class="style159">
                            Username</td>
                        <td class="style156">
                            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validatorusername" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="Please enter username" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style159">
                            Password</td>
                        <td class="style156">
                            <asp:TextBox ID="txtpass1" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style159">
                            Confirm Password</td>
                        <td class="style156">
                            <asp:TextBox ID="txtpass2" runat="server" Height="30px" Width="156px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass1" 
                                ControlToValidate="txtpass2" 
                                ErrorMessage="password and confirm password does not match" ForeColor="Red"></asp:CompareValidator>
&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="3" cellspacing="1" class="">
                    <tr>
                        <td class="style152">
                            <strong>Candidate Personal Details</strong></td>
                        <td class="style152">
                            <asp:TextBox ID="txtid" runat="server" Height="30px" Visible="False" 
                                Width="156px"></asp:TextBox>
                        </td>
                        <td rowspan="11">
                            <asp:Image ID="Image16" runat="server" Height="98px" style="margin-left: 17px" 
                                Width="139px" ImageUrl="~/Images/Imagesforproject/imageprofile.png" />
                            <br />
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                            <br />
                            <asp:Button ID="btnupload11" runat="server" onclick="btnupload11_Click" 
                                Text="Upload" Width="106px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style145">
                            Name</td>
                        <td class="style148">
                            <asp:TextBox ID="txtfirstname" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                                ControlToValidate="txtfirstname" ErrorMessage="Please enter name ." 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style145">
                            </td>
                        <td class="style148">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            Address</td>
                        <td id="txtaddress" class="style150">
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="30px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                                ID="validatoradd" runat="server" ControlToValidate="txtaddress" 
                                ErrorMessage="Please enter proper address." ForeColor="Red"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td id="txtaddress" class="style150">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style154">
                            City</td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="validatorcity" runat="server" 
                                ControlToValidate="txtcity" ErrorMessage="Please enter city name." 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style145">
                            State</td>
                        <td>
                            <asp:TextBox ID="txtstate" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="validatorstate" runat="server" 
                                ControlToValidate="txtstate" ErrorMessage="Please enter state name." 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender</td>
                        <td class="style150">
                            <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DOB</td>
                        <td class="style150">
                            <asp:TextBox ID="txtdob" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="validatordob" runat="server" 
                                ControlToValidate="txtdob" ErrorMessage="Please enter Date of birth" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact No</td>
                        <td class="style150">
                            <asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="validatorcontact" runat="server" 
                                ControlToValidate="txtcontact" ErrorMessage="Entered contact no is wrong" 
                                ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email</td>
                        <td class="style150">
                            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="validatoremail" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="Entered email is wrong" 
                                ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="3" cellspacing="1" class="" width="100%">
                    <tr>
                        <td class="style146" colspan="4">
                            <strong>Candidate Educational Details</strong></td>
                    </tr>
                    <tr>
                        <td>
                            Course</td>
                        <td>
                            Institute</td>
                        <td>
                            Specilization</td>
                        <td class="style157">
                            Grade</td>
                    </tr>
                    <tr>
                        <td>
                            SSC</td>
                        <td>
                            <asp:TextBox ID="txtssc" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtspssc" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td class="style157">
                            <asp:TextBox ID="txtgradessc" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            HSC</td>
                        <td>
                            <asp:TextBox ID="txthsc" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtsphsc" runat="server" Height="30px" 
                                ontextchanged="txtsphsc_TextChanged" Width="156px"></asp:TextBox>
                        </td>
                        <td class="style157">
                            <asp:TextBox ID="txtgradehsc" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Graduation</td>
                        <td>
                            <asp:TextBox ID="txtgraduation" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtspgraduation" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td class="style157">
                            <asp:TextBox ID="txtgradegraducation" runat="server" Height="30px" 
                                Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Post Graduation</td>
                        <td>
                            <asp:TextBox ID="txtpostgraduation" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtsppostgraduation" runat="server" Height="30px" 
                                Width="156px"></asp:TextBox>
                        </td>
                        <td class="style157">
                            <asp:TextBox ID="txtgradepostgraduation" runat="server" Height="30px" 
                                Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style155">
                            Phd</td>
                        <td class="style155">
                            <asp:TextBox ID="txtphd" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td class="style155">
                            <asp:TextBox ID="txtspphd" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td class="style158">
                            <asp:TextBox ID="txtgradephd" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Certification</td>
                        <td>
                            <asp:TextBox ID="txtcertification" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtspcertification" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                        <td class="style157">
                            <asp:TextBox ID="txtgradespecilization" runat="server" Height="30px" 
                                Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="3" cellspacing="1" class="" width="100%">
                    <tr>
                        <td class="style146" colspan="2">
                            <strong>Candidate Professional Details</strong></td>
                    </tr>
                    <tr>
                        <td>
                            Experience</td>
                        <td>
                            <asp:TextBox ID="txtexperience" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Company Name</td>
                        <td>
                            <asp:TextBox ID="txtcompanyname" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Designation</td>
                        <td>
                            <asp:TextBox ID="txtdesignation" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Salary</td>
                        <td>
                            <asp:TextBox ID="txtsalary" runat="server" Height="30px" Width="156px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Skills</td>
                        <td>
                            <asp:TextBox ID="txtskills" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validatorskills" runat="server" 
                                ControlToValidate="txtskills" ErrorMessage="Please enter your skills." 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="3" class="" width="100%">
                    <tr>
                        <td class="style146" colspan="2">
                            <strong>Resume Details</strong></td>
                    </tr>
                    <tr>
                        <td>
                            Resume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                        <td>
                            <asp:TextBox ID="txtresume" runat="server" Height="30px" Width="156px"></asp:TextBox>
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="234px" />
&nbsp;
                            <asp:Button ID="btnupload2" runat="server" onclick="btnupload2_Click" 
                                Text="Upload" Width="150px" BackColor="Maroon" BorderStyle="None" 
                                ForeColor="White" Height="30px" />
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
                <br />
                <asp:Button ID="btnsubmit" runat="server" BackColor="Maroon" 
                    onclick="btnsubmit_Click" Text="Submit" Width="150px" BorderStyle="None" 
                    ForeColor="White" Height="30px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

