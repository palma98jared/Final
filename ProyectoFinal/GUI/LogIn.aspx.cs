using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.BO;
using ProyectoFinal.DAO;

namespace ProyectoFinal.GUI
{
    public partial class LogIn : System.Web.UI.Page
    {

		Usuario_BO objboLogin = new Usuario_BO();
		Usuario_DAO objdaoLogin = new Usuario_DAO();

		protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void btn_Iniciar_Click(object sender, EventArgs e)
		{
			int id;

			objboLogin.NombreUsuario = txtUserLogin.Text;
			objboLogin.Contrasena = txtPassLogin.Text;

			id = objdaoLogin.verificar_login(objboLogin);
			if (id != 0)
			{
				Session["Id"] = id;
				Response.Redirect("../GUI/index.aspx");
			}
		}
	}
}