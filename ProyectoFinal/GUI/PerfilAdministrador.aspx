<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/AdministradorMaster.Master" AutoEventWireup="true" CodeBehind="PerfilAdministrador.aspx.cs" Inherits="ProyectoFinal.GUI.PerfilAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<div class="col-md-9">
		<asp:Image style="text-align:center;" ID="foto_perfil" runat="server"/>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
    <asp:Label ID="lbl_NombreAdministrador" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="btnCerrarS" CssClass="btn btn-info" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarS_Click" />
	</div>
</asp:Content>
