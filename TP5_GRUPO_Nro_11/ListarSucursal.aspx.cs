using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5_GRUPO_Nro_11
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrdSucursales();
            }    
        }

        protected void lbListadoSucursales_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarSucursal.aspx");
        }

        protected void lbAgregarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarSucursal.aspx");
        }

        protected void lbEliminarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarSucursal.aspx");
        }

        private void CargarGrdSucursales()
        {
            Conexion conexion = new Conexion();
            SqlDataReader dr = conexion.consultaDataReader("Select Id_Sucursal, NombreSucursal as Nombre, DescripcionSucursal as Descripcion, Id_ProvinciaSucursal as Provincia, DireccionSucursal as Direccion from sucursal");
            grdSucursales.DataSource = dr;
            grdSucursales.DataBind();
        }

        protected void BtnFiltrar_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();
            SqlDataReader dr = conexion.consultaDataReader("Select Id_Sucursal, NombreSucursal, Id_HorarioSucursal, Id_ProvinciaSucursal, DireccionSucursal from sucursal Where Id_Sucursal = "+txtBuscarId.Text+"");
            grdSucursales.DataSource = dr;
            grdSucursales.DataBind();
            txtBuscarId.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            CargarGrdSucursales();
        }
    }
}