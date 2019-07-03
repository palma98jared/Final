<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE/MAESTRA.Master"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoFinal.GUI.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../RESOURCES/Imagenes/Terror.jpg" class="d-block w-100"  alt="Terror">
    </div>
    <div class="carousel-item">
      <img src="../RESOURCES/Imagenes/BG.jpg" class="d-block w-100" " alt="BG">
    </div>
    <div class="carousel-item">
      <img src="../RESOURCES/Imagenes/CienciaFiccion.jpg" class="d-block w-100"  alt="CienciaFiccion">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	</div>
	
	<%--<div class="slider-item">
	      	<div class="overlay"></div>
	        <div class="container-fluid p-0">
	          <div class="row d-flex no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
	          	<div class="one-third order-md-last">
	          		<div class="img" style="background-image:url(images/bg_2.jpg);">
	          			<div class="overlay"></div>
	          		</div>
	          		<div class="vr"><span class="pl-3 py-4" style="background-image: url(rimages/bg_2-2.jpg);">Africa</span></div>
	          	</div>
		          <div class="one-forth d-flex align-items-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
		          	<div class="text">
		          		<span class="subheading pl-5">Discover Africa</span>
			            <h1 class="mb-4 mt-3">Never Stop Exploring</h1>
			            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country.</p>
			            
			            <p><a href="#" class="btn btn-primary px-5 py-3 mt-3">Discover <span class="ion-ios-arrow-forward"></span></a></p>
		            </div>
		          </div>
	        	</div>
	        </div>
	      </div>--%>

</asp:Content>
