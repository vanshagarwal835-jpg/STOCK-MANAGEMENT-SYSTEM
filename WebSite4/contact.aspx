<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            font-family: Arial;
            font-size: large;
        }
        .style4
        {
            text-align: center;
            font-size: large;
            font-family: Arial;
        }
        .style5
        {
            text-align: center;
            font-size: xx-large;
            font-family: Arial;
        }
        .style6
        {
            height: 31px;
        }
        .style7
        {
            height: 31px;
            text-align: center;
        }
        .style8
        {
            font-size: x-large;
            font-family: Arial;
            font-weight: bold;
        }
        .style9
        {
            text-align: right;
            height: 30px;
        }
    </style>
</head>
<body bgcolor="#d2a679">
    
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td bgcolor="White" class="style2">
                <asp:Image ID="Image1" runat="server" Height="258px" ImageUrl="~/location.jpeg" 
                    Width="293px" />
            </td>
            <td bgcolor="White" class="style2">
                <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl="~/phone.jpeg" 
                    Width="294px" />
            </td>
            <td bgcolor="White" class="style2">
                <asp:Image ID="Image3" runat="server" Height="251px" ImageUrl="~/fax.jpeg" 
                    Width="287px" />
            </td>
            <td bgcolor="White" class="style2">
                <asp:Image ID="Image4" runat="server" Height="248px" ImageUrl="~/email.jpeg" 
                    Width="294px" />
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style2">
                <span class="style3"><strong>SoHo 94 Broadway St New </strong></span><strong>
                <br class="style3" />
                </strong><span class="style3"><strong>York NY 1001</strong></span></td>
            <td bgcolor="White" class="style2">
                <strong><span class="style3">234-9876-5400</span><br class="style3" />
                <span class="style3">888-0123-4567(Tool free)</span></strong></td>
            <td bgcolor="White" class="style4">
                <strong>1-234-567-8900</strong></td>
            <td bgcolor="White" class="style4">
                <strong>Hello@gmail.com</strong></td>
        </tr>
        <tr>
            <td colspan="4" class="style6">
                </td>
        </tr>
        <tr>
            <td colspan="4" class="style9">
                <strong>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style7" 
                    NavigateUrl="~/MAINHOME.aspx" ForeColor="White">BACK</asp:HyperLink>
                </strong>
            </td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style5" colspan="4">
                <strong>CONTACT US</strong></td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style2" colspan="4">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="637px">ENTER YOUR NAME</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style2" colspan="4">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="637px">ENTER CORRECT EMAIL ADDRESS</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style2" colspan="4">
                <asp:TextBox ID="TextBox3" runat="server" Height="118px" Width="780px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style6" colspan="4">
            </td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style7" colspan="4">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style8" 
                    onclick="Button1_Click" Text="SUBMIT" />
                </strong>
            </td>
        </tr>
        <tr>
            <td bgcolor="#ECD9C6" class="style6" colspan="4">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    
</body>
</html>
