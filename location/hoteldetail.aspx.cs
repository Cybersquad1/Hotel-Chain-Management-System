using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class hoteldetail : System.Web.UI.Page
{
    String brid;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["hname"].ToString();
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String sqlQ = "select brid, address, contact_no, pic_id from  branch where brname='" + Session["hname"] + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            brid = dtr.GetString(0);
            Label5.Text = dtr.GetString(1);
            Label4.Text = dtr.GetString(2);
            Image5.ImageUrl = dtr.GetString(3);

        }
        dtr.Close();
        Label6.Text = brid;
        
        String sql = "select detail from brdetail where brid='"+brid+"'";
        SqlCommand cmd1 = new SqlCommand(sql, con);
        SqlDataReader dtr1 = cmd1.ExecuteReader();
        if (dtr1.Read())
        {
            Label2.Text = dtr1.GetString(0);
        }
       
    }
}