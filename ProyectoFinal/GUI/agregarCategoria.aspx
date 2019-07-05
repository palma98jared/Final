<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="agregarCategoria.aspx.cs" Inherits="ProyectoFinal.GUI.agregarCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-1"></div>
        <div class="col-md-7">
            <br />
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            <br />
            <asp:TextBox ID="txt_titulo" CssClass="form-control" runat="server" text=""></asp:TextBox>
            <br />
            <asp:Label ID="lbltipo" runat="server" Text="Tipo"></asp:Label>
            <br />
            <asp:TextBox ID="txt_autor" CssClass="form-control" runat="server" text=""></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:TextBox ID="txt_fecha" CssClass="form-control" runat="server" text=""></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />  
            <div class="align-bottom-right">
                <asp:Button ID="btn_aceptar" CssClass="btn btn-primary" runat="server" Text="Guardar" />
                <asp:Button ID="btn_cancelar" CssClass="btn btn-secondary" runat="server" Text="Cancelar" />
                <asp:Button ID="btn_limpiar" CssClass="btn btn-WHITE" runat="server" Text="Limpiar" />
            </div>
        </div>

    </div>

</asp:Content>
