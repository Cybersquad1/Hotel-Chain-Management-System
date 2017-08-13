using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
       
    protected void Button1_Click1(object sender, EventArgs e)
    {
 Session["un"] = TextBox3.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String a= TextBox3.Text;
        String p = TextBox4.Text;
        String sqlQ = "select * from adminlogin where adminname='" + a + "'and password='" + p + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (dtr.Read())

            Response.Redirect("adminhome.aspx");
        else

            Label3.Text = "Wrong Username or Password";
        con.Close();
    
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("forgotpass.aspx?forgot=admin");
    }
}