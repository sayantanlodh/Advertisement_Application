using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advertisement_Application
{
    public partial class Candidate_Application_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //string connectionString = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
                //SqlConnection con = new SqlConnection(connectionString);
                //SqlCommand cmd = new SqlCommand("select * from State", con);
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //sda.Fill(dt);
                //DdlPosition.DataSource= dt;
                //DdlState.DataBind();


            }
        }
        //Logic: Get Start & End Date from Office End, Check wheather the date(today's date, for candidate user) is in between the 
        //Start & End Date given from office end, if yes - Show form, if no - don't show





        //protected void DdlSex_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    DdlState
        //}

        //protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    DdlDistrict.Items.Clear();
        //    DdlDistrict.Items.Add("Select District");
        //    string connectionString = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connectionString);
        //    SqlCommand cmd = new SqlCommand("select * from District where state_id=" + DdlState.SelectedItem.Value, con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    DdlDistrict.DataSource = dt;
        //    DdlDistrict.DataBind();
        //}

        //protected void DdlState_SelectedIndexChanged1(object sender, EventArgs e)
        //{
        //    DdlDistrict.Items.Clear();
        //    DdlPosition.Items.Add("Select District");
        //    string connectionString = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connectionString);
        //    SqlCommand cmd = new SqlCommand("select * from District where state_id=" + DdlState.SelectedItem.Value, con);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    DdlPosition.DataSource = dt;
        //    DdlPosition.DataBind();
        //}

        //protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    DdlMonth.Items.Clear();
            
        //    //    DdlDistrict.Items.Add("Select District");
        //    //    string connectionString = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        //    //    SqlConnection con = new SqlConnection(connectionString);
        //    //    SqlCommand cmd = new SqlCommand("select * from District where state_id=" + DdlState.SelectedItem.Value, con);
        //    //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    //    DataTable dt = new DataTable();
        //    //    sda.Fill(dt);
        //    //    DdlDistrict.DataSource = dt;
        //    //    DdlDistrict.DataBind();
        //}
    }
}