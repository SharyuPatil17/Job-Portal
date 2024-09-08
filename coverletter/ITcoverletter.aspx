<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="ITcoverletter.aspx.cs" Inherits="master_coverletter_ITcoverletter" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 100%;
            height: 100%;
        }
        .style16
        {
            text-align: center;
        }
        .style18
        {
            text-align: center;
            font-size: large;
        }
        .style19
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style20
        {
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style14" align="center">
        <tr>
            <td>
                
                
                 <table align="center" cellspacing="0" class="">
                    <tr>
                        <td class="style18">
                        
                        
                            <b><span class="style19"><span class="style20">IT Cover Letter Sample&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                NavigateUrl="~/imagesproject/itcover.pdf" style="color: #000000">Download PDF</asp:HyperLink>
                            </span></b>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/imagesproject/itcover.png" width=600px/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

