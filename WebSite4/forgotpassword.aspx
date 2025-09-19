<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            font-family: Arial;
            text-decoration: underline;
            text-align: center;
        }
        .style1
        {
            width: 100%;
        }
        .style5
        {
            text-align: right;
        }
        .style7
        {
            font-size: large;
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
        .style4
        {
            height: 33px;
        }
        .style9
        {
            text-align: left;
        }
        .style6
        {
            text-align: center;
        }
        .style12
        {
            font-family: Arial;
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td bgcolor="#99FF33" class="style2" colspan="2">
                <strong>FORGOT PASSWORD&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="270px" 
                    ImageUrl="~/img/forgot pass.png" Width="375px" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style5">
                <strong>
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style7" 
                    NavigateUrl="~/LOGIN1.aspx">BACK</asp:HyperLink>
                </strong>
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
                <strong>DATE OF BIRTH:-</strong></td>
            <td class="style9">
                <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_dob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style12" 
                    onclick="Button1_Click" Text="SUBMIT" />
                </strong>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <strong><span class="style10">YOUR PASSWORD:-</span></strong></td>
            <td class="style9">
                <strong>
                <asp:Label ID="lbl_pass" runat="server" CssClass="style7"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    </form>
    
</body>
</html>
