using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ProyectoFinal.BO;


namespace ProyectoFinal.DAO
{
	public class Usuario_DAO
	{
		Conexion objConectar = new Conexion();

		public DataSet buscar_usuarios(Usuario_BO objbo)
		{
			DataSet datos = objConectar.EjecutarSentencia("select * from UsuarioEscritor");
			return datos;
		}

		public int agregarusuario(Usuario_BO objusuario)
		{
			//inserta y devuelve el ultimo el id insertado
			int id = objConectar.EjecutarComando("INSERT INTO UsuarioEscritor (NombreUsuario,Nombre,Apellidos,Contraseña,Correo,Telefono,SitioWeb,Municipio,Avatar,Biografia) output INSERTED.Id values('" + objusuario.NombreUsuario + "','" + objusuario.Nombre + "','" + objusuario.Apellidos + "','" + objusuario.Contrasena + "','" + objusuario.Correo + "', '" + objusuario.Telefono + "', '" + objusuario.SitioWeb + "', '" + objusuario.Municipio + "', '" + objusuario.Avatar + "', '" + objusuario.Biografia + "')");
			return id;

		}

		public int ModificarUsuario(Usuario_BO objusuario)
		{
			int id = objConectar.EjecutarComando(string.Format("update UsuarioEscritor set NombreUsuario = '{0}', Nombre = '{1}', Apellidos = '{2}', Contraseña = '{3}', Correo = '{4}', Telefono = '{5}', SitioWeb = '{6}', Municipio = '{7}', Avatar = '{8}', Biografia = '{9}'", objusuario.NombreUsuario, objusuario.Nombre, objusuario.Apellidos, objusuario.Contrasena, objusuario.Correo, objusuario.Telefono, objusuario.SitioWeb, objusuario.Municipio, objusuario.Avatar, objusuario.Biografia));
			return 1;
		}


		public int eliminarusuario(Usuario_BO objusuario)
		{
			int id = objConectar.EjecutarComando(string.Format("delete from UsuarioEscritor where Id={0}", objusuario.Id));
			return 1;
		}

		public int verificar_login(Usuario_BO objusuario)
		{
			DataSet datos = objConectar.EjecutarSentencia("select Id from UsuarioEscritor where NombreUsuario ='" + objusuario.NombreUsuario + "' and Contraseña ='" + objusuario.Contrasena + "'");
			int id = 0;
			if (datos.Tables[0].Rows.Count > 0)
			{
				id = Convert.ToInt32(datos.Tables[0].Rows[0]["Id"]);
			}
			return id;
		}

		public void busca_usuario(Usuario_BO objbo)
		{
			DataSet datos = objConectar.EjecutarSentencia("select * from UsuarioEscritor where id=" + objbo.Id);
			objbo.NombreUsuario = datos.Tables[0].Rows[0]["NombreUsuario"].ToString();
			objbo.Nombre = datos.Tables[0].Rows[0]["Nombre"].ToString();
			objbo.Apellidos = datos.Tables[0].Rows[0]["Apellidos"].ToString();
			objbo.Contrasena = datos.Tables[0].Rows[0]["Contraseña"].ToString();
			objbo.Correo = datos.Tables[0].Rows[0]["Correo"].ToString();
			objbo.Telefono = datos.Tables[0].Rows[0]["Telefono"].ToString();
			objbo.SitioWeb = datos.Tables[0].Rows[0]["SitioWeb"].ToString();
			objbo.Municipio = datos.Tables[0].Rows[0]["Municipio"].ToString();
			objbo.Biografia = datos.Tables[0].Rows[0]["Biografia"].ToString();
			objbo.Avatar = datos.Tables[0].Rows[0]["Avatar"].ToString();
		}

	}
}
