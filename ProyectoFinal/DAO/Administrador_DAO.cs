using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using ProyectoFinal.BO;

namespace ProyectoFinal.DAO
{
	public class Administrador_DAO
	{
		Conexion objConectar = new Conexion();

		public DataSet buscar_Administrador(Administrador_BO objbo)
		{
			DataSet datos = objConectar.EjecutarSentencia("select * from UsuarioAdministrador");
			return datos;
		}

		public int agregarAdministrador(Administrador_BO objAdministrador)
		{
			//inserta y devuelve el ultimo el id insertado
			int id = objConectar.EjecutarComando("INSERT INTO UsuarioAdministrador (NombreAdministrador, ContraseñaAdministrador) output INSERTED.Id values('" + objAdministrador.NombreAdministrador + "','" + objAdministrador.ContraseñaAdministrador + "')");
			return id;

		}

		public int ModificarAdministrador(Administrador_BO objAdministrador)
		{
			int id = objConectar.EjecutarComando(string.Format("update UsuarioAdministrador set NombreAdministrador = '{0}', ContraseñaAdministrador = '{1}' ", objAdministrador.NombreAdministrador, objAdministrador.ContraseñaAdministrador));
			return 1;
		}


		public int eliminarAdministrador(Administrador_BO objAdministrador)
		{
			int id = objConectar.EjecutarComando(string.Format("delete from UsuarioAdministrador where Id={0}", objAdministrador.IdAdmnistrador));
			return 1;
		}

		public int verificar_login(Administrador_BO objAdministrador)
		{
			DataSet datos = objConectar.EjecutarSentencia("select Id from UsuarioAdministrador where NombreAdministrador ='" + objAdministrador.NombreAdministrador + "' and ContraseñaAdministrador ='" + objAdministrador.ContraseñaAdministrador + "'");
			int idAdmin = 0;
			if (datos.Tables[0].Rows.Count > 0)
			{
				idAdmin = Convert.ToInt32(datos.Tables[0].Rows[0]["Id"]);
			}
			return idAdmin;
		}

		public void busca_Administrador(Administrador_BO objAdministrador)
		{
			DataSet datos = objConectar.EjecutarSentencia("select * from UsuarioAdministrador where id=" + objAdministrador.IdAdmnistrador);
			objAdministrador.NombreAdministrador = datos.Tables[0].Rows[0]["NombreAdministrador"].ToString();
			objAdministrador.ContraseñaAdministrador = datos.Tables[0].Rows[0]["ContraseñaAdministrador"].ToString();
		}
	}
}