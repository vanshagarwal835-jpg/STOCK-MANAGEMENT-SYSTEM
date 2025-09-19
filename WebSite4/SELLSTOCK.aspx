<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SELLSTOCK.aspx.cs" Inherits="SELLSTOCK" %>

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
        .style12
        {
            text-align: right;
        }
        .style17
        {
            font-size: xx-large;
        }
        .style18
        {
            width: 100%;
        }
        .style19
        {
            font-size: x-large;
            font-family: Arial;
        }
        .style20
        {
            font-size: x-large;
        }
        .style21
        {
            font-size: x-large;
            font-family: Arial;
            font-weight: bold;
        }
        .style22
        {
            font-size: x-large;
            text-align: right;
        }
        .style23
        {
            font-size: x-large;
            text-align: left;
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
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Height="249px" 
         Width="1028px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="stkname" HeaderText="STOCK NAME" />
            <asp:BoundField DataField="stkprice" HeaderText="STOCK PRICE" />
            <asp:BoundField DataField="stkquantity" HeaderText="STOCK QUANTITY" />
            <asp:BoundField DataField="totalprice" HeaderText="TOTAL PRICE" />
            <asp:BoundField DataField="trans" HeaderText="TRANSACTION ID" />
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
    <table class="style18">
        <tr>
            <td class="style19">
                <strong>USERID:-</strong></td>
            <td>
                <strong>
                <asp:Label ID="lbl_id" runat="server" CssClass="style19"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <strong>YOUR BALANCE:-</strong></td>
            <td>
                <strong>
                <asp:Label ID="lbl_balance" runat="server" CssClass="style19"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <strong>ENTER SHARE NAME:-</strong></td>
            <td>
                <strong>
                <asp:TextBox ID="txt_NAME" runat="server" CssClass="style19"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <strong>ENTER TRANSACTION ID:-</strong></td>
            <td>
                <asp:TextBox ID="txt_trans" runat="server" CssClass="style20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="style21" 
                    onclick="Button2_Click" Text="VIEW PRICE" />
                </strong>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                <strong>YOUR CURRENT SHARE PRICE:-</strong></td>
            <td>
                <strong>
                <asp:Label ID="lbl_CPRICE" runat="server" CssClass="style19"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style22">
                <strong>
                <asp:Button ID="Button3" runat="server" CssClass="style21" 
                    onclick="Button3_Click" Text="SELL" />
                </strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                <strong>YOUR BALANCE AFTER SELL:-</strong></td>
            <td>
                <strong>
                <asp:Label ID="lbl_Abalance" runat="server" CssClass="style19"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    
</body>
</html>
