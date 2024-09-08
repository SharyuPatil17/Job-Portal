<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="User_contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style154
        {
            font-size: large;
        }
        .style164
        {
            background-color: #FFFFFF;
        }
        .style170
        {
            width: 137px;
        }
        .style171
        {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="7" cellspacing="3" class="" align="center" width="80%">
        <tr>
            <td align="left" style="text-align: center">
                <table cellpadding="6" style="border-style: hidden; border-color: #800000" 
                    cellspacing="0" width="70%">
                    <tr>
                        <td align="center" colspan="2" 
                            style="border: 2px groove #000000">
                            <asp:Image ID="Image15" runat="server" Height="97px" 
                                ImageUrl="~/Images/Imagesforproject/contactusbackground2.png" 
                                Width="510px" />
                        </td>
                        <td align="center" rowspan="5">
                            <table cellpadding="0" cellspacing="0" class="">
                                <tr>
                                    <td align="center" valign="top">
                                        <table cellpadding="5" frame="box" width="500">
                                            <tr>
                                                <td colspan="2" rowspan="1" style="border: 2px none #000000" align="center">
                                                    <asp:Image ID="Image17" runat="server" ImageUrl="~/Images/enquiry.jpg" 
                                                        Width="18%" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" rowspan="1" style="border: 2px none #000000" class="style171">
                                                    <strong><span>Enquiry</span></strong></td>
                                            </tr>
                                            <tr>
                                                <td class="style170" rowspan="1" style="border: 2px none #000000">
                                                    <strong>Name</strong></td>
                                                <td rowspan="1" style="border: 2px none #000000; text-align: left;">
                                                    <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="validatorname" runat="server" 
                                                        ControlToValidate="txtname" ErrorMessage="Please enter name" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style170" rowspan="1" style="border: 2px none #000000">
                                                    <strong>Subject:</strong></td>
                                                <td rowspan="1" style="border: 2px none #000000; text-align: left;">
                                                    <asp:TextBox ID="txtsubject" runat="server" Height="31px" TextMode="MultiLine" 
                                                        Width="250px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="validatorsubject" runat="server" 
                                                        ControlToValidate="txtsubject" ErrorMessage="Please enter subject" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style170" rowspan="1" style="border: 2px none #000000">
                                                    <strong>Message:</strong></td>
                                                <td rowspan="1" style="border: 2px none #000000; text-align: left;">
                                                    <asp:TextBox ID="txtmessage" runat="server" Height="27px" Width="250px" 
                                                        TextMode="MultiLine"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="validatormessage" runat="server" 
                                                        ControlToValidate="txtmessage" ErrorMessage="Please enter Message" 
                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" rowspan="1" style="border: 2px none #000000">
                                                    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                                                        style="font-weight: 700; background-color: #CC0000" Text="Submit" 
                                                        BackColor="Maroon" BorderStyle="None" ForeColor="White" Height="30px" 
                                                        Width="150px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" 
                            style="border: 2px groove #000000" class="style154">
                            <em style="border: 4px hidden #800000" class="style164">
                            <strong style="background-color: #CC0000">Get in Touch Here</strong></em></td>
                    </tr>
                    <tr>
                        <td style="border: 2px groove #000000">
                            <strong><span>Address&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            </strong><span class="style154">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        </td>
                        <td align="center" style="border: 2px groove #000000">
                            Near the Post office, Kurundwad, Tal-Shirol, Dist- Kolhapur<br />
                            416106</td>
                    </tr>
                    <tr>
                        <td style="border: 2px groove #000000">
                            <strong>Email&nbsp;&nbsp;&nbsp;&nbsp; :</strong></td>
                        <td align="center" style="border: 2px groove #000000">
                            opportunitiestoyou@gmail.com</td>
                    </tr>
                    <tr>
                        <td style="border: 2px groove #000000">
                            <strong>Phone&nbsp;&nbsp;&nbsp; :</strong></td>
                        <td align="center" style="border: 2px groove #000000">
                            7721943973</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </asp:Content>

