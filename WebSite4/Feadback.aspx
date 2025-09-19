<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feadback.aspx.cs" Inherits="Feadback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: center;
            color: #FF99CC;
        }
        .style2
        {
            font-size: xx-large;
            text-align: center;
            color: #660033;
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
</head>
<body bgcolor="#ff9966">
    
    <form id="form1" runat="server">
    <p class="style2">
        Give your feadback here-</p>
    <p class="style1">
        <asp:TextBox ID="TextBox1" runat="server" Height="111px" TextMode="MultiLine" 
            Width="632px"></asp:TextBox>
    </p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" Text="Submit" />
    </p>
    </form>
    
</body>
</html>
