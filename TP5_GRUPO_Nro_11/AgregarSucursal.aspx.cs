using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace TP5_GRUPO_Nro_11
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarddlProvincias();
            }
        }

        protected void lbAgregarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarSucursal.aspx");
        }

        protected void lbListarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarSucursal.aspx");
        }

        protected void lbEliminarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarSucursal.aspx");
        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            int filas = conexion.ejecutarTransaccion($"INSERT INTO Sucursal(NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES('{TxtNombreSucursal.Text}','{TxtDescrición.Text}','{ddlProvincias.SelectedValue}','{txtDireccion.Text}')");    
            if (filas != 0)
            {
                lblSucursalAgregada.Text = "La sucursal se ha agregado con éxito";
            }
            else
            {
                lblSucursalAgregada.Text = "La sucursal no se ha podido agregar a la base de datos";
            }

            limpiarCampos();
        }


        private void CargarddlProvincias()
        {
            SqlDataReader dr = conexion.consultaDataReader("select * from provincia");
            ddlProvincias.DataSource = dr;
            ddlProvincias.DataTextField = "DescripcionProvincia";
            ddlProvincias.DataValueField = "Id_Provincia";
            ddlProvincias.DataBind();
        }

        public void limpiarCampos()
        {
            TxtNombreSucursal.Text = "";
            TxtDescrición.Text = "";
            txtDireccion.Text = "";
            ddlProvincias.SelectedIndex = 0;
        }
    }
}