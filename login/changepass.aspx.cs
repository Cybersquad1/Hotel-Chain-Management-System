using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome " + Session["un"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        string u = Session["un"].ToString();
        String np = TextBox3.Text;
        String rp = TextBox4.Text;
        if (np == rp)
        {
            String sqlQ = "update adminlogin set  password=@A where adminname=@B";
            SqlCommand cmd = new SqlCommand(sqlQ, con);
            cmd.Parameters.AddWithValue("@A", np);
            cmd.Parameters.AddWithValue("@B", u);
            cmd.ExecuteNonQuery();
            Label4.Text = "Record is Updated";
        }
        else
            Label4.Text = "Both Password fields are not Matching ";
    }
    public object np { get; set; }
}