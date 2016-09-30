<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Tablas_Hardware.aspx.vb" Inherits="Tablas_Hardware" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #33CCCC;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 654px;
        }
        .auto-style5 {
            height: 26px;
            width: 654px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <h1 class="auto-style2">Manufactura Hardware</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Products" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Sales" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                            <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/Tarea2_distribuidora_hardware.accdb" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [ProductDescription], [Quantity], [Category], [ProductPrice]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductDescription] = ?, [Quantity] = ?, [Category] = ?, [ProductPrice] = ? WHERE [ProductID] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="ProductID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductID" Type="Int32" />
                            <asp:Parameter Name="ProductDescription" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="Category" Type="String" />
                            <asp:Parameter Name="ProductPrice" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProductDescription" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="Category" Type="String" />
                            <asp:Parameter Name="ProductPrice" Type="Int32" />
                            <asp:Parameter Name="ProductID" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="AccessDataSource1">
                        <Fields>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                            <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <PagerSettings Mode="NextPrevious" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SaleDate" DataSourceID="AccessDataSource3">
                        <Columns>
                            <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" ReadOnly="True" SortExpression="SaleDate" />
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                            <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/Tarea2_distribuidora_hardware.accdb" DeleteCommand="DELETE FROM [Sales] WHERE (([SaleDate] = ?) OR ([SaleDate] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Sales] ([SaleDate], [ProductID], [EmployeeId], [ClientID], [InvoiceID]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Sales]" UpdateCommand="UPDATE [Sales] SET [ProductID] = ?, [EmployeeId] = ?, [ClientID] = ?, [InvoiceID] = ? WHERE (([SaleDate] = ?) OR ([SaleDate] IS NULL AND ? IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="SaleDate" Type="DateTime" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="SaleDate" Type="DateTime" />
                            <asp:Parameter Name="ProductID" Type="Int32" />
                            <asp:Parameter Name="EmployeeId" Type="Int32" />
                            <asp:Parameter Name="ClientID" Type="Int32" />
                            <asp:Parameter Name="InvoiceID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProductID" Type="Int32" />
                            <asp:Parameter Name="EmployeeId" Type="Int32" />
                            <asp:Parameter Name="ClientID" Type="Int32" />
                            <asp:Parameter Name="InvoiceID" Type="Int32" />
                            <asp:Parameter Name="SaleDate" Type="DateTime" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="SaleDate" DataSourceID="AccessDataSource3">
                        <Fields>
                            <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" ReadOnly="True" SortExpression="SaleDate" />
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                            <asp:BoundField DataField="ClientID" HeaderText="ClientID" SortExpression="ClientID" />
                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <PagerSettings Mode="NextPrevious" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td style="text-align: right"><a href="descripcion_proy.aspx">Anterior</a></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
