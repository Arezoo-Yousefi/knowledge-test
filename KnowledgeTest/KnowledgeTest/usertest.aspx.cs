using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class usertest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var userTest = (HtmlGenericControl)Master.FindControl("liUserTest");
            userTest.Attributes["class"] = "nav-item active";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            testTypeBox.Visible = false;
            questionBox.Visible = true;
        }

        protected void libAnswer_Click(object sender, EventArgs e)
        {
            //var b = (global::System.Web.UI.WebControls.LinkButton)sender;
            
            libNext.Visible = true;
        }
    }
}