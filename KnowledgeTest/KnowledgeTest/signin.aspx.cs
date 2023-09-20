using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Microsoft.ApplicationBlocks.Data;

namespace KnowledgeTest
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkLogin_Click(object sender, EventArgs e)
        {
            try
            {
                
                string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
                string strQuerry = $"Select ID from Users Where EmailAddress = '{txtEmail.Text.Trim()}' and Password = '{txtpassword.Text.Trim()}' and Status = 1";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("~/dashboard.aspx");
                }
                else
                {
                    lblError.Text = "The Email or Password is incorrct";
                }
            }
            catch (Exception ee)
            {
                lblError.Text = ee.Message;
            }

        }
    }
}