<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NEWUSER1.aspx.cs" Inherits="NEWUSER1" %>

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
            text-align: center;
        }
        .style3
        {
            font-family: Arial;
            font-size: large;
        }
        .style4
        {
            font-family: Arial;
            font-size: large;
            text-align: right;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: right;
        }
        .style7
        {
            font-size: x-large;
        }
        .style8
        {
            font-size: small;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <table class="style1">
        <tr>
            <td bgcolor="#FF6699" class="style2">
                <strong>REGISTER AS A NEW USER</strong></td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                <strong>
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style7" 
                    NavigateUrl="~/MAINHOME.aspx">BACK</asp:HyperLink>
                </strong></td>
        </tr>
        <tr>
            <td class="style3">
                <strong>USERID:-</strong></td>
            <td>
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txt_id" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>FULL NAME:-</strong></td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>EMAIL:-</strong></td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <span class="style2">
                <strong>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txt_email" ErrorMessage="INCORRECT EMAIL" 
            ForeColor="#FF3300" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    CssClass="style8"></asp:RegularExpressionValidator>
                </strong>
        </span>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>MOBILE NUMBER:-</strong></td>
            <td>
                <asp:TextBox ID="txt_mob" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txt_mob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>DATE OF BIRTH:-</strong></td>
            <td>
                <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txt_dob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>ADDRESS:-</strong></td>
            <td>
                <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txt_add" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>CITY:-</strong></td>
            <td>
                <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txt_city" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>PINCODE:-</strong></td>
            <td>
                <asp:TextBox ID="txt_pincode" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txt_pincode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>PHOTO UPLOAD:-</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>CREATE PASSWORD:-</strong></td>
            <td>
                <asp:TextBox ID="txt_npass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>CONFIRM PASSWORD:-</strong></td>
            <td>
                <asp:TextBox ID="txt_cpass" runat="server"></asp:TextBox>
                <strong>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="MISMATCH" ControlToCompare="txt_cpass" 
                    ControlToValidate="txt_npass" ForeColor="#FF3300"></asp:CompareValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <strong>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style7" 
                    onclick="LinkButton1_Click">SUBMIT</asp:LinkButton>
                </strong></td>
            <td class="style5">
                <strong>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style7" 
                    NavigateUrl="~/LOGIN1.aspx">LOGIN</asp:HyperLink>
                </strong></td>
        </tr>
    </table>
    
    </form>
    
</body>
</html>
