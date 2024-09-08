<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="SALESresume.aspx.cs" Inherits="master_resume_SALESresume" Title="Untitled Page" %>

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
            color: #0033CC;
            font-weight: bold;
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
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
                            <span class="style17">SALES Resume Sample&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                NavigateUrl="~/imagesproject/salesresume.pdf" 
                                style="font-size: large; font-weight: 700; font-family: Arial, Helvetica, sans-serif; color: #000000">Download PDF</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Image ID="Image3" runat="server" 
                                ImageUrl="~/imagesproject/salesresume.png" width=600px/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

