<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master"  AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="ProyectoFinal.GUI.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<div class="row">
	<div class="col-md-3">
		<aside>
			<nav class="list-group">
						<a href="#" class="list-group-item list-group-item-action disabled titulomenu">
							Menu
							</a>
							<a href="NewPost.aspx" class="list-group-item list-group-item-action">Agregar Historia</a>
							<a href="#" class="list-group-item list-group-item-action"></a>
							<a href="#" class="list-group-item list-group-item-action"></a>
							<a href="#" class="list-group-item list-group-item-action"></a>
							<a href="#" class="list-group-item list-group-item-action"></a>
				</nav>
		</aside>
	</div>
	<div class="col-md-9">
		<asp:Image style="text-align:center;" ID="foto_perfil" runat="server"/>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:Label ID="lbl_nombre" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="btnCerrarS" CssClass="btn btn-info" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarS_Click" />
	</div>
	
		</div>
</asp:Content>
