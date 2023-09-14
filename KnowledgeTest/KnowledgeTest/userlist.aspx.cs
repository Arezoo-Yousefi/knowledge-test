﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Microsoft.ApplicationBlocks.Data;
namespace KnowledgeTest
{
    public partial class userlist : System.Web.UI.Page
    {
        string strConnection = ConfigurationManager.AppSettings["sqlConnection"];
        protected void Page_Load(object sender, EventArgs e)
        {
            //these two line is used to control the class active in the tags.
            var userlist = (HtmlGenericControl)Master.FindControl("liUserlist");
            userlist.Attributes["class"] = "nav-item active";
            //end of the active class control
            if (!IsPostBack)
            {
                FillData();
            }
        }
        private void FillData()
        {
            string strSearchText = txtSearch.Text.Trim();
            string strQuerry = string.Empty;
            //if(ddlStatus.SelectedValue == "2")
            //{
            //    strQuerry = $"SELECT [ID],[FirstName],[LastName],[EmailAddress],[Password],[Phone],[UserType],[UserPicture]," +
            //    $"Case When Status = 1 Then 'Active' Else 'Deleted' End Status,[CreatedOn]" +
            //    $"FROM [Users] " +
            //    $"Where ([FirstName] like " +
            //    $"'%{strSearchText}%' or [LastName] Like '%{strSearchText}%'or [EmailAddress] like '%{strSearchText}%'or [UserType] Like '%{strSearchText}%'" +
            //    $" or [Phone] like '%{strSearchText}%')";
            //}
            //else
            //{
                string x = string.Empty;
                if (ddlStatus.SelectedValue != "2")
                {
                    x = $"(Status = '{ddlStatus.SelectedValue}') And ";
                }
                    
                strQuerry = $"SELECT [ID],[FirstName],[LastName],[EmailAddress],[Password],[Phone],[UserType],[UserPicture]," +
                $"Case When Status = 1 Then 'Active' Else 'Deleted' End Status,Format(CreatedOn, 'MMM dd yyyy') CreatedOn " +
                $"FROM [Users] " +
                $"Where {x} ([FirstName] like " +
                $"'%{strSearchText}%' or [LastName] Like '%{strSearchText}%'or [EmailAddress] like '%{strSearchText}%'or [UserType] Like '%{strSearchText}%'" +
                $" or [Phone] like '%{strSearchText}%')";
            //}
            DataSet ds = SqlHelper.ExecuteDataset(strConnection, CommandType.Text, strQuerry);
            gvData.DataSource = ds;

            gvData.DataBind();
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            LinkButton objLinkButton = (LinkButton) sender;
            string strID = objLinkButton.CommandArgument;
            Session["editUserID"] = strID;
            Response.Redirect("edituser.aspx");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            LinkButton objLinkaButton = (LinkButton)sender;
            string strID = objLinkaButton.CommandArgument;
            string strQuerry = $"Update [Users] set status = Case When Status = 0 Then 1 Else 0 End Where ID = { strID}";
            int result = SqlHelper.ExecuteNonQuery(strConnection, CommandType.Text, strQuerry);
            if (result > 0)
            {
                lblresult.Text = "Status has been changed successfully";
                FillData();
            }
        }

        protected void likButton_Click(object sender, EventArgs e)
        {
            FillData();
        }
    }
}