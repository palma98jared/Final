<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ProyectoFinal.GUI.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br /><br /><br />
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            
            <div class="card-registro">
                 <div class="card-header">
                     Iniciar Sesion
                 </div>
                <div class="card-body">
                    <h5 class="card-title">Introduce los datos:</h5>

                   <asp:Label ID="lbl_NombreUsuarioLogin" runat="server" Text="Nombre de Usuario"></asp:Label>
					<asp:TextBox ID="txtUserLogin" style="margin-left:10px" runat="server"></asp:TextBox>
					<br />
					<br />
					<asp:Label ID="lbl_PasswordLogin" runat="server" Text="Contraseña"></asp:Label>
					<asp:TextBox ID="txtPassLogin" style="margin-left:63px" Type="Password" runat="server" ></asp:TextBox>
					<br />
					<br />
					<asp:Button ID="btn_Iniciar" CssClass="btn btn-info" runat="server" Text="Iniciar Sesion" OnClick="btn_Iniciar_Click" />
                    <br />
                </div>
            </div>




        </div>
        <div class="col-3"></div>
    </div>
</asp:Content>
