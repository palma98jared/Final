using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;

namespace ProyectoFinal.BO
{
	public class Usuario_BO
	{
		private int id;
		private string nombreUsuario;
		private string nombre;
		private string apellidos;
		private string contrasena;
		private string correo;
		private string telefono;
		private string sitioWeb;
		private string municipio;
		private string biografia;
		private string avatar;

		public int Id { get => id; set => id = value; }
		public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
		public string Nombre { get => nombre; set => nombre = value; }
		public string Apellidos { get => apellidos; set => apellidos = value; }
		public string Contrasena { get => contrasena; set => contrasena = value; }
		public string Correo { get => correo; set => correo = value; }
		public string Telefono { get => telefono; set => telefono = value; }
		public string SitioWeb { get => sitioWeb; set => sitioWeb = value; }
		public string Municipio { get => municipio; set => municipio = value; }
		public string Biografia { get => biografia; set => biografia = value; }
		public string Avatar { get => avatar; set => avatar = value; }

		public Image RedimencionarImagen(Image Imgoriginal, int Altoimg)
		{
			var Radio = (double)Altoimg / Imgoriginal.Height;//diferencia entre la imagenes
			var NuevoAncho = (int)(Imgoriginal.Width * Radio);
			var NuevoAlto = (int)(Imgoriginal.Height * Radio);
			var ImagenRedimencionada = new Bitmap(NuevoAncho, NuevoAlto);
			//creo archivo apartir del bitmap con las nuevas dimensiones
			var g = Graphics.FromImage(ImagenRedimencionada);
			g.DrawImage(Imgoriginal, 0, 0, NuevoAncho, NuevoAlto);
			return ImagenRedimencionada;
		}
	}
}