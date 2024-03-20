using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class AddReqBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            AutoID();
            TextBox6.Text = Session["B-Name"].ToString();
            TextBox7.Text = Session["B-Author"].ToString();
            TextBox8.Text = Session["B-Subject"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string avl = "Yes";
            string s = "insert into BookData values(" + TextBox5.Text + ",'"+ TextBox6.Text +"','"+ TextBox7.Text +"','"+ TextBox8.Text +"','"+ avl +"')";
            DataCon dc = new DataCon();
            dc.SetData(s);
            UpdateStatus();
            AutoID();


            Response.Write("<script>alert('Book Added Successfully')</script>");
        }
        protected void AutoID()
        {
            string s = "select * from BookData order by BookID desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox5.Text = "1";
            }
            else
            {
                TextBox5.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1).ToString();
            }
        }

        protected void UpdateStatus()
        {
            int reqid = Convert.ToInt32(Session["Req-ID"]);
            string msg = "Book Added with ID = "+ TextBox5.Text +"";
            string s = "update reqBook set ReqStatus = '"+ msg + "' where ReqID = "+ reqid +"";
            DataCon dc = new DataCon();
            dc.SetData(s);
        }
    }
}