<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_Nro_11.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lbAgregarSucursal" runat="server" OnClick="lbAgregarSucursal_Click">Agregar Sucursal</asp:LinkButton>
                </td>
                <td class="auto-style11">
                    &nbsp;<asp:LinkButton ID="lbListadoSucursales" runat="server" OnClick="lbListadoSucursales_Click">Listado de Sucursales</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lbEliminarSucursal" runat="server" OnClick="lbEliminarSucursal_Click">Eliminar Sucursal</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblEliminar" runat="server" Font-Bold="True" Font-Size="20pt" Text="Eliminar Sucursal"></asp:Label>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11"><asp:RequiredFieldValidator ID="rfvIngresarSucursal" runat="server" ControlToValidate="txtEliminarID" ErrorMessage="Debe ingresar una sucursal" ValidationGroup="GrupoEliminar"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Ingresar ID sucursal:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtEliminarID" runat="server" CssClass="auto-style7" Width="163px" ValidationGroup="GrupoEliminar"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                    <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" ValidationGroup="GrupoEliminar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="lblEliminarSucursal" runat="server"></asp:Label>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblEliminado" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
