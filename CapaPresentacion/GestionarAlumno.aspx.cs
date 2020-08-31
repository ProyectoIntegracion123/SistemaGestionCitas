using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaLogicaNegocio;

namespace CapaPresentacion
{
    public partial class GestionarAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private Alumno GetEntity()
        {
            Alumno objAlumno = new Alumno();
            objAlumno.idAlumno = 0;
            objAlumno.Nombres = txtNombres.Text;
            objAlumno.ApPaterno = txtApPaterno.Text;
            objAlumno.ApMaterno = txtApMaterno.Text;
            objAlumno.Edad = Convert.ToInt32(txtEdad.Text);
            objAlumno.Sexo = (ddlSexo.SelectedValue == "Femenino") ? 'F' : 'M';
            objAlumno.NroDocumento = txtNroDocumento.Text;
            objAlumno.Direccion = txtDireccion.Text;
            objAlumno.Telefono = txtTelefono.Text;
            objAlumno.Estado = true;

            return objAlumno;
        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            //Registro del alumno
            Alumno objAlumno = GetEntity();
            //Enviar a la capa Logica de Negocio
            bool response = AlumnoLN.getInstance().RegistrarAlumno(objAlumno);
            if (response == true)
            {
                Response.Write("<script>alert('REGISTRO CORRECTO.')</script>");
            }
            else
            {
                Response.Write("< script > alert('REGISTRO INCORRECTO.') </ script > ");
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PanelGeneral.aspx");
        }
    }
}