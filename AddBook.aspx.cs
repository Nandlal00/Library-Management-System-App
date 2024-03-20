using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoID();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string book = "Yes";
            string s = "insert into BookData values("+ TextBox1.Text +",'"+ TextBox2.Text +"','"+ TextBox3.Text +"','"+ TextBox4.Text +"','"+ book +"')";
            DataCon dc = new DataCon();
            dc.SetData(s);
            Response.Write("<script>alert('Book Added Successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            AutoID();

        }
        protected void AutoID()
        {
            string s = "select * from BookData order by BookID desc";
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
    }
}