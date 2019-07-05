using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.BO;
using ProyectoFinal.DAO;
using System.IO;

namespace ProyectoFinal.GUI
{
	public partial class AgregarAdministrador : System.Web.UI.Page
	{

		Administrador_BO objadminbo = new Administrador_BO();
		Administrador_DAO objadmindao = new Administrador_DAO();

		protected void Page_Load(object sender, EventArgs e)
		{
			dgv_admin.DataSource = objadmindao.buscar_Administrador(objadminbo);
			dgv_admin.DataBind();
		}

		protected void llenarbo()
		{
			objadminbo.NombreAdministrador = txt_NombreAdmin.Text;
			objadminbo.ContraseñaAdministrador = txt_ContraseñaAdmin.Text;

		}

		public void LimpiarControles()
		{
			txt_NombreAdmin.Text = "";
			txt_ContraseñaAdmin.Text = "";
		}

		protected void seleccionar_registro(object sender, EventArgs e)
		{
			txt_IdAdmin.Text = dgv_admin.SelectedRow.Cells[0].Text;
			txt_NombreAdmin.Text = dgv_admin.SelectedRow.Cells[1].Text;
			txt_ContraseñaAdmin.Text = dgv_admin.SelectedRow.Cells[2].Text;
		}

			protected void btn_RegistrarAdmin_Click(object sender, EventArgs e)
		{
			llenarbo();
			objadminbo.IdAdmnistrador = objadmindao.agregarAdministrador(objadminbo);
			dgv_admin.DataSource = objadmindao.buscar_Administrador(objadminbo);
			dgv_admin.DataBind(); //el bind es para mostrar datos en el dgv
		}

		protected void dgv_admin_RowDataBound(object sender, GridViewRowEventArgs e)
		{
			if (e.Row.RowType == DataControlRowType.DataRow)
			{
				e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(dgv_admin, "Select$" + e.Row.RowIndex);
				e.Row.Attributes["style"] = "cursor:pointer";
			}
		}
	}
}