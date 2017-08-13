using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String adname = TextBox3.Text;
        String pass = TextBox4.Text;
        String conpass = TextBox5.Text;
        if (pass == conpass)
        {
            String sqlQ = "insert into adminlogin values(@A,@B)";
            SqlCommand cmd = new SqlCommand(sqlQ, con);
            cmd.Parameters.AddWithValue("@A", adname);
            cmd.Parameters.AddWithValue("@B", pass);
            cmd.ExecuteNonQuery();
            Label4.Text = "Admin Record is inserted successfully";
        }
        else
        {
            Label4.Text = "Both Password fields are not Matching ";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}