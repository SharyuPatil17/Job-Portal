<%@ Page Language="C#" MasterPageFile="~/master/home.master" AutoEventWireup="true" CodeFile="ITresume.aspx.cs" Inherits="master_resume_ITresume" Title="Untitled Page" %>

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
            color: #0033CC;
            font-size: large;
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
                            <b><span class="style18">IT Resume Sample</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" 
                                NavigateUrl="~/imagesproject/itresume.pdf" 
                                style="color: #000000; font-size: large">Download PDF</asp:HyperLink>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/imagesproject/itresume.png" width=600px/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

