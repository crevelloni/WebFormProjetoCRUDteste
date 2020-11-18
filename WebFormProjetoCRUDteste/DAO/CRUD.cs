using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormProjetoCRUDteste.DAO
{
    public class CRUD
    {
        public static bool Cadastrar(Models.Tab_Crud_Web_Form crud)
        {
            try
            {
                using (var conexao = new Models.quediaeh_CorretoraEntities())
                {
                    conexao.Tab_Crud_Web_Form.Add(crud);
                    conexao.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        public static  List<Models.Tab_Crud_Web_Form> listarCadastro()
        {
            try
            {
                using (var conexao = new Models.quediaeh_CorretoraEntities())
                {
                   return conexao.Tab_Crud_Web_Form.ToList();
                    
                }
            }
            catch (Exception ex)
            {
                return new List<Models.Tab_Crud_Web_Form>();
            }
        }
    }
}