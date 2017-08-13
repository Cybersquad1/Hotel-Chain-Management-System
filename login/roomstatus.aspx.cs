using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class roomstatus : System.Web.UI.Page
{
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
 
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        String brid = DropDownList3.Text;
        if (Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
            con.Open();

            String sqlQ = "select count(status) from roomdetails where brid='" + brid + "' and status='booked'";
            SqlCommand cmd = new SqlCommand(sqlQ, con);
            SqlDataReader dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                count = dtr.GetInt32(0);
            }
            Label5.Text = Convert.ToString(count);
            dtr.Close();
             sqlQ = "select count(status) from roomdetails where brid='" + brid + "' and status='vacant'";
              cmd = new SqlCommand(sqlQ, con);
              dtr = cmd.ExecuteReader();
             if (dtr.Read())
             {
                 count = dtr.GetInt32(0);
             }
             Label7.Text = Convert.ToString(count);
             dtr.Close();
             sqlQ = "select count(status) from roomdetails where brid='" + brid + "'";
             cmd = new SqlCommand(sqlQ, con);
             dtr = cmd.ExecuteReader();
             if (dtr.Read())
             {
                 count = dtr.GetInt32(0);
             }
             Label3.Text = Convert.ToString(count);
        }
    }
}
