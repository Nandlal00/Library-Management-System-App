using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class stdIssued : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string lid = Convert.ToInt32(Session["stdLoginID"]).ToString();
            string s = "select * from IssueBook where StudentID = "+ lid +"";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }
    }
}