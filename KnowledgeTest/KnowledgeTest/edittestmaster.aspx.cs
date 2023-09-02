using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnowledgeTest
{
    public partial class edittestmaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtQuestion.Text = "Question";
            txtAnswerA.Text = "Answer (A)";
            txtAnswerB.Text = "Answer (B)";
            txtAnswerC.Text = "Answer (C)";
            txtAnswerD.Text = "Answer (D)";
            ddlCorrectAnswer.SelectedIndex = 2;
        }
    }
}