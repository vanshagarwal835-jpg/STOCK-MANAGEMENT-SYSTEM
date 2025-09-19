<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminchangepass.aspx.cs" Inherits="adminchangepass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 69px;
        }
        
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
        .style9
        {
            font-size: xx-large;
            font-family: Arial;
            text-decoration: underline;
            text-align: center;
            color: #99CCFF;
        }
        .style11
        {
            height: 33px;
            font-family: Arial;
            font-size: x-large;
        }
        .style6
        {
            font-size: x-large;
            font-family: Arial;
        }
        .style13
        {
            font-size: x-large;
            font-family: Arial;
            text-align: right;
        }
        .style12
        {
            font-size: x-large;
            font-family: Arial;
            font-weight: bold;
        }
        .style15
        {
            font-size: xx-large;
            font-family: Arial;
            text-decoration: underline;
            text-align: right;
            color: #99CCFF;
        }
        .style7
        {
            font-size: large;
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
    <table class="style5">
        <tr>
            <td class="style9">
                <strong>CHANGE PASSWORD</strong></td>
        </tr>
        <tr>
            <td class="style15">
                <strong>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style7" 
                    NavigateUrl="~/ADMINAFTERLOGIN.aspx">BACK</asp:HyperLink>
                </strong>
            </td>
        </tr>
    </table>
    <p class="style4">
                <asp:Image ID="Image1" runat="server" Height="233px" 
                    ImageUrl="~/img/change_password_preview.jpg" Width="360px" />
            </p>
    <table class="style5">
        <tr>
            <td class="style11">
                <strong>USERID:-</strong></td>
            <td class="style6">
                <strong>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style6"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <strong>OLD PASSWORD:-</strong></td>
            <td class="style6">
                <strong>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style6"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <strong>NEW PASSWORD:-</strong></td>
            <td class="style6">
                <strong>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style6"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <strong>CONFIRM PASSWORD:-</strong></td>
            <td class="style6">
                <strong>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style6"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="MISMATCH" ControlToCompare="TextBox4" 
                    ControlToValidate="TextBox5" ForeColor="#FF3300"></asp:CompareValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style12" 
                    onclick="Button1_Click" Text="SUBMIT" />
                </strong></td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
    </form>
   
</body>
</html>
