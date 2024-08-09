using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5_GRUPO_Nro_11
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbAgregarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarSucursal.aspx");
        }

        protected void lbListadoSucursales_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarSucursal.aspx");
        }

        protected void lbEliminarSucursal_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarSucursal.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            eliminarSucursal();
        }

        public void eliminarSucursal()
        {
            Conexion conexion = new Conexion();
            string consulta = "delete from Sucursal where Id_Sucursal =" + txtEliminarID.Text;
            int filas = conexion.ejecutarTransaccion(consulta);
            txtEliminarID.Text = "";

            if (filas != 0)
            {
                lblEliminado.Text = "Sucursal se ha eliminado con exito";
            }
            else
            {
                lblEliminado.Text = " ID Sucursal ingresado no existe";
            }

        }
    }
}