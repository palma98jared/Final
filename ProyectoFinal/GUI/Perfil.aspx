<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="ProyectoFinal.GUI.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row">
	<div class="col-md-3">
		<aside>
			<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
			<br />
			<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
		</aside>
	</div>
	<div class="col-md-9">
		<asp:Image style="text-align:center;" ID="foto_perfil" runat="server"/>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label><br />
    <asp:Label ID="lbl_nombre" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="btnCerrarS" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarS_Click" />
	</div>
	
		</div>
</asp:Content>
