<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMINADDSTOCK.aspx.cs" Inherits="ADMINADDSTOCK" %>

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
            font-family: Arial;
            font-size: xx-large;
            text-decoration: underline;
            text-align: center;
        }
        .style3
        {
            font-family: Arial;
            font-size: x-large;
        }
        .style4
        {
            font-family: Arial;
            font-size: large;
            font-weight: bold;
            text-decoration: underline;
        }
        .style5
        {
            font-family: Arial;
            font-size: x-large;
            text-align: center;
        }
        .style6
        {
            text-align: right;
        }
        .style7
        {
            font-size: large;
        }
        </style>
</head>
<body bgcolor="#ffff99">
    
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                <strong>ADD STOCK</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style6">
                <strong>
                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="style7" 
                    NavigateUrl="~/ADMINAFTERLOGIN.aspx">BACK</asp:HyperLink>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>STOCK-ID:-</strong></td>
            <td>
                <asp:Label ID="lbl_id" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>STOCK-NAME:-</strong></td>
            <td class="style3">
                <strong></strong>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>STOCK-PRICE:-</strong></td>
            <td class="style3">
                <strong>
                <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>STOCK-QUANTITY:-</strong></td>
            <td class="style3">
                <strong>
                <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style4" Text="SUBMIT" 
                    onclick="Button1_Click" />
                <br />
                <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="261px" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                    onrowupdating="GridView1_RowUpdating" 
                    Width="830px" DataKeyNames="stkid">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="stkid" HeaderText="STOCK-ID" />
                        <asp:BoundField DataField="stknamee" HeaderText="STOCK-NAME" />
                        <asp:BoundField DataField="stkprice" HeaderText="STOCK-PRICE" />
                        <asp:BoundField DataField="stkquantity" HeaderText="STOCK-QUANTITY" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
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
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    
</body>
</html>
