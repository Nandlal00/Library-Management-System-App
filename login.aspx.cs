using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Library_Management_System_App
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select * from AdminLogin where UserID = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);

            if (ds.Tables[0].Rows.Count == 0)
            {
                //  Response.Write("<script>alert('Invalid Username or Password')</script>");
                string s1 = "select * from StdData where StdRollNo = '" + TextBox1.Text + "' and stdPassword = '" + TextBox2.Text + "'";
                DataCon dc1 = new DataCon();
                DataSet ds1 = new DataSet();
                ds1 = dc1.GetDataSet(s1);
                if (ds1.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('Please enter correct UserID and Password')</script>");
                }
                else
                {
                    Session["stdName"] = ds1.Tables[0].Rows[0][0].ToString();
                    Session["stdLoginID"] = ds1.Tables[0].Rows[0][1].ToString();
                    Session["stdPassword"] = ds1.Tables[0].Rows[0][2].ToString();
                    Response.Redirect("stdHome.aspx");
                }
            }
            else
            {
                Session["Name"] = ds.Tables[0].Rows[0][0].ToString();
                Session["LoginID"] = ds.Tables[0].Rows[0][1].ToString();
                Session["Password"] = ds.Tables[0].Rows[0][2].ToString();
                Response.Redirect("home.aspx");
            }
        }

    }
}