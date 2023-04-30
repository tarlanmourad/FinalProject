using FinalProject.DB;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Main
{
    public partial class About : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConnStr.GetConnStr);
        public References Ref = new References();

        public void Page_Load(object sender, EventArgs e)
        {
            FillEvalTrainers();
        }

        public void FillEvalTrainers()
        {
            dtListAbout.DataSource = Ref.FillEval();
            dtListAbout.DataBind();
        }
    }
}