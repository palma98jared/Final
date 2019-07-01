using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoFinal.BO;
using ProyectoFinal.DAO;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace ProyectoFinal.GUI
{
    public partial class AutorNuevo : System.Web.UI.Page
    {

		Usuario_BO objusuario = new Usuario_BO();
		Usuario_DAO objusudao = new Usuario_DAO();

		protected void Page_Load(object sender, EventArgs e)
        {
			dgv_usuarios.DataSource = objusudao.buscar_usuarios(objusuario);
			dgv_usuarios.DataBind();
		}

		protected void llenarbo()
		{
			objusuario.NombreUsuario = txt_NombreUsuario.Text;
			objusuario.Nombre = txt_Nombre.Text;
			objusuario.Apellidos = txt_Apellidos.Text;
			objusuario.Contrasena = txt_Pass.Text;
			objusuario.Correo = txt_Correo.Text;
			objusuario.Telefono = txt_Telefono.Text;
			objusuario.SitioWeb = txt_SitioWeb.Text;
			objusuario.Municipio = txt_Municipio.Text;
			objusuario.Biografia = txt_Biografia.Text;

		}

		public void LimpiarControles()
		{
			txt_NombreUsuario.Text = "";
			txt_Nombre.Text = "";
			txt_Apellidos.Text = "";
			txt_Pass.Attributes.Add("value", "");
			txt_Correo.Text = "";
			txt_Telefono.Text = "";
			txt_SitioWeb.Text = "";
			txt_Municipio.Text = "";
			txt_Biografia.Text = "";
			txt_ID.Text = "";
			txt_FotoUsuario.Text = "";

		}

		protected void seleccionar_registro(object sender, EventArgs e)
		{
			txt_ID.Text = dgv_usuarios.SelectedRow.Cells[0].Text;
			txt_NombreUsuario.Text = dgv_usuarios.SelectedRow.Cells[1].Text;
			txt_Nombre.Text = dgv_usuarios.SelectedRow.Cells[2].Text;
			txt_Apellidos.Text = dgv_usuarios.SelectedRow.Cells[3].Text;
			txt_Pass.Attributes.Add("value", dgv_usuarios.SelectedRow.Cells[4].Text);
			txt_Correo.Text = dgv_usuarios.SelectedRow.Cells[5].Text;
			txt_Telefono.Text = dgv_usuarios.SelectedRow.Cells[6].Text;
			txt_SitioWeb.Text = dgv_usuarios.SelectedRow.Cells[7].Text;
			txt_Municipio.Text = dgv_usuarios.SelectedRow.Cells[8].Text;

			txt_FotoUsuario.Text = "";
			if (dgv_usuarios.SelectedRow.Cells[4].Text.Trim() != "")
			{
				txt_FotoUsuario.Text = dgv_usuarios.SelectedRow.Cells[0].Text + dgv_usuarios.SelectedRow.Cells[9].Text;
			}

			txt_Biografia.Text = dgv_usuarios.SelectedRow.Cells[10].Text;
		}

		protected void btn_Registrar_Click(object sender, EventArgs e)
		{
			//llena el BO 
			llenarbo();

			//SI EXISTE ARCHIVO EN EL CONTROL
			if (fuPerfil.HasFile)
			{
				//validar extensiones aceptadas
				//OBTIENE LA EXTENSION DEL ARCHIVO
				String fileExtension = Path.GetExtension(fuPerfil.FileName).ToLower();

				//ARREGLO TIPO STRING DE EXTENSIONES.
				String[] Exten_validas = { ".png", ".jpeg", ".jpg" };
				for (int i = 0; i < Exten_validas.Length; i++)
				{
					//si la extensión es alguna de las válidas
					if (fileExtension == Exten_validas[i])
					{
						System.Drawing.Image ObjetoImagen;
						string NombreArchivoPequenio = "_" + Path.GetFileName(fuPerfil.PostedFile.FileName);

						objusuario.Avatar = NombreArchivoPequenio;
						//agrega a la base de datos
						objusuario.Id = objusudao.agregarusuario(objusuario);

						string RutaImagenes = "../RESOURCES/fotos_usuarios/";
						Bitmap ImagenEnBinario = new Bitmap(fuPerfil.PostedFile.InputStream);
						ObjetoImagen = objusuario.RedimencionarImagen(ImagenEnBinario, 100);
						switch (fileExtension)
						{
							case ".png":
								ObjetoImagen.Save(Server.MapPath(RutaImagenes) + objusuario.Id + NombreArchivoPequenio, ImageFormat.Png);

								break;
							case ".jpg":
								ObjetoImagen.Save(Server.MapPath(RutaImagenes) + objusuario.Id + NombreArchivoPequenio, ImageFormat.Jpeg);
								break;
							case ".jpeg":
								ObjetoImagen.Save(Server.MapPath(RutaImagenes) + objusuario.Id + NombreArchivoPequenio, ImageFormat.Jpeg);
								break;
						}


					}
				}

			}
			else
			{
				objusuario.Avatar = "";
				objusuario.Id = objusudao.agregarusuario(objusuario);
			}
			string scriptjs = @"<script type='text/javascript'>
                            $.alert({
    title: 'Alert!',
    content: 'Datos agregados correctamente!',
});
                        </script>";
			ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", scriptjs, false);
			LimpiarControles();


			dgv_usuarios.DataSource = objusudao.buscar_usuarios(objusuario);
			dgv_usuarios.DataBind(); //el bind es para mostrar datos en el dgv
		}

		protected void dgvUsuarios_RowDataBound(object sender, GridViewRowEventArgs e)
		{
			if (e.Row.RowType == DataControlRowType.DataRow)
			{
				e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(dgv_usuarios, "Select$" + e.Row.RowIndex);
				e.Row.Attributes["style"] = "cursor:pointer";
			}
		}
	}
}