<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalCadastroUsuario.ascx.cs" Inherits="QuitandaFeliz.WebForms.UserControl.ModalCadastroUsuario" %>
<div class="modal fade" id="modalNovoUsuario" tabindex="-1" role="dialog" aria-labelledby="modalNovoUsuarioLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalNovoUsuarioLabel">Crie sua conta</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Email">  </asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblCPF" runat="server" Text="CPF">  </asp:Label>
                            <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblNome" runat="server" Text="Nome">  </asp:Label>
                            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome">  </asp:Label>
                            <asp:TextBox ID="txtSobrenome" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblDataNascimento" runat="server" Text="Data de Nascimento">  </asp:Label>
                            <asp:TextBox ID="txtDataNascimento" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblTelefone" runat="server" Text="Telefone">  </asp:Label>
                            <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblSenha" runat="server" Text="Senha">  </asp:Label>
                            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblAceite" runat="server" Text="Deseja receber ofertas?">  </asp:Label>
                            <asp:CheckBox ID="chkAceite" runat="server" CssClass="form-control-check" Text="Sim"></asp:CheckBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                <asp:Button ID="btnCadastrarUsuario" runat="server" OnClientClick="return funcaoTeste()" OnClick="BtnCadastrarUsuario_OnClientClick" Text="Cadastrar" />
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function funcaoTeste() {
        console.log($("#<%= txtNome.ClientID%>").val());
        return false;
    }
</script>

