<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BUY SHARES.aspx.cs" Inherits="BUY_SHARES" %>

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
        .style9
        {
            font-size: x-large;
            font-family: Arial;
        }
        .style10
        {
            font-size: medium;
            font-family: Arial;
            font-weight: bold;
        }
        .style11
        {
            font-size: x-large;
            font-family: Arial;
            font-weight: bold;
            }
        .style12
        {
            text-align: right;
        }
        .style7
        {
            font-size: medium;
        }
        .style14
        {
            width: 268435424px;
            text-align: center;
        }
        .style16
        {
            text-align: center;
            font-size: x-large;
            font-family: Arial;
        }
        .style17
        {
            font-size: xx-large;
        }
        .style18
        {
            width: 87%;
            height: 325px;
        }
        .style19
        {
            width: 199px;
            text-align: center;
        }
        .style21
        {
            font-size: x-large;
            font-family: Arial;
            height: 56px;
            text-align: center;
            color: #FF3300;
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
    <p class="style12">
                <strong>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style17" 
                    NavigateUrl="~/AFTER LOGIN.aspx">BACK</asp:HyperLink>
                </strong>
    </p>
    <table bgcolor="#99CCFF" class="style18" align="center" frame="above">
        <tr>
            <td colspan="9" bgcolor="#FCFC98">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#FCFC98" class="style9">
                <strong>&nbsp;USERID:-</strong></td>
            <td class="style19" colspan="3" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_userid" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
            <td class="style16" colspan="3" bgcolor="#FCFC98">
                <strong>BALANCE:-</strong></td>
            <td class="style4" colspan="2" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_balance" runat="server" CssClass="style9"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="style9" bgcolor="#FCFC98">
                <strong>&nbsp;TRANSACTION ID:-</strong></td>
            <td class="style19" colspan="3" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_tran" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
            <td class="style12" colspan="5" bgcolor="#FCFC98">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" colspan="2" bgcolor="#FCFC98">
                <strong>STOCK-NAME:-</strong></td>
            <td class="style21" colspan="3" bgcolor="#FCFC98">
                <strong>STOCK-PRICE:-</strong></td>
            <td class="style21" colspan="3" bgcolor="#FCFC98">
                <strong>STOCK-QUANTITY:-</strong></td>
            <td class="style21" bgcolor="#FCFC98">
                <strong>TOTAL PRICE:-</strong></td>
        </tr>
        <tr>
            <td colspan="3" class="style4" bgcolor="#FCFC98">
                <strong>
                <asp:DropDownList ID="ddl_stockname" runat="server" CssClass="style10" 
                    onselectedindexchanged="ddl_shareid_SelectedIndexChanged" 
                    AutoPostBack="True" Width="241px">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem Value="1400">RELIANCE INDUSTRY</asp:ListItem>
                    <asp:ListItem Value="1900">HDFC BANK</asp:ListItem>
                    <asp:ListItem Value="9500">BAJAJ FINANCE</asp:ListItem>
                    <asp:ListItem Value="12400">MARUTI SUZUKI INDIA</asp:ListItem>
                    <asp:ListItem Value="580">NTPC</asp:ListItem>
                    <asp:ListItem Value="670">VEDENTA</asp:ListItem>
                    <asp:ListItem Value="5700">AMBUJA CEMENTS</asp:ListItem>
                    <asp:ListItem Value="18600">SOLAR INDUSTRIES</asp:ListItem>
                    <asp:ListItem Value="6700">ABB INDIA</asp:ListItem>
                    <asp:ListItem Value="34000">SHREE CEMENT</asp:ListItem>
                </asp:DropDownList>
                </strong>
            </td>
            <td colspan="2" class="style14" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_price" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
            <td class="style4" bgcolor="#FCFC98">
                <asp:TextBox ID="txt_quantity" runat="server" 
                    ontextchanged="txt_quantity_TextChanged" AutoPostBack="True" 
                    CssClass="style7" Width="211px"></asp:TextBox>
            </td>
            <td colspan="3" class="style4" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_tp" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="9" bgcolor="#FCFC98">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style11" 
                    onclick="Button1_Click" Text="BUY" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style16" colspan="3" bgcolor="#FCFC98">
                <strong>AVAILABLE BALANCE:-</strong></td>
            <td class="style16" colspan="3" bgcolor="#FCFC98">
                <strong>TOTAL PRICE:-</strong></td>
            <td class="style16" colspan="3" bgcolor="#FCFC98">
                <strong>AMOUNT LEFT:-</strong></td>
        </tr>
        <tr>
            <td class="style4" colspan="3" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_AB" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
            <td class="style4" colspan="3" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_tp1" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
            <td class="style4" colspan="3" bgcolor="#FCFC98">
                <strong>
                <asp:Label ID="lbl_AL" runat="server" CssClass="style9"></asp:Label>
                </strong>
            </td>
        </tr>
        </table>
    </form>
    
</body>
</html>
