using FinalProject.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Main
{
    public partial class Register : System.Web.UI.Page
    {
        public References Ref = new References();
        bool res;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillChcListType();
                FillDrpYears();
                FillDrpTrainers();
            }
        }

        public void FillDrpYears()
        {
            for (int i = 2006; i >= 1970; i--)
            {
                drpYears.Items.Add(i.ToString());
            }
        }

        public void FillDrpTrainers()
        {
            drpTrainers.DataSource = Ref.FillDrpList();
            drpTrainers.DataTextField = "FullName";
            drpTrainers.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string weight = txtWeight.Text;
            string height = txtHeight.Text;
            string type = chcListType.SelectedValue;
            string gender = rbtlGender.SelectedValue;
            string trainer = drpTrainers.SelectedValue;

            if (txtFirstName.Text != "" && txtFirstName.Text != "" && txtEmail.Text != "" && txtPhone.Text != "" && txtHeight.Text != "" && txtWeight.Text != "" && chcListType.SelectedValue != "" && rbtlGender.SelectedValue != "" && drpYears.SelectedValue != "-- --" && drpTrainers.SelectedValue != "--select--")
            {
                int birthyear = Convert.ToInt32(drpYears.SelectedValue);

                if (Ref.IsValidEmail(email))
                {
                    if (Ref.IsValidPhone(phone))
                    {
                        if (signupAgree.Checked)
                        {
                            res = Ref.InsertMember(firstName, lastName, email, weight, height, phone, gender, birthyear, type, trainer);
                            lblSuccess.Text = "Congratulations!  You are our member now.";
                            ClearFields();
                            lblSuccess.Visible = true;
                            lblWarning.Visible = false;
                            frmRegister.Visible = false;
                        }
                        else
                        {
                            lblWarning.Text = "Please, read and accept Terms&Conditions.";
                            lblWarning.Visible = true;
                            lblSuccess.Visible = false;
                        }
                    }
                    else
                    {
                        lblWarning.Text = "Phone format is not valid! Please, try again.";
                        lblWarning.Visible = true;
                        lblSuccess.Visible = false;
                    }
                }
                else
                {
                    lblWarning.Text = "Email format is not valid! Please, try again.";
                    lblWarning.Visible = true;
                    lblSuccess.Visible = false;                }
            }

            else
            {
                lblWarning.Text = "Empty field! Please fill.";
                lblWarning.Visible = true;
                lblSuccess.Visible = false;
            }
        }

        public void FillChcListType()
        {
            var memTypes = Ref.GetMemTypes();

            foreach (var item in memTypes)
            {
                chcListType.Items.Add(item.TypeName.ToString());
            }
        }

        public void ClearFields()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhone.Text = "";
            txtWeight.Text = "";
            txtHeight.Text = "";
            txtEmail.Text = "";
            drpTrainers.SelectedIndex = 0;
            drpYears.SelectedIndex = 0;
            chcListType.SelectedIndex = -1;
            rbtlGender.SelectedIndex = -1;
            signupAgree.Checked = false;
        }
    }
}