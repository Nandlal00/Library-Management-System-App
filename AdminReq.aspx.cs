using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class AdminReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select * from reqBook ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        public void Reject(object sender, CommandEventArgs e)
        {
            string reciver = e.CommandName.ToString();
            string s = "update reqBook set ReqStatus ='Rejected' where ReqStatus = 'Pending'";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
        }
        public void Accept(object sender, CommandEventArgs e)
        {
            string reciver = e.CommandName.ToString();
            string s = "update reqBook set ReqStatus ='Accept' where ReqStatus = 'Pending'";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
        }
        public void Resolve(object sender, CommandEventArgs e)
        {
            string reciver = e.CommandName.ToString();
            String s = "select * from reqBook where ReqID = "+ Convert.ToInt32(reciver) +"";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            Session["Req-ID"] = ds.Tables[0].Rows[0][0].ToString();
            Session["B-Name"] = ds.Tables[0].Rows[0][1].ToString();
            Session["B-Author"] = ds.Tables[0].Rows[0][2].ToString();
            Session["B-Subject"] = ds.Tables[0].Rows[0][3].ToString();

            Response.Redirect("AddReqBook.aspx");

        }
    }
}