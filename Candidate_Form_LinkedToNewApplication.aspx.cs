using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advertisement_Application
{
    public partial class Candidate_Form_LinkedToNewApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblForPost.text = Convert.ToString(Session["postname"]);
        }
    }
}