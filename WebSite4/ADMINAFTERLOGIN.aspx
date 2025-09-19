<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMINAFTERLOGIN.aspx.cs" Inherits="ADMINAFTERLOGIN" %>

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
        .style7
        {
            font-size: x-large;
            font-family: Arial;
            text-decoration: underline;
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
                    <span class="style6"><strong>Hi,&nbsp; ADMIN</strong></span></td>
            </tr>
        </table>
    </p>
    <p>
&nbsp;<table bgcolor="#66FFFF" class="style5">
            <tr>
                <td bgcolor="White" class="style4">
                <asp:Image ID="Image12" runat="server" Height="300px" 
                    ImageUrl="~/img1/changepass.jpg" Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                    <asp:Image ID="Image4" runat="server" Height="300px" 
                        ImageUrl="~/img1/view stock.jpg" Width="336px" />
                </td>
                <td bgcolor="White" class="style4">
                    <asp:Image ID="Image5" runat="server" Height="300px" 
                        ImageUrl="~/img/user_view.jpg" Width="336px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="White" class="style4">
                    <strong>
                <asp:HyperLink ID="HyperLink11" runat="server" CssClass="style7" 
                        NavigateUrl="~/adminchangepass.aspx">CHANGE PASSWORD</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="White" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="style7" 
                        NavigateUrl="~/ADMINADDSTOCK.aspx">ADD STOCK</asp:HyperLink>
                    </strong>
                </td>
                <td bgcolor="White" class="style4">
                    <strong>
                    <asp:HyperLink ID="HyperLink7" runat="server" CssClass="style7" 
                        NavigateUrl="~/ADMINVIEWUSER.aspx">VIEW ALL USER</asp:HyperLink>
                    </strong>
                </td>
            </tr>
            </table>
    </p>
    </form>
    
</body>
</html>
