using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advertisement_Application
{
    public partial class CandidateLoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void SignIn_Click(object sender, EventArgs e)
        {

            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-Q0K2U5K\SQLEXPRESS01; initial Catalog=MasterProject;Integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM Master_Login_Credentials WHERE EmailID=@username AND Password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = txtEmail.Text.Trim();

                    Response.Redirect("Master_MainPage.aspx");
                }
                else
                {
                    lblErrormessage3.Visible = true;
                    txtEmail.Text = "";
                    txtPassword.Text = "";
                }
            }
        }
    }
}