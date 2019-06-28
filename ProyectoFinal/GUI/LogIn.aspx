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

                    <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario:"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Cancelar" />
                    <asp:Button ID="Button2" runat="server" Text="Iniciar" />
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Recuperar Usuario o contraseña" />


                </div>
            </div>




        </div>
        <div class="col-3"></div>
    </div>
</asp:Content>
