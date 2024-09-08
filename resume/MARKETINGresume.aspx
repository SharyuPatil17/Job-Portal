<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="MARKETINGresume.aspx.cs" Inherits="master_resume_MARKETINGresume" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 100%;
            height: 100%;
        }
        .style15
        {
            width: 80%;
            height: 80%;
        }
        .style17
        {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style18
        {
            font-size: large;
        }
        .style19
        {
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style14" align="center">
        <tr>
            <td>
                <table align="center" cellspacing="0" class="style15">
                    <tr>
                        <td class="style17">
                            <b><span class="style18"><span class="style19">MARKETING Resume Sample</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                NavigateUrl="~/imagesproject/marketingresume.pdf" style="color: #000000">Download 
                            PDF</asp:HyperLink>
                            </span></b>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image3" runat="server" 
                                ImageUrl="~/imagesproject/marketingresume.png" Width />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

