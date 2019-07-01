using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinal.BO
{
	public class Administrador_BO
	{
		private int idAdmnistrador;
		private string nombreAdministrador;
		private string contraseñaAdministrador;

		public int IdAdmnistrador { get => idAdmnistrador; set => idAdmnistrador = value; }
		public string NombreAdministrador { get => nombreAdministrador; set => nombreAdministrador = value; }
		public string ContraseñaAdministrador { get => contraseñaAdministrador; set => contraseñaAdministrador = value; }
	}
}