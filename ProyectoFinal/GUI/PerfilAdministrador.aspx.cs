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
	public partial class PerfilAdministrador : System.Web.UI.Page
	{

		Administrador_BO objbo = new Administrador_BO();
		Administrador_DAO objdao = new Administrador_DAO();

		protected void Page_Load(object sender, EventArgs e)
		{
			objbo.IdAdmnistrador = Convert.ToInt32(Session["Id"]);
			objdao.busca_Administrador(objbo);
			//string ruta = "~/RESOURCES/fotos_usuarios/" + objbo.Id + objbo.Avatar;
			//foto_perfil.ImageUrl = ruta;
			lbl_NombreAdministrador.Text = objbo.NombreAdministrador;
		}

		protected void btnCerrarS_Click(object sender, EventArgs e)
		{
			Session.Abandon();
			Response.Redirect("Login.aspx");
		}
	}
}