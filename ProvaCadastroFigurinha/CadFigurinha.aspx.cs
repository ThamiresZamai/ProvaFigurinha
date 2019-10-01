using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaCadastroFigurinha
{
    public partial class CadFigurinha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadGrid();
        }

        protected void btn_salvar(object sender, EventArgs e)
        {
            figurinha fi = new figurinha()
            {
                descricao = txtDescricao.Text,
                ano = Convert.ToInt32(txtAno.Text)
            };

            Prova1Entities context = new Prova1Entities();

            context.figurinha.Add(fi);
            context.SaveChanges();

            loadGrid();
        }

        private void loadGrid()
        {
            Prova1Entities context = new Prova1Entities();
            List<figurinha> lstIstrumento = context.figurinha.ToList<figurinha>();

            GridFigurinha.DataSource = lstIstrumento;
            GridFigurinha.DataBind();
        }
    }
}