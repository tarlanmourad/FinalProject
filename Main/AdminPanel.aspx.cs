using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.DB;

namespace FinalProject.Main
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        References Ref = new References();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                BindGridMessage();
            }
        }

        public void BindGrid()
        {
            grdMembers.DataSource = Ref.FillGrid();
            grdMembers.DataBind();
        }

        public void BindGridMessage()
        {
            grdMessages.DataSource = Ref.FillGrdMessage();
            grdMessages.DataBind();
        }

        public void grdMembers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = grdMembers.Rows[e.RowIndex].FindControl("lblID") as Label;

            //string id = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString();
            string firstName = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString();
            string lastName = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString();
            string email = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString();
            string phone = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[4].Controls[0]).Text.ToString();
            string gender = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[5].Controls[0]).Text.ToString();
            string weight = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[6].Controls[0]).Text.ToString();
            string height = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[7].Controls[0]).Text.ToString();
            int birthYear = Convert.ToInt32(((TextBox)grdMembers.Rows[e.RowIndex].Cells[8].Controls[0]).Text.ToString());
            string joinDate = ((TextBox)grdMembers.Rows[e.RowIndex].Cells[9].Controls[0]).Text.ToString();
            int trainerId = Convert.ToInt32(((TextBox)grdMembers.Rows[e.RowIndex].Cells[10].Controls[0]).Text.ToString());
            int typeId = Convert.ToInt32(((TextBox)grdMembers.Rows[e.RowIndex].Cells[11].Controls[0]).Text.ToString());

            bool res = Ref.GrdMembersUpdate(Convert.ToInt32(id.Text), firstName, lastName, email, weight, height, phone, gender, birthYear, joinDate, trainerId, typeId);

            grdMembers.EditIndex = -1;
            BindGrid();
        }

        protected void grdMessages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = grdMessages.Rows[e.RowIndex].FindControl("lblID") as Label;

            bool res = Ref.GrdMessagesDelete(Convert.ToInt32(id.Text));
            grdMembers.EditIndex = -1;
            BindGridMessage();
        }

        protected void grdMembers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdMembers.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void grdMembers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdMembers.EditIndex = -1;
            BindGrid();
        }

        protected void grdMembers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = grdMembers.Rows[e.RowIndex].FindControl("lblID") as Label;

            bool res = Ref.GrdMembersDelete(Convert.ToInt32(id.Text));
            grdMembers.EditIndex = -1;
            BindGrid();
        }
    }
}