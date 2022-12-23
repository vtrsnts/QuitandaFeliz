<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalCadastroUsuario.ascx.cs" Inherits="QuitandaFeliz.WebForms.UserControl.ModalCadastroUsuario" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Button ID="btnModalNovoUsuario" runat="server" CssClass="hidden"/>
<ajaxToolkit:ModalPopupExtender ID="ModalPopupCadastroUsuario" runat="server" TargetControlID="btnModalNovoUsuario" PopupControlID="PanelNovoUsuario" CancelControlID="btnFecharCadastrarUsuario"></ajaxToolkit:ModalPopupExtender>
<asp:Panel ID="PanelNovoUsuario" runat="server">
    <div class="modal-quitanda" id="modalNovoUsuario" tabindex="-1" role="dialog" aria-labelledby="modalNovoUsuarioLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalNovoUsuarioLabel">Crie sua conta</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="fecharModalCadastro();">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <asp:ValidationSummary ID="ValidationSummaryCadastroUsuario" runat="server" CssClass="erro-Quitanda" HeaderText="Favor verificar os erros" />
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" Text="E-mail">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Campo E-mail é obrigatório" ControlToValidate="txtEmail" CssClass="erro-Quitanda">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegexEmailValidEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="E-mail inválido" CssClass="erro-Quitanda">*</asp:RegularExpressionValidator>
                                    <asp:CustomValidator ID="CustomValidatorEmail" runat="server" ControlToValidate="txtEmail" OnServerValidate="validarEmail" CssClass="erro-Quitanda">*</asp:CustomValidator>
                                </asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCPF" runat="server" Text="CPF">  </asp:Label>
                                <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:MaskedEditExtender ID="MaskCPF" TargetControlID="txtCPF" Mask="999,999,999-99" InputDirection="LeftToRight" ClearMaskOnLostFocus="true" runat="server" />
                                <ajaxToolkit:MaskedEditValidator ID="MaskCPFValidadtor" ControlToValidate="MaskCPF" ErrorMessage="Campo obrigatório!" IsValidEmpty="false" />
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
                                <ajaxToolkit:CalendarExtender runat="server" ID="calendarDataNascimento" TargetControlID="txtDataNascimento" CssClass="" Format="dd/MM/yyyy" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblTelefone" runat="server" Text="Telefone">  </asp:Label>
                                <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control"></asp:TextBox>
                                <ajaxToolkit:MaskedEditExtender ID="MaskTelefone" TargetControlID="txtTelefone" Mask="(99) 99999-9999" ClearMaskOnLostFocus="false" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblSenha" runat="server" Text="Senha">  </asp:Label>
                                <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" type="password"></asp:TextBox>
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
                    <asp:Button ID="btnFecharCadastrarUsuario" runat="server" CssClass="btn btn-secondary" OnClientClick="resetBackDrop();" Text="Fechar" />
                    <asp:Button ID="btnCadastrarUsuario" runat="server" OnClick="BtnCadastrarUsuario_OnClientClick" Text="Cadastrar" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
    
</asp:Panel>

<script type="text/javascript">
    function abrirModalCadastro() {
        $("#<%=btnModalNovoUsuario.ClientID%>").click();
        addBackDrop();
    }
    function addBackDrop()
    {
        $("#overlay-quitanda").addClass("modal-backdrop");
        $("#overlay-quitanda").css({ "z-index": "block", "opacity": ".5" });
    }
    function fecharModalCadastro() {       
        $("#<%=btnFecharCadastrarUsuario.ClientID%>").click();
    }
    function resetBackDrop()
    {
        $("#overlay-quitanda").removeClass("modal-backdrop");
        $("#overlay-quitanda").removeAttr("style");
    }
</script>

