using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.DB;

namespace FinalProject.Main
{
    public partial class Admin : System.Web.UI.Page
    {
        References Ref = new References();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != "" && txtPassword.Text != "")
            {
                if (Ref.IsValidEmail(txtEmail.Text))
                {
                    foreach (var item in Ref.GetAdmins())
                    {
                        if (txtEmail.Text == item.Email && txtPassword.Text == item.Password)
                        {
                            Response.Redirect("/Main/AdminPanel.aspx");
                        }
                        else
                        {
                            lblWarning.Text = "You are not an admin.";
                            lblWarning.Visible = true;
                        }
                    }

                }
                else
                {
                    lblWarning.Text = "Email format is not valid!";
                    lblWarning.Visible = true;
                }
            }
            else
            {
                lblWarning.Text = "Empty field! Please fill.";
                lblWarning.Visible = true;
            }
        }
    }
}