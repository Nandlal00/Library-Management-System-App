using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class AddStd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoID();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Issue_book = "No";
            string s = "insert into StdData values('"+ TextBox1.Text +"',"+ TextBox2.Text +",'"+ TextBox3.Text +"','"+ Issue_book +"')";
            DataCon dc = new DataCon();
            dc.SetData(s);
            AutoID();
            Response.Write("<script>alert('Student Added Successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            
        }
        protected void AutoID()
        {
            string s = "select * from StdData order by StdRollNo desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox2.Text = "101";
            }
            else
            {
                TextBox2.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][1].ToString()) + 1).ToString();
            }
        }
    }
}