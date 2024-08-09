<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_Nro_11.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 228px;
        }
        .auto-style4 {
            width: 175px;
        }
        .auto-style5 {
            width: 175px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 175px;
            height: 58px;
        }
        .auto-style8 {
            height: 58px;
        }
        .auto-style9 {
            width: 175px;
            height: 30px;
        }
        .auto-style10 {
            height: 30px;
        }
        .auto-style11 {
            width: 236px;
        }
        .auto-style12 {
            width: 247px;
        }
        .auto-style13 {
            width: 175px;
            height: 22px;
        }
        .auto-style14 {
            height: 22px;
        }
        .auto-style15 {
            width: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbAgregarSucursal" runat="server" OnClick="lbAgregarSucursal_Click">Agregar Sucursales</asp:LinkButton>
                </td>
                <td class="auto-style12">
                    <asp:LinkButton ID="lbListarSucursal" runat="server" OnClick="lbListarSucursal_Click">Listado de Sucursales</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3">
                    <asp:LinkButton ID="lbEliminarSucursal" runat="server" OnClick="lbEliminarSucursal_Click">Eliminar Sucursal</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblGrupo" runat="server" Text="GRUPO N° 11" Font-Bold="True" Font-Size="20pt"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblAgregarSucursal" runat="server" Text="Agregar Sucursal" Font-Bold="True" Font-Size="15pt"></asp:Label>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="LblNombreSucursal" runat="server" Text="Nombre Sucursal"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtNombreSucursal" runat="server" Width="250px" ValidationGroup="AgregarSucursal"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RfvNombreSucursal" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtNombreSucursal" ValidationGroup="AgregarSucursal">* Este campo no debe estar vacio</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="LblDescripcion" runat="server" Text="Descripción"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TxtDescrición" runat="server" Height="44px" Width="250px" ValidationGroup="AgregarSucursal"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RfvDescripcion" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtDescrición" ValidationGroup="AgregarSucursal">* Este campo no debe estar vacio</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbProvincia" runat="server" Text="Provincia:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlProvincias" runat="server" ValidationGroup="AgregarSucursal">
                    </asp:DropDownList>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lbDireccion" runat="server" Text="Direccion:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDireccion" runat="server" Width="250px" ValidationGroup="AgregarSucursal"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="Rfv" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDireccion" ValidationGroup="AgregarSucursal">* Este campo no debe estar vacio</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" ValidationGroup="AgregarSucursal" OnClick="BtnAceptar_Click" />
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblSucursalAgregada" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
