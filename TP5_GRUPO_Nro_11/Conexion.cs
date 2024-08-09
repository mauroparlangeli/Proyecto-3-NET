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
    public class Conexion
    {
        private String ruta = "Data Source = localhost\\sqlexpress;Initial Catalog = BDSucursales;Integrated Security = True";

        public void cargarProvincias(DropDownList ddlProvincias)
        {

            DataSet ds = new DataSet();
            SqlConnection conexion = new SqlConnection(ruta);
            conexion.Open();
            SqlDataAdapter adap = new SqlDataAdapter("SELECT DescripcionProvincia FROM Provincia",conexion);
            adap.Fill(ds, "Provincia");

            foreach(DataRow dr in ds.Tables["Provincia"].Rows)
            {
                ddlProvincias.Items.Add(dr ["DescripcionProvincia"].ToString());
            }
            conexion.Close();
     
        }
        public int ejecutarTransaccion(string consulta)
        {
            SqlConnection conexion = new SqlConnection(ruta);
            conexion.Open();
            SqlCommand comando = new SqlCommand(consulta, conexion);
            int filasAfectadas = comando.ExecuteNonQuery();
            conexion.Close();
            return filasAfectadas;
        }

        public SqlDataReader consultaDataReader(string consulta)
        {
            SqlConnection conexion = new SqlConnection(ruta);
            conexion.Open();
            SqlCommand comando = new SqlCommand(consulta, conexion);
            SqlDataReader dr = comando.ExecuteReader();
            return dr;
        }
    }
}