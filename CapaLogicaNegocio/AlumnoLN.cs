using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaAccesoDatos;
using CapaEntidades;
namespace CapaLogicaNegocio
{
    public class AlumnoLN
    {
        #region "PATRON SINGLETON"
        private static AlumnoLN objAlumno = null;
        private AlumnoLN() { }
        public static AlumnoLN getInstance()
        {
            if (objAlumno == null)
            {
                objAlumno = new AlumnoLN();
            }
            return objAlumno;
        }
        #endregion

        public bool RegistrarAlumno(Alumno objAlumno)
        {
            try
            {
                return AlumnoDAO.getInstance().RegistrarAlumno(objAlumno);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Alumno> listarAlumnos()
        {
            try
            {
                return AlumnoDAO.getInstance().listarAlumnos();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
