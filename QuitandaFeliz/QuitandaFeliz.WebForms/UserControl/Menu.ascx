<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="QuitandaFeliz.WebForms.UserControl.Menu" %>

<div class="navbar navbar-inverse navbar-fixed-top navbar-quitanda">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" title="more options">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/">
                <img src="Images/LogoMarca.png" style="max-width: 30px;" />
            </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/">Principal</a></li>
                <li><a runat="server" href="~/About">Sobre</a></li>
                <li><a runat="server" href="~/Contact">Contato</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right navbar-right-quitanda">
                <li><span>Bem vindo!  <a href="#" data-toggle="modal" data-target="#modalLogin">entre com sua conta</a>  ou <a href="#" data-toggle="modal" data-target="#modalNovoUsuario">crie sua conta</a></span></li>
            </ul>
        </div>
    </div>
</div>


