using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Library_Management_System_App
{
    public class DataCon
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        public DataCon()
        {
            con = new SqlConnection(@"Data Source=HP-PC\SQLEXPRESS;Initial Catalog=""Library Management System"";Integrated Security=True");
            con.Open();
        }
        public void SetData(string s)
        {
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
        }
        public DataSet GetDataSet(string s)
        {
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(s, con);
            da.Fill(ds);
            return ds;
        }

    }
}