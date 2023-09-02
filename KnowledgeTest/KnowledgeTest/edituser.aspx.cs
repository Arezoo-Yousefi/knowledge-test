using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class edituser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFirstName.Text = "Arezoo";
            txtLastName.Text = "Yousefi";
            txtPhone.Text = "7786370096";
            txtEmail.Text = "are_yousefi@yahoo.com";
            ddlUserType.SelectedValue = "1";
        }
    }
}