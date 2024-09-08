<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="Admin_location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
           
           
        }
        .style3
        {
            
        }
        .style4
        {
           
        }
        .style6
        {
          
        }
        .style7
        {
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
    <br />
    <table cellpadding="5" align="center" cellspacing="0" width="60%" border="0" 
        
        style="border: thin solid #C0C0C0; font-family: Arial, Helvetica, sans-serif; width: 60%;">
        <tr>
            <td class="style7" colspan="2" >
                <strong>&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/Images/Imagesforproject/location.jpg" Width="4%" 
                    Height="37px" />
                Add Locations</strong></td>
        </tr>
        <tr>
            <td class="style6" >
                <strong>Location Id:</strong></td>
            <td>
                <asp:TextBox ID="txtlocationid" runat="server" Height="37px" Width="255px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vallidatorlocationid" runat="server" 
                    ControlToValidate="txtlocationid" ErrorMessage="Please enter location id" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                <strong>Name of location</strong></td>
            <td >
                <asp:TextBox ID="txtlocationname" runat="server" Height="37px" Width="252px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorlocation" runat="server" 
                    ControlToValidate="txtlocationname" ErrorMessage="Please enter location " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" >
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="btnadd" runat="server" BackColor="#CC0000" BorderColor="Black" 
                    ForeColor="White" Height="39px" onclick="btnadd_Click" Text="Add" 
                    Width="144px" style="text-align: left" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
    <br />
<br />
    <br />
</asp:Content>

