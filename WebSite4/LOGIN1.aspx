<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN1.aspx.cs" Inherits="LOGIN1" %>

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
            font-size: xx-large;
            font-family: Arial;
            text-decoration: underline;
            text-align: center;
        }
        .style4
        {
            height: 33px;
        }
        .style5
        {
            text-align: right;
        }
        .style6
        {
            text-align: center;
        }
        .style8
        {
            font-size: x-small;
        }
        .style9
        {
            text-align: left;
        }
        .style10
        {
            font-family: Arial;
            font-size: large;
        }
        .style11
        {
            height: 33px;
            font-family: Arial;
            font-size: large;
        }
        .style12
        {
            font-size: x-large;
        }
        .style7
        {
            font-size: large;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td bgcolor="#FFFF66" class="style2" colspan="2">
                <strong>LOGIN</strong></td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/img/login.jpg" 
                    Width="614px" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <strong>
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style7" 
                    NavigateUrl="~/MAINHOME.aspx">BACK</asp:HyperLink>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <strong>USERTYPE:-</strong></td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>ADMIN</asp:ListItem>
                    <asp:ListItem>USER</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <strong>USERID:-</strong></td>
            <td class="style4">
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_id" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <strong>PASSWORD:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style8" 
                    NavigateUrl="~/forgotpassword.aspx">FORGOT PASSWORD</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <strong>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style12" 
                    onclick="LinkButton1_Click">LOGIN</asp:LinkButton>
                </strong>
            </td>
            <td class="style6">
                <strong>
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="style12" 
                    NavigateUrl="~/NEWUSER1.aspx">CREATE ACCOUNT</asp:HyperLink>
                </strong>
            </td>
        </tr>
    </table>
    </form>
    
</body>
</html>
