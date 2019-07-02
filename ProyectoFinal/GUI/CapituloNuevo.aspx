<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="CapituloNuevo.aspx.cs" Inherits="ProyectoFinal.GUI.CapituloNuevo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-md-7">
            <br />
            <asp:TextBox ID="txt_titulo" CssClass="form-control" runat="server" text=""></asp:TextBox>
            <br />
            <asp:TextBox ID="txt_autor" CssClass="form-control" runat="server" text=""></asp:TextBox>
            <br />
            <asp:TextBox ID="txt_fecha" CssClass="form-control" runat="server" text=""></asp:TextBox>
            <br />
            <asp:TextBox ID="txt_contenido" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt_cierre" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            <div class="align-bottom-right">
                <asp:Button ID="btn_aceptar" CssClass="btn btn-primary" runat="server" Text="Aceptar" />
                <asp:Button ID="btn_cancelar" CssClass="btn btn-secondary" runat="server" Text="Cancelar" />
                <asp:Button ID="btn_limpiar" CssClass="btn btn-WHITE" runat="server" Text="Limpiar" />
            </div>
        </div>

    </div>



</asp:Content>
