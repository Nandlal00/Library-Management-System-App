using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class ReqBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoID();
            TextBox1.Enabled = false;
        }

        protected void AutoID()
        {
            string s = "select * from reqBook order by ReqID desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox1.Text = "1";
            }
            else
            {
                TextBox1.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1).ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dateOnly = DateTime.Now;
            string todayDate = dateOnly.ToShortDateString();
            string status = "pending";
            int sid = Convert.ToInt32(Session["stdLoginID"]);
            string s = "insert into reqBook values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+ status + "','"+ sid +"','"+ todayDate +"')";
            DataCon dc = new DataCon();
            dc.SetData(s);
            AutoID();
            Response.Write("<script>alert('Book Request Submitted')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        }
    }
}