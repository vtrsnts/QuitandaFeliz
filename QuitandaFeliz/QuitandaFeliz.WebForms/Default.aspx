<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QuitandaFeliz.WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-offset-2 col-md-10">
        <div id="carouselQuitanda" class="carousel slide carousel-Quitanda " data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselQuitanda" data-slide-to="0" class="active"></li>
                <li data-target="#carouselQuitanda" data-slide-to="1"></li>
                <li data-target="#carouselQuitanda" data-slide-to="2"></li>
                <li data-target="#carouselQuitanda" data-slide-to="3"></li>
                <li data-target="#carouselQuitanda" data-slide-to="4"></li>
                <li data-target="#carouselQuitanda" data-slide-to="5"></li>
                <li data-target="#carouselQuitanda" data-slide-to="6"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/F1.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="Images/F2.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="Images/F3.jpg" alt="Third slide">
                </div>
                <div class="item">
                    <img src="Images/F4.jpg" alt="Fourth slide">
                </div>
                <div class="item">
                    <img src="Images/F5.jpg" alt="Fifth slide">
                </div>
                <div class="item">
                    <img src="Images/F6.jpg" alt="Sixth slide">
                </div>
                <div class="item">
                    <img src="Images/F7.jpg" alt="Seventh slide">
                </div>
            </div>
            <a class="left carousel-control" href="#carouselQuitanda" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carouselQuitanda" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
      <div class="page-header page-header-quitanda ">
            <h1>Quitanda Feliz <small>WEBFORMS ASP.NET</small></h1>

            <p>Projeto no estilo Fabrikan , Contoso,  Globalmantics para demonstração de soluções .net</p>
            <p>
                <asp:Button ID="btnMaisDetalhes" runat="server" CssClass="btn btn-danger" Text="Mais Detalhes" />
            </p>
        </div>
    </div>

</asp:Content>
