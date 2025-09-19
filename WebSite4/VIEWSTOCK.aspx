<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VIEWSTOCK.aspx.cs" Inherits="VIEWSTOCK" %>

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
            text-decoration: underline;
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
            text-align: center;
            height: 47px;
            font-size: xx-large;
            font-family: Arial;
            color: #FF5050;
        }
        .style10
        {
            text-align: right;
            height: 47px;
            font-size: xx-large;
            font-family: Arial;
            text-decoration: underline;
            color: #FF5050;
        }
        .style7
        {
            font-size: large;
            text-decoration: none;
        }
        .style11
        {
            text-decoration: none;
        }
        .style12
        {
            width: 100%;
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
&nbsp;<table bgcolor="#FFFF66" class="style12">
            <tr>
                <td class="style8">
                    <span class="style6"><strong>Hi,&nbsp; </strong>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style9" bgcolor="White">
                    <strong>VIEW STOCK</strong></td>
            </tr>
            <tr>
                <td class="style10" bgcolor="White">
                <strong>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style7" 
                    NavigateUrl="~/AFTER LOGIN.aspx">BACK</asp:HyperLink>
                </strong>
                </td>
            </tr>
        </table>
    </p>
    <table class="style5">
        <tr>
            <td>
    <table class="style1">
        <tr>
            <td class="style5">
                <strong>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="218px" 
                     
                    Width="1211px" DataKeyNames="stkid" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" CssClass="style11">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="stkid" HeaderText="STOCK-ID" />
                        <asp:BoundField DataField="stknamee" HeaderText="STOCK-NAME" />
                        <asp:BoundField DataField="stkprice" HeaderText="STOCK-PRICE" />
                        <asp:BoundField DataField="stkquantity" HeaderText="STOCK-QUANTITY" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                </strong>
            </td>
        </tr>
        </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    </form>
    
</body>
</html>
