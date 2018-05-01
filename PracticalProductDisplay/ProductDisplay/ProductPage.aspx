<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="ProductDisplay.ProductPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="Sheets/StyleSheet.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id ="wrapper">
        <div id ="lblhdr">
        <asp:Label ID="lblHeader" runat="server" Text="VEHICLE PRODUCTS" Font-Bold="True"></asp:Label>
        </div>
        <br />
        <br />
        <div id ="box">
        <asp:DropDownList ID="ddProductLine" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddProductLine_SelectedIndexChanged">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Motorcycles</asp:ListItem>
            <asp:ListItem>Planes</asp:ListItem>
            <asp:ListItem>Ships</asp:ListItem>
            <asp:ListItem>Trains</asp:ListItem>
            <asp:ListItem>Trucks and Buses</asp:ListItem>
            <asp:ListItem>Vintage Cars</asp:ListItem>
            <asp:ListItem>Classic Cars</asp:ListItem>
        </asp:DropDownList>
            </div>
        <br />
        <br />
        <asp:GridView ID="grdProducts" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" style="margin-left: 0px" BackColor="#FF99FF" BorderColor="#FF99FF">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="productCode" HeaderText="Product Code" />
                <asp:BoundField DataField="productName" HeaderText="Product Name" />
                <asp:BoundField DataField="productLine" HeaderText="Product Line" />
                <asp:BoundField DataField="productVendor" HeaderText="Vendor" />
                <asp:BoundField DataField="quantityInStock" HeaderText="Quantity in Stock" />
                <asp:BoundField DataField="buyPrice" HeaderText="Price" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#FF9999" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
        <br />
        <br />
          <div id ="box2">
        <asp:TextBox ID="txtStat" runat="server" Enabled="False" Font-Size="Larger" TextMode="MultiLine" Width="159px"></asp:TextBox>
           </div>
    </div>
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
