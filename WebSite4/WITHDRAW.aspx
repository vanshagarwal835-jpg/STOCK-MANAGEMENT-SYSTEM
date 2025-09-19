<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WITHDRAW.aspx.cs" Inherits="WITHDRAW" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .style4
        {
            text-align: center;
        }
        .style1
        {
            font-size: xx-large;
            font-family: Arial;
            text-align: center;
            text-decoration: underline;
            color: #FF9900;
        }
        .style2
        {
            width: 100%;
            height: 69px;
        }
        .style3
        {
            font-size: x-large;
            font-family: Algerian;
            text-decoration: underline;
        }
        .style5
        {
            width: 100%;
        }
        .style8
        {
            text-align: center;
            height: 47px;
        }
        .style6
        {
            font-size: x-large;
            font-family: Arial;
        }
        .style15
        {
            text-align: right;
            height: 47px;
            background-color: #FFFFFF;
        }
        .style7
        {
            font-size: large;
        }
        .style9
        {
            font-family: Arial;
            font-size: xx-large;
            text-decoration: underline;
            text-align: center;
            color: #99FF33;
        }
        .style11
        {
            font-size: xx-large;
            font-family: Arial;
        }
        .style10
        {
            font-size: xx-large;
        }
        .style12
        {
            height: 31px;
        }
        .style13
        {
            text-align: right;
        }
        .style14
        {
            font-size: x-large;
            font-family: Arial;
            font-weight: bold;
            text-decoration: underline;
        }
        .style16
        {
            text-align: left;
            font-size: x-large;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <div class="style4">
        <p class="style1">
            <strong>STOCK MANAGEMENT SYSTEM</strong></p>
        <table class="style2">
            <tr>
                <td bgcolor="#009900" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style3" 
                        NavigateUrl="~/HOME.aspx">HOME</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="#009900" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style3" 
                        NavigateUrl="~/ABOUTUS.aspx">ABOUT US</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="#009900" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style3" 
                        NavigateUrl="~/contact.aspx">CONTACT US</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="#009900" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="style3" 
                        NavigateUrl="~/MAINHOME.aspx">LOG OUT</asp:HyperLink>
                    </strong>
                </td>
            </tr>
        </table>
    </div>
    <table bgcolor="#FFFF66" class="style5">
            <tr>
                <td class="style8">
                    <span class="style6"><strong>Hi,&nbsp; </strong>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style15">
                <strong>
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style7" 
                    NavigateUrl="~/AFTER LOGIN.aspx">BACK</asp:HyperLink>
                </strong>
                </td>
            </tr>
        </table>
    <table class="style5">
        <tr>
            <td class="style9" colspan="2">
                <strong>WITHDRAW FUND</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <strong>USERID:-</strong></td>
            <td class="style11">
                <asp:Label ID="lbl_id" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <strong>AVAILABLE BALANCE:-</strong></td>
            <td class="style6">
                <asp:Label ID="lbl_ab" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <strong>HOW MUCH AMOUNT DO YOU WITHDRAW:-</strong></td>
            <td class="style6">
                <asp:TextBox ID="txt_amount" runat="server" CssClass="style10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style13">
                <strong>
                <asp:Button ID="Button" runat="server" CssClass="style14" 
                    onclick="Button_Click" Text="WITHDRAW" />
                </strong>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <strong>CURRENT BALANCE:-</strong></td>
            <td class="style16">
                <asp:Label ID="lbl_FB" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    
</body>
</html>
