<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ADMINVIEWUSER.aspx.cs" Inherits="ADMINVIEWUSER" %>

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
        .style9
        {
            font-family: Arial;
            font-size: xx-large;
            text-align: center;
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
    <table bgcolor="#FFFF66" class="style5">
            <tr>
                <td class="style8">
                    <span class="style6"><strong>Hi,&nbsp; ADMIN</strong></span></td>
            </tr>
        </table>
    <table class="style5">
        <tr>
            <td class="style9">
                <strong>VIEW USER</strong></td>
        </tr>
    </table>
    <p class="style4">
                <asp:Image ID="Image1" runat="server" Height="270px" 
                    ImageUrl="~/img/user_view.jpg" Width="375px" />
            </p>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="userid" ForeColor="#333333" GridLines="None" 
            onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="USER-ID" />
                <asp:BoundField DataField="email" HeaderText="EMAIL" />
                <asp:BoundField DataField="namee" HeaderText="NAME" />
                <asp:BoundField DataField="pass" HeaderText="PASSWORD" />
                <asp:BoundField DataField="dob" HeaderText="DATEOFBIRTH" />
                <asp:BoundField DataField="mobile" HeaderText="MOBILE" />
                <asp:BoundField DataField="city" HeaderText="CITY" />
                <asp:BoundField DataField="pincode" HeaderText="PINCODE" />
                <asp:BoundField DataField="addres" HeaderText="ADDRESS" />
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
    </div>
    </form>
    
</body>
</html>
