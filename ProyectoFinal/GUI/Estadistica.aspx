<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="Estadistica.aspx.cs" Inherits="ProyectoFinal.GUI.Estadistica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    


                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>                 
                        <asp:Label ID="lbl_usuario" CssClass="form-control" runat="server" Text="Usuario"></asp:Label>
                        <asp:Label ID="lbl_correo" CssClass="form-control" runat="server" Text="E-mail"></asp:Label>
                        <div class="form-check-input">
                            <asp:RadioButton ID="rbt_hombre" runat="server" />Hombre
                            <asp:RadioButton ID="Rbt_mujer" runat="server" />Mujer
                        </div>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"> 
                        
                        <label for="exampleInputPassword1">Password</label>
                        <asp:Label ID="lbl_pass" CssClass="form-control" runat="server" Text="Password"></asp:Label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
               
                <asp:Button ID="btn_agregar" CssClass="btn btn-primary" runat="server" Text="Agregar" />
                <asp:Button ID="btn_cancelar" CssClass="btn btn-secondary" runat="server" Text="Cancelar" />
                
            
                </div>
                <div class="col-md-4">
                    <!--esto es para que no choque con el menu-->
                    <br />
                    <br />
                    <br />


                </div>
            </div>
        </div>
        <div class="col-md-2">
            <br />
            <br />
            <br />
            
        </div>
</asp:Content>
