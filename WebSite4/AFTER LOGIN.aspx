<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AFTER LOGIN.aspx.cs" Inherits="VIEW_PROFILE" %>

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
        .style6
        {
            font-size: x-large;
            font-family: Arial;
        }
        .style7
        {
            font-size: x-large;
            font-family: Arial;
            text-decoration: underline;
        }
        .style8
        {
            text-align: center;
            height: 47px;
        }
    </style>
</head>
<body style="height: 213px">
    
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
    <p>
&nbsp;<table bgcolor="#FFFF66" class="style5">
            <tr>
                <td class="style8">
                    <span class="style6"><strong>Hi,&nbsp; </strong>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </span>
                </td>
            </tr>
        </table>
    </p>
    <p>
&nbsp;<table bgcolor="#66FFFF" class="style5">
            <tr>
                <td bgcolor="White" class="style4">
                    <asp:Image ID="Image1" runat="server" Height="300px" 
                        ImageUrl="~/img1/profile.jpg" Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                    <asp:Image ID="Image4" runat="server" Height="300px" 
                        ImageUrl="~/img1/view stock.jpg" Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                    <asp:Image ID="Image5" runat="server" Height="300px" 
                        ImageUrl="~/img1/portfolio.jpg" Width="336px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style7" 
                        NavigateUrl="~/VIEW PROFILE.aspx">VIEW / UPDATE PROFILE</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="White" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style7" 
                        NavigateUrl="~/VIEWSTOCK.aspx">VIEW STOCK</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="White" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink7" runat="server" CssClass="style7" 
                        NavigateUrl="~/VIEW PORTFOLIO.aspx">VIEW PORTFOLIO</asp:HyperLink>
                    </strong>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
                <td bgcolor="#66FFFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image6" runat="server" Height="300px" ImageUrl="~/img1/buy.jpeg" 
                    Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image7" runat="server" Height="300px" ImageUrl="~/img1/sell.jpg" 
                    Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image8" runat="server" Height="300px" 
                    ImageUrl="~/img/add.jpg" Width="336px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style4">
                <strong>
                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="style7" 
                        NavigateUrl="~/BUY SHARES.aspx">BUY STOCK</asp:HyperLink>
                </strong>
                </td>
                <td bgcolor="White" class="style4">
                <strong>
                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="style7" 
                        NavigateUrl="~/SELLSTOCK.aspx">SELL STOCK</asp:HyperLink>
                </strong>
                </td>
                <td bgcolor="White" class="style4">
                <strong>
                <asp:HyperLink ID="HyperLink10" runat="server" CssClass="style7" 
                        NavigateUrl="~/ADDFUNDaspx.aspx">ADD FUND</asp:HyperLink>
                </strong>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image9" runat="server" Height="300px" 
                    ImageUrl="~/img/change_password_preview.jpg" Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image10" runat="server" Height="300px" Width="336px" 
                        ImageUrl="~/img/withdraw.jpg" />
                </td>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image11" runat="server" Height="300px" Width="336px" 
                        ImageUrl="~/img/Copilot_20250604_153506.png" />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style4">
                    <strong>
                <asp:HyperLink ID="HyperLink11" runat="server" CssClass="style7" 
                        NavigateUrl="~/USERCHANGEPASS.aspx">CHANGE PASSWORD</asp:HyperLink>
                    </strong></td>
                <td bgcolor="White" class="style4">
                    <strong>
                <asp:HyperLink ID="HyperLink12" runat="server" CssClass="style6" 
                        NavigateUrl="~/WITHDRAW.aspx">WITHDRAW FUND</asp:HyperLink>
                    </strong></td>
                <td bgcolor="White" class="style4">
                    <strong>
                <asp:HyperLink ID="HyperLink13" runat="server" CssClass="style6" 
                        NavigateUrl="~/Feadback.aspx">Feadback</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </form>
    
</body>
</html>
