<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master" AutoEventWireup="true" CodeBehind="AutorNuevo.aspx.cs" Inherits="ProyectoFinal.GUI.AutorNuevo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
// Call carousel manually
$('#MyCarousel();

// Go to the previous item
$("#prevBtn").click(function(){
    $("#myCarousel").carousel("prev");
});
// Go to the previous item
$("#nextBtn").click(function(){
    $("#myCarousel").carousel("next");
});
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        
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

                    <img class="card-img-top" src="#" alt="Card image cap">

                </div>
            </div>
        </div>
        <div class="col-md-2">
            <br />
            <br />
            <br />
            <div class="card" style="width: 12rem;">
                <img class="card-img-top" src="#" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
