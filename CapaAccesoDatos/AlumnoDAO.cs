using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;
using System.Data.SqlClient;

namespace CapaAccesoDatos
{
    public class AlumnoDAO
    {
        #region "PATRON SINGLETON"
        private static AlumnoDAO daoAlumno = null;
        private AlumnoDAO() { }
        public static AlumnoDAO getInstance()
        {
            if (daoAlumno == null)
            {
                daoAlumno = new AlumnoDAO();
            }
            return daoAlumno;
        }
        #endregion

        public bool RegistrarAlumno(Alumno objAlumno)
        {


            SqlConnection con = null;
            SqlCommand cmd = null;
            bool response = false;
            try
            {
                con = Conexion.getInstance().ConexionDB();
                cmd = new SqlCommand("spRegistrarAlumno", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmNombres", objAlumno.Nombres);
                cmd.Parameters.AddWithValue("@prmApPaterno", objAlumno.ApPaterno);
                cmd.Parameters.AddWithValue("@prmApMaterno", objAlumno.ApMaterno);
                cmd.Parameters.AddWithValue("@prmEdad", objAlumno.Edad);
                cmd.Parameters.AddWithValue("@prmSexo", objAlumno.Sexo);
                cmd.Parameters.AddWithValue("@prmNroDoc", objAlumno.NroDocumento);
                cmd.Parameters.AddWithValue("@prmDireccion", objAlumno.Direccion);
                cmd.Parameters.AddWithValue("@prmTelefono", objAlumno.Telefono);
                cmd.Parameters.AddWithValue("@prmEstado", objAlumno.Estado);
                con.Open();

                int filas = cmd.ExecuteNonQuery();
                if (filas > 0) response = true;
            }
            catch (Exception ex)
            {
                response = false;
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return response;
        }

        public List<Alumno> listarAlumnos()
        {
            List<Alumno> Lista = new List<Alumno>();
            SqlConnection con = null;
            SqlCommand cmd = null;
            SqlDataReader dr = null;

            try
            {
                con = Conexion.getInstance().ConexionDB();
                cmd = new SqlCommand("spListarAlumnos", con);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    //Crear objetos de tipo Alumno
                    Alumno objAlumno = new Alumno();
                    objAlumno.idAlumno = Convert.ToInt32(dr["idAlumno"].ToString());
                    objAlumno.Nombres = dr["nombre"].ToString();
                    objAlumno.ApPaterno = dr["apPaterno"].ToString();
                    objAlumno.ApMaterno = dr["apMaterno"].ToString();
                    objAlumno.Edad = Convert.ToInt32(dr["edad"].ToString());
                    objAlumno.Sexo = Convert.ToChar(dr["sexo"].ToString());
                    objAlumno.NroDocumento = dr["nroDocumento"].ToString();
                    objAlumno.Direccion = dr["direccion"].ToString();
                    objAlumno.Estado = true;

                    //añadir a la lista de objetos
                    Lista.Add(objAlumno);
                }

                /*    using(SqlDataReader dr1 = cmd.ExecuteReader())
                     {
                         Alumno objAlumno = new Alumno();
                         objAlumno.idAlumno = Convert.ToInt32(dr["idAlumno"].ToString());
                         objAlumno.Nombres = dr["nombre"].ToString();
                         objAlumno.ApPaterno = dr["apPaterno"].ToString();
                         objAlumno.ApMaterno = dr["apMaterno"].ToString();
                         objAlumno.Edad = Convert.ToInt32(dr["edad"].ToString());
                         objAlumno.Sexo = Convert.ToChar(dr["sexo"].ToString());
                         objAlumno.NroDocumento = dr["nroDocumento"].ToString();
                         objAlumno.Direccion = dr["direccion"].ToString();
                         objAlumno.Estado = true;
                     } */
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return Lista;
        }
    }
}
