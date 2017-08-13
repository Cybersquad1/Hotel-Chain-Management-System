using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userbranch : System.Web.UI.Page
{
    String brid;
    protected void Page_Load(object sender, EventArgs e)
    {
          
    }
     protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String branch = DropDownList1.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String sqlQ = "select brid from branch where brname='" + branch + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr1 = cmd.ExecuteReader();
        if (dtr1.Read())
        {
            Label3.Text = dtr1.GetString(0);
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

       
          SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
          con.Open();
          String sqlQ = "select brid from branch where brname='"+ DropDownList1.Text+ "'";
          SqlCommand cmd = new SqlCommand(sqlQ, con);
          SqlDataReader dtr = cmd.ExecuteReader();
          if (dtr.Read())
          {
               brid = dtr.GetString(0);
          }  
          Session["bid"] = brid;
          Session["bname"] = DropDownList1.Text; 
        Response.Redirect("useravail.aspx");
    }

   
}