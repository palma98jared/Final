<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/AdministradorMaster.Master" AutoEventWireup="true" CodeBehind="AgregarGenero.aspx.cs" Inherits="ProyectoFinal.GUI.AgregarGenero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<div class="col-md-6">
                   <div class="card border-dark mb-3 CardRegistro" style="max-width: 40rem;">
					<div class="card-header">Registro de generos</div>
					<div class="card-body text-dark">
					<h5 class="card-title">Ingrese los datos</h5>
					<p class="card-text">
						<asp:TextBox ID="txt_IdAdmin" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>

						<asp:Label ID="lbl_NombreGenero" runat="server" Text="Nombre De Usuario:"></asp:Label>
						<asp:TextBox ID="txt_NombreGenero" runat="server" CssClass="form-control" Modify="Public"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El genero no puede estar vacío" ControlToValidate="txt_NombreGenero" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
      
						<br />
	</p>
	   <%-- ESTE BUSCA ERRORES Y HACE UN LISTADO DE ELLOS --%>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" HeaderText="Se han encontrados los siguientes errores"/>
      <br />
      <br />
       <asp:Button ID="btn_RegistrarGenero"  runat="server" Text="Registrar" CssClass="btn btn-warning" OnClick="btn_RegistrarGenero_Click" />
  </div>
        
            </div>
		<div class="col-md-3">
            <asp:GridView ID="dgv_Genero" runat="server" CssClass="table table-hover" Width="50px"  OnSelectedIndexChanged="Page_Load" OnRowDataBound="dgv_Genero_RowDataBound"></asp:GridView>
        </div>  
        </div>
</asp:Content>
