using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProjetoCRUDteste
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            btnCadastrar.Click += BtnCadastrar_Click;
        }

        private void BtnCadastrar_Click(object sender, EventArgs e)
        {
            var novoCrud = new Models.Tab_Crud_Web_Form();
            novoCrud.Nome = txtNome.Text;
            novoCrud.Email = txtEmail.Text;
            novoCrud.Endereco = txtEnd.Text;
            novoCrud.Telefone = txtTel.Text;
            novoCrud.Obs = txtObs.Text;

            bool cadastrado = DAO.CRUD.Cadastrar(novoCrud);
            if (cadastrado)
            {
                ltMensagem.Text = novoCrud.Nome + " foi cadastrado(a) com sucesso";
            }
            else
            {
                ltMensagem.Text = "erro ao cadastrar: " + novoCrud.Nome;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}