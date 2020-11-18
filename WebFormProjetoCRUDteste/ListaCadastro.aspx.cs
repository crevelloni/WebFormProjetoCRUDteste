using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormProjetoCRUDteste
{
    public partial class ListaCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            listaCadastro.DataSource = DAO.CRUD.listarCadastro();
            listaCadastro.DataBind();
        }
    }
}