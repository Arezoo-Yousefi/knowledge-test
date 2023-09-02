using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var dashboard = (HtmlGenericControl)Master.FindControl("liDashboard");
            dashboard.Attributes["class"] = "nav-item active";
        }
    }
}