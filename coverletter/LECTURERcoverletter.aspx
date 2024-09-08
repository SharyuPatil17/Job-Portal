<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="LECTURERcoverletter.aspx.cs" Inherits="master_coverletter_LECTURERcoverletter" Title="Untitled Page" %>

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
        }
        .style17
        {
            font-size: large;
        }
        .style18
        {
            font-family: Arial, Helvetica, sans-serif;
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
                        <td class="style16">
                            <b><span class="style17"><span class="style18"><span class="style19">LECTURER Cover Letter Sample&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                NavigateUrl="~/imagesproject/lecturercover.pdf" style="color: #000000">Download PDF</asp:HyperLink>
                            </span></span></span></b>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Image ID="Image3" runat="server" 
                                ImageUrl="~/imagesproject/lecturercover.png" Width=600px />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

