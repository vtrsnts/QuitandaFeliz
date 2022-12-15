using QuitandaFeliz.WebForms.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuitandaFeliz.WebForms.UserControl
{
    public partial class ModalCadastroUsuario : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BtnCadastrarUsuario_OnClientClick(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            cliente.AceiteNewsLetter = chkAceite.Checked;
            cliente.CPF = txtCPF.Text;
            if (DateTime.TryParse(txtDataNascimento.Text, out DateTime data))
                cliente.DataNascimento = data;
            cliente.Email = txtEmail.Text;
            cliente.Nome = txtNome.Text;
            cliente.Senha = txtSenha.Text;
            cliente.Sobrenome = txtSobrenome.Text;
            cliente.Telefone = txtTelefone.Text;
        }
    }
}