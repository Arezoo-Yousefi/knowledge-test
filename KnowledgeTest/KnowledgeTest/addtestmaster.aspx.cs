using System;
using System.Web.UI.HtmlControls;
using System.Data;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class addtestmaster : System.Web.UI.Page
    {
        string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
        protected void Page_Load(object sender, EventArgs e)
        {
            var testmaster = (HtmlGenericControl)Master.FindControl("liTestMaster");
            testmaster.Attributes["class"] = "nav-item active";

            lblresult.Text = string.Empty;
            lblError.Text = string.Empty;
            if (!IsPostBack)
            {
                
                FillDropDownField();
                ddlTestType_TextChanged(null, null);
            }
        }

        private void FillDropDownField()
        {
            try
            {

                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                //string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
                strQuerry = $" Select Distinct TestType From TestType;";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);


                ddlTestType.DataTextField = "TestType";
                ddlTestType.DataValueField = "TestType";
                ddlTestType.DataSource = ds.Tables[0];
                ddlTestType.DataBind();
                ddlTestType.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (Exception ee)
            {
                lblError.Text = ee.Message;
            }
        }

        protected void ddlTestType_TextChanged(object sender, EventArgs e)
        {
            try
            {
                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                //string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
                strQuerry = $" Select  ID, Language From TestType where TestType = '{ddlTestType.SelectedValue}';";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
                ddlLanguage.DataTextField = "Language";
                ddlLanguage.DataValueField = "ID";
                ddlLanguage.DataSource = ds.Tables[0];
                ddlLanguage.DataBind();
                ddlLanguage.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (Exception ee)
            {
                lblError.Text = ee.Message;
            }
        }
        protected void lnkSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                
                strQuerry = $"Select ID from TestMaster Where Question = '{txtQuestion.Text.Trim()}'";
                int intExists = Convert.ToInt32(SqlHelper.ExecuteScalar(strConnection, CommandType.Text, strQuerry));
                if (intExists > 0)
                {
                    lblError.Text = "This Test Master already exists.";
                }
                else
                {
                    if (fuQuestionImage.HasFile)
                    {
                        string[] strArray = fuQuestionImage.FileName.Split('.');
                        string strExtension = strArray[strArray.Length - 1];
                        strFileName = Guid.NewGuid().ToString() + "." + strExtension;
                        string strPath = Server.MapPath("~/Files/QuestionImage/") + strFileName;
                        fuQuestionImage.SaveAs(strPath);
                    }

                    strQuerry = $"INSERT INTO TestMaster(TestTypeID, Question, QuestionImage, AnswerA, AnswerB, AnswerC" +
                        $", AnswerD, CorrectAnswer)VALUES" +
                        $"((Select ID from TestType where TestType.TestType = '{ddlTestType.SelectedItem}' And TestType.Language = '{ddlLanguage.SelectedItem}')" +
                        $",'{txtQuestion.Text}','{strFileName}','{txtAnswerA.Text}','{txtAnswerB.Text}', '{txtAnswerC.Text}', '{txtAnswerD.Text}'" +
                        $",'{ddlCorrectAnswer.SelectedValue}')";
                    int result = SqlHelper.ExecuteNonQuery(strConnection, CommandType.Text, strQuerry);
                    if (result > 0)
                    {
                        lblresult.Text = "The Test Master has been successfully added.";
                        txtQuestion.Text = string.Empty;
                        txtAnswerA.Text = string.Empty;
                        txtAnswerB.Text = string.Empty;
                        txtAnswerC.Text = string.Empty;
                        txtAnswerD.Text = string.Empty;
                        ddlCorrectAnswer.SelectedIndex = 0;
                        ddlTestType.SelectedIndex = 0;
                        ddlLanguage.SelectedIndex = 0;
                    }
                }
            }

            catch (Exception ee)
            {
                lblresult.Text = ee.Message;
            }

        }
    }
}