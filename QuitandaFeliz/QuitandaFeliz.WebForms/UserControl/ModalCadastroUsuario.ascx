<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalCadastroUsuario.ascx.cs" Inherits="QuitandaFeliz.WebForms.UserControl.ModalCadastroUsuario" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
                            <ajaxToolkit:MaskedEditExtender ID="MaskCPF" TargetControlID ="txtCPF" Mask="999,999,999-99"  InputDirection="LeftToRight" ClearMaskOnLostFocus ="false"  runat="server" />
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
                            <asp:Label ID="lblDataNascimento" runat="server" Text="Data de Nascimento"> </asp:Label>
                            <asp:TextBox ID="txtDataNascimento" runat="server" CssClass="form-control"></asp:TextBox>                            
                            <ajaxToolkit:CalendarExtender runat="server" ID="calendarDataNascimento"   TargetControlID="txtDataNascimento"   CssClass=""    Format="dd/MM/yyyy"  />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblTelefone" runat="server" Text="Telefone">  </asp:Label>
                            <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control"></asp:TextBox>
                            <ajaxToolkit:MaskedEditExtender ID="MaskTelefone" TargetControlID ="txtTelefone" Mask="(99) 99999-9999" ClearMaskOnLostFocus="false"  runat="server" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="lblSenha" runat="server" Text="Senha">  </asp:Label>
                            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" type="password" ></asp:TextBox>
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
                <asp:Button ID="btnCadastrarUsuario" runat="server" OnClick="BtnCadastrarUsuario_OnClientClick" Text="Cadastrar" CssClass="btn btn-success" />
            </div>
        </div>
    </div>
</div>


