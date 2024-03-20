using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class SearchStd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = "select * from StdData where StdRollNo = "+ TextBox1.Text +" ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);

            if (ds.Tables[0].Rows.Count == 0) 
            {
                Response.Write("<script>alert('Student Not Found!')</script>");
            }
            else
            {
                Panel1.Visible=true;
                Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                Label3.Text = ds.Tables[0].Rows[0][3].ToString();
            }
        }
    }
}