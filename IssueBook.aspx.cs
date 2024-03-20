using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public partial class IssueBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == string.Empty || TextBox2.Text == string.Empty || TextBox3.Text == string.Empty || TextBox4.Text == string.Empty)
            {
                Response.Write("<script>alert('Please fill all the fields')</script>");
            }
            else
            {
                string s = "select * from BookData where BookID = "+ TextBox1.Text +"";
                DataCon dc = new DataCon();
                DataSet ds = new DataSet();
                ds = dc.GetDataSet(s);
                if (ds.Tables[0].Rows.Count == 0 )
                {
                    Response.Write("<script>alert('Book Not Found')</script>");
                }
                else
                {
                    string s1 = "select * from StdData where StdRollNo = " + TextBox2.Text + "";
                    DataCon dc1 = new DataCon();
                    DataSet ds1 = new DataSet();
                    ds1 = dc1.GetDataSet(s1);
                    if (ds1.Tables[0].Rows.Count == 0)
                    {
                        Response.Write("<script>alert('Student Not Found')</script>");
                    }
                    else
                    {
                        string status = "Issued";
                        string s2 = "select * from IssueBook where BookID = " + TextBox1.Text + " and Status ='"+ status +"'";
                        DataCon dc2 = new DataCon();
                        DataSet ds2 = new DataSet();
                        ds2 = dc2.GetDataSet(s2);
                        if (ds2.Tables[0].Rows.Count == 0)
                        {
                            Issue();
                        }
                        else
                        {
                            Response.Write("<script>alert('Book already issued')</script>");
                        }
                        
                    }
                }
            }
            
        }
        private void Issue()
        {
            string status = "issued";
            string s = "insert into IssueBook values(" + TextBox1.Text + "," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','"+ status +"')";
            DataCon dc = new DataCon();
            dc.SetData(s);
            setBook_no();
            getBook();
            stData();
            Response.Write("<script>alert('Book Issued Successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        }

        private void setBook_no()
        {
            string book = "No";
            string s = "update BookData set Available = '" + book + "' where BookID = " + TextBox1.Text + "";
            DataCon dc = new DataCon();
            dc.SetData(s);
        }
        private void getBook()
        {
            string s = "select * from BookData where BookID = " + TextBox1.Text + "";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            ViewState["BookName"] = ds.Tables[0].Rows[0][1].ToString();
        }
        private void stData()
        {
            string BookName = ViewState["BookName"].ToString();
            string s = "update StdData set Issue = '" + BookName + "' where StdRollNo = " + TextBox2.Text + "";
            DataCon dc = new DataCon();
            dc.SetData(s);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string status = "Issued";
            string s = "select * from IssueBook where BookID = " + TextBox5.Text + " and Status ='"+ status +"'";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.GetDataSet(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Book Not issue')</script>");
            }
            else
            {
                Panel1.Visible = true;
                Label1.Text = ds.Tables[0].Rows[0][1].ToString();
                Label2.Text = ds.Tables[0].Rows[0][2].ToString();
                Label3.Text = ds.Tables[0].Rows[0][3].ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string status = "submitted";
            string status2 = "issued";
            string status3 = "No";
            string status4 = "yes";
            string s1 = "update IssueBook set Status = '"+ status +"' where BookID = "+ TextBox5.Text +" and Status = '"+ status2 +"'";
            DataCon dc1 = new DataCon();
            dc1.SetData(s1);
            Panel1.Visible = false;

            string s2 = "update StdData set Issue = '"+ status3 +"' where StdRollNo = "+ Label1.Text +"";
            DataCon dc2 = new DataCon();
            dc2.SetData(s2);

            string s3 = "update BookData set Available = '"+ status4 + "' where BookID = "+ TextBox5.Text +"";
            DataCon dc3 = new DataCon();
            dc3.SetData(s3);

            Response.Write("<script>alert('Book Submitted Successfully')</script>");
        }
    }
}