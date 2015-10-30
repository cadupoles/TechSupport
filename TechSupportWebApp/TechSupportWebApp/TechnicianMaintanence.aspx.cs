using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechSupportWebApp
{
    public partial class TechnicianMaintanence : System.Web.UI.Page
    {

        public SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HomieDara\Desktop\ASP.Net Youtube\TestingAssignment\TechSupport_dbfiles\TechSupport.mdf;Integrated Security=True;Connect Timeout=30");
        public SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string str;

            conn.Open();
            str = "SELECT * FROM Technicians WHERE TechID = '" + txtSearchTechID.Text.Trim() + "'";
            cmd = new SqlCommand(str, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                txtName.Text = reader["Name"].ToString();
                txtEmail.Text = reader["Email"].ToString();
                txtPhone.Text = reader["Phone"].ToString();
                reader.Close();
                conn.Close();
            }
        }

        protected void lbEdit_Click(object sender, EventArgs e)
        {
            if (txtName.Enabled == false && txtEmail.Enabled == false && txtPhone.Enabled == false)
            {
                txtName.Enabled = true;
                txtEmail.Enabled = true;
                txtPhone.Enabled = true;

                lbEdit.Text = "Update";
                lbCancel.Visible = true;
            }
            else if (txtName.Enabled == true && txtEmail.Enabled == true && txtPhone.Enabled == true && lbEdit.Text.Equals("Update"))
            {
                conn.Open();
                cmd = new SqlCommand("UPDATE Technicians SET Name='" + txtName.Text.Trim() + "' ,Email='" + txtEmail.Text.Trim() + "' ,Phone='" + txtPhone.Text.Trim() + "' WHERE TechID='" + txtSearchTechID.Text + "'", conn);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            else
            {
                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtPhone.Enabled = false;
            }
        }

        protected void lbCancel_Click(object sender, EventArgs e)
        {
            if (txtName.Enabled == true && txtEmail.Enabled == true && txtPhone.Enabled == true)
            {
                txtName.Enabled = false;
                txtEmail.Enabled = false;
                txtPhone.Enabled = false;

                lbEdit.Text = "Edit";
                lbCancel.Visible = false;
            }
        }
    }
}