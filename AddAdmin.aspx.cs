using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = "insert into AdminLogin values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            DataCon dc = new DataCon();
            dc.SetData(s);
            Response.Write("<script>alert('Admin Registered Successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";

        }
    }
}