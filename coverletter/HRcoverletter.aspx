<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="HRcoverletter.aspx.cs" Inherits="master_coverletter_HRcoverletter" Title="Untitled Page" %>

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
        .style16
        {
            text-align: center;
            font-weight: 700;
            font-size: large;
            color: #0033CC;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style14" align="center">
        <tr>
            <td>
                <table align="center" cellspacing="0" class="">
                    <tr>
                        <td class="style16">
                            HR Cover Letter Sample&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                NavigateUrl="~/imagesproject/hrcover.pdf" style="color: #000000">Download PDF</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/imagesproject/hrcover.png" 
                                Width="600px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

