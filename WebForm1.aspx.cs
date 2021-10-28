using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EjemploMensajeToastrJS
{
    public enum TipoMensajeToast { success, warning, error, info }
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void ASPxButton_Success_Click(object sender, EventArgs e)
        {
            MostrarMensajeToast("Los datos se ....", TipoMensajeToast.success.ToString());
        }

        protected void ASPxButton_warning_Click(object sender, EventArgs e)
        {
            MostrarMensajeToast("Los datos se ....", TipoMensajeToast.warning.ToString());
        }

        protected void ASPxButton_error_Click(object sender, EventArgs e)
        {
            MostrarMensajeToast("Los datos se ....", TipoMensajeToast.error.ToString());
        }

        protected void ASPxButton_info_Click(object sender, EventArgs e)
        {
            MostrarMensajeToast("Los datos se ....", TipoMensajeToast.info.ToString());
        }

        public void Ejecutar_JavaScript(Page Pagina, Type Tipe, string KeyInstanceName, string Funcion)
        {
            ScriptManager.RegisterStartupScript(Pagina, Tipe, KeyInstanceName, "<script>" + Funcion + ";</script>", false);
        }

        public void MostrarMensajeToast(string Mensaje, String Tipomensaje)
        {

            Ejecutar_JavaScript(Page, GetType(), "", "MostrarMensajeToastr('" + Mensaje + "','" + Tipomensaje + "');");

        }

    }
}