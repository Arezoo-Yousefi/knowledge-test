using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class userlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //foreach(var c in Master.Controls)
            //{
            //    if(c is HtmlGenericControl)
            //    {
            //        HtmlGenericControl h = (HtmlGenericControl)c;
            //        if (h.Attributes["class"] == "nav-item active")
            //        {
            //            h.Attributes["class"] = "nav-item";
            //        }
            //    }
            //}
            //var dashboard = (HtmlGenericControl)Master.FindControl("liDashboard");
            var userlist = (HtmlGenericControl)Master.FindControl("liUserlist");
            //var testtype = (HtmlGenericControl)Master.FindControl("liTestType");
            //var testmaster = (HtmlGenericControl)Master.FindControl("liTestMaster");
            //var allocatetest = (HtmlGenericControl)Master.FindControl("liAllocateTest");
            //var reports = (HtmlGenericControl)Master.FindControl("liReports");
            //var logout = (HtmlGenericControl)Master.FindControl("liLogOut");
            //dashboard.Attributes["class"] = "nav-item";
            userlist.Attributes["class"] = "nav-item active";
            //testtype.Attributes["class"] = "nav-item";
            //testmaster.Attributes["class"] = "nav-item";
            //allocatetest.Attributes["class"] = "nav-item";
            //reports.Attributes["class"] = "nav-item";
            //logout.Attributes["class"] = "nav-item";
        }
    }
}