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
	public partial class Perfil : System.Web.UI.Page
	{
		Usuario_BO objbo = new Usuario_BO();
		Usuario_DAO objdao = new Usuario_DAO();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["Id"] == null)
			{
				Response.Redirect("AutorNuevo.aspx");
			}
			else
			{
				objbo.Id = Convert.ToInt32(Session["Id"]);
				objdao.busca_usuario(objbo);
				string ruta = "~/RESOURCES/fotos_usuarios/" + objbo.Id + objbo.Avatar;
				foto_perfil.ImageUrl = ruta;
				lbl_nombre.Text = objbo.NombreUsuario;
			}
		}

		protected void btnCerrarS_Click(object sender, EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("Login.aspx");
		}
	}
}