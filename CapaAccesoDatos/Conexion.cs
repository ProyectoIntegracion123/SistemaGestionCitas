using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CapaAccesoDatos
{
   public class Conexion
    {
        #region "PATRON SINGLETON"
        private static Conexion conexion = null;
        private Conexion() { }
        public static Conexion getInstance()
        {
            if(conexion==null)
            {
                conexion = new Conexion();
            }
            return conexion;
        }
        #endregion
        
        public SqlConnection ConexionDB()
        {
            SqlConnection conexion = new SqlConnection();
            conexion.ConnectionString = @"Data Source=.\SQLExpress; Initial Catalog=DBClinica;Integrated Security=true";
            return conexion;
        }
    
    }
}
