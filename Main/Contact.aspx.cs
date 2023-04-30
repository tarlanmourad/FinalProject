using FinalProject.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Main
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public References Ref = new References();
        bool res;

        protected void submitButton_Click(object sender, EventArgs e)
        {

            if (txtFullName.Text != "" && txtEmail.Text != "" && txtSubject.Text != "" && txtMessage.Text != "")
            {
                if (Ref.IsValidEmail(txtEmail.Text))
                {
                    res = Ref.InsertMsg(txtFullName.Text, txtEmail.Text, txtSubject.Text, txtMessage.Text);
                    Clear();
                }
                else
                {
                    lblWarning.Text = "Email format is not valid!";
                    lblWarning.Visible = true;
                    lblSuccess.Visible = false;
                    txtEmail.Text = "";
                }

                if (res == true)
                {
                    lblSuccess.Text = "Thank you! Your message has been noted.";
                    lblSuccess.Visible = true;
                    lblWarning.Visible = false;
                }
            }

            else
            {
                lblWarning.Text = "Empty field! Please fill!";
                lblWarning.Visible = true;
                lblSuccess.Visible = false;
            }

        }

        public void Clear()
        {
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
    }
}