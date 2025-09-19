<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VIEW PROFILE.aspx.cs" Inherits="VIEW_PROFILE" %>

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
        .style9
        {
            width: 536px;
        }
        .style10
        {
            font-size: large;
            font-family: Arial;
            font-weight: bold;
            text-decoration: underline;
        }
        .style11
        {
            text-align: right;
            height: 52px;
        }
        .style12
        {
            width: 536px;
            height: 52px;
            text-align: right;
        }
        .style13
        {
            height: 52px;
        }
        .style7
        {
            font-size: large;
        }
        .style14
        {
            text-align: right;
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
        </table>
    <table class="style5">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style14">
                <strong>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style7" 
                    NavigateUrl="~/AFTER LOGIN.aspx">BACK</asp:HyperLink>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>USERID:-</strong></td>
            <td class="style9">
                    <span class="style6">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    </span>
            </td>
            <td class="style4" colspan="2" rowspan="6">
                <asp:Image ID="Image1" runat="server" Height="237px" Width="225px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>FULL NAME:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>EMAIL:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>MOBILE NUMBER:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_mob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>DATE OF BIRTH:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>ADDRESS:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>CITY:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>PINCODE:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_pincode" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style10" 
                    onclick="Button1_Click" Text="VIEW PROFILE" />
                </strong>
            </td>
            <td class="style12">
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="style10" 
                    onclick="Button2_Click" Text="UPDATE YOUR PROFILE" />
                </strong>
            </td>
            <td class="style13">
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    
</body>
</html>
