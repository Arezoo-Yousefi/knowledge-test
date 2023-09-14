using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class addtesttype : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // code for active class
            var testtype = (HtmlGenericControl)Master.FindControl("liTestType");
            testtype.Attributes["class"] = "nav-item active";
            //end of code
            lblError.Text = string.Empty;
            lblResult.Text = string.Empty;
        }

        protected void lnkSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
                strQuerry = $"Select ID from TestType Where (TestType = '{txtTestType.Text}' And Language = '{txtlanguage.Text}')";
                int intExists = Convert.ToInt32(SqlHelper.ExecuteScalar(strConnection, CommandType.Text, strQuerry));
                if (intExists > 0)
                {
                    lblError.Text = "Test Type and Language must be unique.";
                }
                else
                {
                   
                    strQuerry = $"INSERT INTO TestType ([TestType],[Language]) VALUES ('{txtTestType.Text}','{txtlanguage.Text}')";
                    int result = SqlHelper.ExecuteNonQuery(strConnection, CommandType.Text, strQuerry);
                    if (result > 0)
                    {
                        lblResult.Text = "Test Type has been created successfully.";

                        txtlanguage.Text = string.Empty;
                        txtTestType.Text = string.Empty;


                    }
                }
            }

            catch (Exception ee)
            {
                lblResult.Text = ee.Message;
            }
        }
    }
}