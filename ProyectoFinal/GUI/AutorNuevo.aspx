<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="AutorNuevo.aspx.cs" Inherits="ProyectoFinal.GUI.AutorNuevo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<div class="row">
<<<<<<< HEAD
        
        <div class="col-md-2">            
            <br />
            <br />
            <br />
            <div class="card" style="width: 12rem;">
                <img class="card-img-top" src="#" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Cras justo odio</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Vestibulum at eros</li>

                </ul>
                <div class="card-body">
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="row">
                <br />
                <br />
                <br />
                <div class="col-md-4">
                    <!--esto es para que no choque con el menu-->
                    <br />
                    <br />
                    <br />
                    
                    <img class="card-img-top" src="#" alt="Card image cap">


                </div>
                <div class="col-md-4"></div>
                   <div class="card border-dark mb-3" style="max-width: 18rem;">
=======
        <div class="col-md-3">            
		</div>
        <div class="col-md-6">
                   <div class="card border-dark mb-3 CardRegistro" style="max-width: 40rem;">
>>>>>>> f3513d6ee5d4efb65d3669b726528d372f4c82ea
					<div class="card-header">Registro</div>
					<div class="card-body text-dark">
					<h5 class="card-title">Ingrese sus datos</h5>
					<p class="card-text">
						<asp:TextBox ID="txt_ID" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
						<asp:TextBox ID="txt_FotoUsuario" runat="server" CssClass="form-control" Visible="false"></asp:TextBox> 

						<asp:Label ID="lbl_NombreUsuario" runat="server" Text="Nombre De Usuario:"></asp:Label>
						<asp:TextBox ID="txt_NombreUsuario" runat="server" CssClass="form-control" Modify="Public"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El Nombre de usuario no puede estar vacío" ControlToValidate="txt_NombreUsuario" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
      
						 <br />
						 <asp:Label ID="lbl_Nombre" runat="server" Text="Nombre:"></asp:Label>
						 <asp:TextBox ID="txt_Nombre" runat="server" CssClass="form-control"></asp:TextBox>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El nombre no puede estar vacío" ControlToValidate="txt_Nombre" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
      
						<br />
						<asp:Label ID="lbl_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
						<asp:TextBox ID="txt_Apellidos" runat="server" CssClass="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El apellido no puede estar vacío" ControlToValidate="txt_Apellidos" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
      
						<br />
						<asp:Label ID="lbl_Pass" runat="server" Text="Contraseña:"></asp:Label>
						<asp:TextBox ID="txt_Pass" runat="server" CssClass="form-control" Type="Password"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="La contraseña no puede estar vacío" ControlToValidate="txt_Pass" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
						
						<br />
						<asp:Label ID="lbl_Correo" runat="server" Text="Correo:"></asp:Label>
						<asp:TextBox ID="txt_Correo" runat="server" CssClass="form-control" placeholder="juan.perez@hotmail.com"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="El correo no puede estar vacío" ControlToValidate="txt_Correo" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" 
						SetFocusOnError="true" ValidationExpression="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" CssClass="alert alert-danger" ControlToValidate="txt_Correo"> </asp:RegularExpressionValidator>

						<br />
						<asp:Label ID="lbl_Telefono" runat="server" Text="Teléfono:"></asp:Label>
						<asp:TextBox ID="txt_Telefono" runat="server" CssClass="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="El telefono no puede estar vacío" ControlToValidate="txt_Telefono" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
						
						<br />
						<asp:Label ID="lbl_SitioWeb" runat="server" Text="Sitio Web:"></asp:Label>
						<asp:TextBox ID="txt_SitioWeb" runat="server" CssClass="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="El Sitio web no puede estar vacío" ControlToValidate="txt_SitioWeb" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
      
						<br />
						<asp:Label ID="lbl_Municipio" runat="server" Text="Municipio:"></asp:Label>
						<asp:TextBox ID="txt_Municipio" runat="server" CssClass="form-control"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="El municipio no puede estar vacío" ControlToValidate="txt_Municipio" CssClass="alert alert-danger"> * </asp:RequiredFieldValidator>
						
						<br />
						<asp:Label ID="lbl_Biografia" runat="server" Text="Biografia:"></asp:Label>
						<asp:TextBox ID="txt_Biografia" runat="server" CssClass="form-control"></asp:TextBox>
						<br />
						<div class="custom-file">
							<asp:FileUpload ID="fuPerfil" runat="server" CssClass="custom-file-input" onchange="javascript:cambia_nombre()"/>
							<asp:Label ID="Label1" runat="server" Text="Foto de perfil:" CssClass="custom-file-label" for="customFile"
							data-browse="Examinar"></asp:Label>
						</div>
	</p>
	   <%-- ESTE BUSCA ERRORES Y HACE UN LISTADO DE ELLOS --%>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" HeaderText="Se han encontrados los siguientes errores"/>
      <br />
      <br />
       <asp:Button ID="btn_Registrar"  runat="server" Text="Registrar" CssClass="btn btn-warning" OnClick="btn_Registrar_Click" />
  </div>
        
            </div>
<<<<<<< HEAD
                </div>
=======
		<div class="col-md-3">
            <asp:GridView ID="dgv_usuarios" runat="server" CssClass="table table-hover" Width="50px" OnRowDataBound="dgvUsuarios_RowDataBound" OnSelectedIndexChanged="Page_Load"></asp:GridView>
        </div>  
>>>>>>> f3513d6ee5d4efb65d3669b726528d372f4c82ea
        </div>
		</div>
</asp:Content>
