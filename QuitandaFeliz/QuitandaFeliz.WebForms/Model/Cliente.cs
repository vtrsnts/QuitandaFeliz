using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuitandaFeliz.WebForms.Model
{
    public class Cliente
    {
        public string Email { get; set; }
        public string  Nome { get; set; }
        public string Sobrenome { get; set; }
        public DateTime DataNascimento { get; set; }
        public string CPF { get; set; }
        public string Telefone { get; set; }
        public string Senha { get; set; }
        public bool AceiteNewsLetter { get; set; }
    }
}