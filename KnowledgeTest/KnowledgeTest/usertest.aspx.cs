using System;
using System.Web.UI.HtmlControls;
using System.Data;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Drawing;

namespace KnowledgeTest
{
    public partial class usertest : System.Web.UI.Page
    {
        string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
        protected void Page_Load(object sender, EventArgs e)
        {
            var userTest = (HtmlGenericControl)Master.FindControl("liUserTest");
            userTest.Attributes["class"] = "nav-item active";

            lblSuccess.Text = string.Empty;
            lblError.Text = string.Empty;
            if (!IsPostBack)
            {
                testTypeBox.Visible = true;
                questionBox1.Visible = false;
                resultBox1.Visible = false;
                FillDropDownField();
                ddlTestType_TextChanged(null, null);
            }
        }

        protected void lnkAnswer_Click(object sender, EventArgs e)
        {
            lnkNext.Visible = true;
            LinkButton objButton = (LinkButton)sender;
            string strCorrectAnswer = Convert.ToString(ViewState["correctAnswer"]);
            foreach (var child in objButton.Parent.Controls)
            {
                if(child is LinkButton && ((LinkButton)child).CommandName == strCorrectAnswer)
                {
                    ((LinkButton)child).BackColor = Color.Green;
                    ((LinkButton)child).ForeColor = Color.White;
                }
            }
            if (objButton.CommandName != strCorrectAnswer)
            {
                objButton.BackColor = Color.Red;
                objButton.ForeColor = Color.White;
               
            }
            Managebuttons(false);
        }

        private void Managebuttons(bool isEnable)
        {
            lnkAnswerA.Enabled = isEnable;
            lnkAnswerB.Enabled = isEnable;
            lnkAnswerC.Enabled = isEnable;
            lnkAnswerD.Enabled = isEnable;
        }


        private void FillDropDownField()
        {
            try
            {

                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                //string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
                strQuerry = $" Select Distinct TestType From TestType Where (Status = 1) And ID in (Select TestTypeID from AllocateTest Where UserID={Session["UserID"]} AND status = 1)";
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
                strQuerry = $" Select  ID, Language From TestType where TestType = '{ddlTestType.SelectedValue}' AND ID in (Select TestTypeID from AllocateTest Where UserID={Session["UserID"]} AND status = 1) Order By Language";
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

        protected void lnkSubmitTestType_Click(object sender, EventArgs e)
        {
            try
            {
                string strPath = "~/Files/QuestionImage/";
                string strQuerry = $"Select ID, Question, AnswerA, AnswerB, AnswerC, AnswerD,'{strPath}' + QuestionImage as QuestionImage, CorrectAnswer, 0 as isDisplayed from TestMaster" +
                    $" where Status = 1 And TestTypeID = (Select ID from TestType where TestType = '{ddlTestType.SelectedValue}' And Language = '{ddlLanguage.SelectedItem}')";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
                if (ds.Tables[0].Rows.Count == 0)
                {

                    lblError.Text = "There is no question related to the selected test type or language";
                    testTypeBox.Visible = true;
                    questionBox1.Visible = false;
                    resultBox1.Visible = false;
                }
                else
                {

                    ViewState["Question"] = ds;
                    FillQuestion();
                }
            }
            catch (Exception ee)
            {

            }
        }

        protected void lnkNext_Click(object sender, EventArgs e)
        {
            AnswerFormat();
            FillQuestion();
        }

        private void AnswerFormat()
        {
            lnkAnswerA.BackColor = Color.White;
            lnkAnswerA.ForeColor = Color.Black;

            lnkAnswerB.BackColor = Color.White;
            lnkAnswerB.ForeColor = Color.Black;

            lnkAnswerC.BackColor = Color.White;
            lnkAnswerC.ForeColor = Color.Black;

            lnkAnswerD.BackColor = Color.White;
            lnkAnswerD.ForeColor = Color.Black;
            Managebuttons(true);
        }

        protected void lblFinish_Click(object sender, EventArgs e)
        {

        }
        private void FillQuestion()
        {
            try
            {
                testTypeBox.Visible = false;
                questionBox1.Visible = true;
                resultBox1.Visible = false;
                DataSet ds = (DataSet)ViewState["Question"];
                DataRow[] dr = ds.Tables[0].Select("isDisplayed=0");
                if (dr.Length > 0)
                {
                    testTypeBox.Visible = false;
                    questionBox1.Visible = true;
                    resultBox1.Visible = false;
                    lblQuestion.Text = Convert.ToString(dr[0]["Question"]);
                    imgQuestion.ImageUrl = Convert.ToString(dr[0]["QuestionImage"]);
                    lnkAnswerA.Text = Convert.ToString(dr[0]["AnswerA"]);
                    lnkAnswerB.Text = Convert.ToString(dr[0]["AnswerB"]);
                    lnkAnswerC.Text = Convert.ToString(dr[0]["AnswerC"]);
                    lnkAnswerD.Text = Convert.ToString(dr[0]["AnswerD"]);
                    ViewState["correctAnswer"] = Convert.ToString(dr[0]["CorrectAnswer"]);
                    dr[0]["isDisplayed"] = 1;
                }
                else
                {
                    testTypeBox.Visible = false;
                    questionBox1.Visible = false;
                    resultBox1.Visible = true;
                }
            }
            catch (Exception ee)
            {

            }
}
    }
}