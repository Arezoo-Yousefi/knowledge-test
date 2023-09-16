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
    public partial class allocatetest : System.Web.UI.Page
    {
        string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
        protected void Page_Load(object sender, EventArgs e)
        {
            var allocatetest = (HtmlGenericControl)Master.FindControl("liAllocateTest");
            allocatetest.Attributes["class"] = "nav-item active";

            lblSuccess.Text = string.Empty;
            lblError.Text = string.Empty;
            if (!IsPostBack)
            {
                FillData();
                FillDropDownField();
                ddlTestType_TextChanged(null,null);
            }
        }

        private void FillData()
        {
            try
            {

                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                
                strQuerry = $"Select at.ID, u.FirstName + ' ' +u.LastName Name, tt.TestType, tt.Language," +
                    $" Case When at.Status = 1 Then 'Active' Else 'Deleted' End Status,Format(at.CreatedOn, 'MMM dd yyyy') CreatedOn" +
                    $" FROM [AllocateTest] at" +
                    $" inner join Users u on u.ID = at.UserID" +
                    $" inner join TestType tt on tt.ID = at.TestTypeID Order By at.ID Desc";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
                gvData.DataSource = ds.Tables[0];
                gvData.DataBind();
            }
            catch (Exception ee)
            {
                lblError.Text = ee.Message;
            }
        }
        private void FillDropDownField()
        {
            try
            {
                
                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                //string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
                strQuerry = $"Select ID, FirstName+' '+LastName as Name from Users where Status = 1 Order By FirstName;" +
                    $" Select Distinct TestType From TestType;";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
                ddlUser.DataTextField = "Name";
                ddlUser.DataValueField = "ID";
                ddlUser.DataSource = ds.Tables[0];
                ddlUser.DataBind();
                ddlUser.Items.Insert(0, new ListItem("Select", "0"));

                ddlTestType.DataTextField = "TestType";
                ddlTestType.DataValueField = "TestType";
                ddlTestType.DataSource = ds.Tables[1];
                ddlTestType.DataBind();
                ddlTestType.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (Exception ee)
            {
 
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
            string strQuerry = string.Empty;
            string strFileName = string.Empty;
            //string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
            strQuerry = $"Select ID from AllocateTest Where (UserID = {ddlUser.SelectedValue} And TestTypeId = {ddlLanguage.SelectedValue})";
            DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblError.Text = "Test Type already allocated to this User";
            }
            else
            {
                strQuerry = $"Insert into AllocateTest (UserID, TestTypeId) values ({ddlUser.SelectedValue}, {ddlLanguage.SelectedValue})";
                int result = SqlHelper.ExecuteNonQuery(strConnection, CommandType.Text, strQuerry);
                if (result > -1)
                {
                    lblSuccess.Text = "Data has been saved successfully";
                    FillData();
                }
                else
                {
                    lblError.Text = "Please try later";
                }
            }
        }
       

     
        protected void likDelete_Click(object sender, EventArgs e)
        {
            LinkButton objLinkButton = (LinkButton)sender;
            string strID = objLinkButton.CommandArgument;
            string strQuerry = $"Update AllocateTest set status = Case When Status = 0 Then 1 Else 0 End Where ID = {strID}";
            int result = SqlHelper.ExecuteNonQuery(strConnection, CommandType.Text, strQuerry);
            if (result > 0)
            {
                lblresult.Text = "Status has been changed successfully";
                FillData();
            }
        }

        
        protected void likEdit_Click(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;
            lblresult.Text = string.Empty;
            LinkButton objLinkButton = (LinkButton)sender;
            string strID = objLinkButton.CommandArgument;
            string strQuerry = $"Select at.ID, at.UserID, at.TestTypeID, tt.TestType " +
                $"from AllocateTest at " +
                $"inner join TestType tt on tt.ID=at.TestTypeID " +
                $"Where at.ID = {strID}";
            DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
            ddlUser.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["UserID"]);
            ddlTestType.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["TestType"]);
            ddlTestType_TextChanged(null,null);
            ddlLanguage.SelectedValue = Convert.ToString(ds.Tables[0].Rows[0]["TestTypeID"]);
            lnkSubmit.Visible = false;
            lnkUpdate.Visible = true;
            ViewState[ID] = strID;

        }

        protected void lnkUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                lblError.Text = string.Empty;
                lblresult.Text = string.Empty;
                string strQuerry = string.Empty;
                string strFileName = string.Empty;
                strQuerry = $"Select ID from AllocateTest Where (UserID = {ddlUser.SelectedValue} And TestTypeId = {ddlLanguage.SelectedValue} And ID <> {Convert.ToInt32(ViewState[ID])})";

                //strQuerry = $"Select at.ID, at.UserID, at.TestTypeID, tt.TestType " +
                //$"from AllocateTest at " +
                //$"inner join TestType tt on tt.ID=at.TestTypeID " +
                //$"Where at.ID <> {Convert.ToInt32(ViewState[ID])} And UserID={ddlUser.SelectedValue} AND tt.TestType='{ddlTestType.SelectedValue}'  And tt.Language = '{ddlLanguage.Text}'";
                DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    lblError.Text = "Test Type has been already allocated";

                }
                else
                {
                    strQuerry = $"Update AllocateTest Set UserID = {ddlUser.SelectedValue}, TestTypeID = {ddlLanguage.SelectedValue} Where ID = {Convert.ToInt32(ViewState[ID])}";
                    int result = SqlHelper.ExecuteNonQuery(strConnection, CommandType.Text, strQuerry);
                    if (result> -1)
                    {
                        lblSuccess.Text = "Data has updated successfully";
                        lnkSubmit.Visible = true;
                        lnkUpdate.Visible = false;
                        FillData();
                        ddlTestType.SelectedIndex = 0;
                        ddlUser.SelectedIndex = 0;
                        ddlLanguage.SelectedIndex = 0;
                    }
                }
            }
            catch (Exception ee)
            {
                lblError.Text = ee.Message;
            }

        }

        protected void lnkCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/allocatetest.aspx");
        }
    }
}