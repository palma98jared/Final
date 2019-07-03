<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="AgregarAdministrador.aspx.cs" Inherits="ProyectoFinal.GUI.AgregarAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<div class="row">
        <div class="col-md-3">            
		</div>
        <div class="col-md-6">
                   <div class="card border-dark mb-3 CardRegistro" style="max-width: 40rem;">
					<div class="card-header">Registro de Administrador</div>
					<div class="card-body text-dark">
					<h5 class="card-title">Ingrese sus datos</h5>
					<p class="card-text">
						<asp:TextBox ID="txt_IdAdmin" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>

						<asp:Label ID="lbl_NombreAdmin" runat="server" Text="Nombre De Usuario:"></asp:Label>
						<asp:TextBox ID="txt_NombreAdmin" runat="server" CssClass="form-control" Modify="Public"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El Nombre de administrador no puede estar vacío" ControlToValidate="txt_NombreAdmin" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
      
						 <br />
						 <asp:Label ID="lbl_ContraseñaAdmin" runat="server" Text="Contraseña:"></asp:Label>
						 <asp:TextBox ID="txt_ContraseñaAdmin" runat="server" CssClass="form-control" type="password"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="La contraseña no puede estar vacío" ControlToValidate="txt_ContraseñaAdmin" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>

						<br />
	</p>
	   <%-- ESTE BUSCA ERRORES Y HACE UN LISTADO DE ELLOS --%>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" HeaderText="Se han encontrados los siguientes errores"/>
      <br />
      <br />
       <asp:Button ID="btn_RegistrarAdmin"  runat="server" Text="Registrar" CssClass="btn btn-warning" OnClick="btn_RegistrarAdmin_Click" />
  </div>
        
            </div>
		<div class="col-md-3">
            <asp:GridView ID="dgv_admin" runat="server" CssClass="table table-hover" Width="50px"  OnSelectedIndexChanged="Page_Load" OnRowDataBound="dgv_admin_RowDataBound"></asp:GridView>
        </div>  
        </div>
		</div>
</asp:Content>
