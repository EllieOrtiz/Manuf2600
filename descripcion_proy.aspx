<%@ Page Language="VB" AutoEventWireup="false" CodeFile="descripcion_proy.aspx.vb" Inherits="descripcion_proy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #CC0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 style="color: #6600CC">Distribución Hardware</h1>
        <p style="color: #6600CC">
            <asp:TextBox ID="TextBox1" runat="server" Height="223px" ReadOnly="True" TextMode="MultiLine" Width="440px"></asp:TextBox>
        </p>
        <p style="color: #6600CC; margin-left: 40px">
            <asp:Button ID="Button1" runat="server" Text="Descripcion" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Borrar" />
        </p>
        <p style="color: #6600CC; margin-left: 40px">
            &nbsp;</p>
        <p class="auto-style1" style="margin-left: 40px">
            <a href="Tablas_Hardware.aspx">Siguiente</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style1" style="margin-left: 40px">
            <a href="http://www.w3schools.com/">Webpage</a></p>
    
    </div>
    </form>
</body>
</html>
