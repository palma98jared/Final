using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoFinal.BO
{
	public class Genero_BO
	{
		private int idGenero;
		private string nombreGenero;
		private string descripicion;

		public int IdGenero { get => idGenero; set => idGenero = value; }
		public string NombreGenero { get => nombreGenero; set => nombreGenero = value; }
		public string Descripicion { get => descripicion; set => descripicion = value; }
	}
}