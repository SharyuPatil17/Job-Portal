<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="User_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style143
    {
        font-weight: bold;
    }
        .style144
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
            <table align="center" cellpadding="10" cellspacing="10" width="80%">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Image ID="Image14" runat="server" Height="219px" 
                ImageUrl="~/Images/feedback2.png" style="margin-left: 0px; margin-top: 0px" 
                Width="366px" />
                    </td>
                    <td>
        <table cellpadding="6" cellspacing="1" class="style117" align="center" 
    bgcolor="Black" border="black" frame="below" 
    
        style="border: 4px dotted #000080; width: 644px; color: #000099; background-color: #009999">
            <tr>
                <td align="center">
                    Name</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="34px" Width="201px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatorid" runat="server" 
                        ControlToValidate="txtname" EnableViewState="False" 
                        ErrorMessage="*Name must be entred." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    Contact</td>
                <td>
                    <asp:TextBox ID="txtcontact" runat="server" Height="34px" Width="201px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="validatorcontact" runat="server" 
                        ControlToValidate="txtcontact" ErrorMessage="Contact no is wrong" 
                        ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    Email Id</td>
                <td>
                    <asp:TextBox ID="txtemail_id" runat="server" Width="201px" Height="34px" 
                        ontextchanged="txtemail_id_TextChanged"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="validatoremail" runat="server" 
                        ControlToValidate="txtemail_id" ErrorMessage="*Entred email is incorrect " 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    Message</td>
                <td>
                    <asp:TextBox ID="txtmessage" runat="server" Height="66px" Width="201px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validatormessage" runat="server" 
                        ControlToValidate="txtmessage" ErrorMessage="Please enter meassage." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="justify">
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</b><asp:Button ID="btnsubmit" runat="server" BackColor="Maroon" 
                        BorderColor="Black" ForeColor="White" onclick="btnsubmit_Click" Text="Submit" 
                        Width="245px" CssClass="style143" Height="42px" BorderStyle="None" />
                </td>
            </tr>
        </table>
                    </td>
                </tr>
            </table>
          
        </div>
       
</asp:Content>

