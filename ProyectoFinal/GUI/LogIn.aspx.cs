using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.BO;
using ProyectoFinal.DAO;
using System.Data;

namespace ProyectoFinal.GUI
{
    public partial class LogIn : System.Web.UI.Page
    {

		Usuario_BO objboLogin = new Usuario_BO();
		Usuario_DAO objdaoLogin = new Usuario_DAO();
		Administrador_BO objadminLoginbo = new Administrador_BO();
		Administrador_DAO objadminLogindao = new Administrador_DAO();
		protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void btn_Iniciar_Click(object sender, EventArgs e)
		{
			int id;
			int IdAdmin;
			objboLogin.NombreUsuario = txtUserLogin.Text;
			objboLogin.Contrasena = txtPassLogin.Text;
			objadminLoginbo.NombreAdministrador = txtUserLogin.Text;
			objadminLoginbo.ContraseñaAdministrador = txtPassLogin.Text;

			id = objdaoLogin.verificar_login(objboLogin);
			IdAdmin = objadminLogindao.verificar_login(objadminLoginbo);
			if (id != 0)
			{
				Session["Id"] = id;
				Response.Redirect("../GUI/Perfil.aspx");
			}
			else
			{
				if (IdAdmin != 0)
				{
					Session["Id"] = IdAdmin;
					Response.Redirect("../GUI/PerfilAdministrador.aspx");
				}
			}
			
		}
	}
}