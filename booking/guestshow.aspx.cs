using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class booking_usershow : System.Web.UI.Page
{
    String brid, room_no, categories;
    SqlConnection con = null;
     
    protected void Page_Load(object sender, EventArgs e)
    {

        Label2.Text = Session["guid"].ToString();               
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["guid"] = " ";
        Response.Redirect("~/home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();

        String sqlQ4="select brid,noofroom from guestnext where gid=@A";
        SqlCommand cmd4 = new SqlCommand(sqlQ4, con);
        cmd4.Parameters.Add("@A", Session["guid"]);
        SqlDataReader dtr4 = cmd4.ExecuteReader();
        if (dtr4.Read())
        {
            brid = dtr4.GetString(0);
            room_no = dtr4.GetString(1);
        }
        dtr4.Close();
        String sqlQ = "delete from guestnext where gid=@A";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.Parameters.Add("@A",Label2.Text);
        cmd.ExecuteNonQuery();

        String sqlQ1 = "delete from guestper where gid=@A";
        SqlCommand cmd1 = new SqlCommand(sqlQ1, con);
        cmd1.Parameters.Add("@A", Label2.Text);
        cmd1.ExecuteNonQuery();


        String sqlQ3 = "update roomdetails set status='vacant' where brid=@A and room_no=@B";
        SqlCommand cmd3 = new SqlCommand(sqlQ3, con);
        cmd3.Parameters.Add("@A", brid);
        cmd3.Parameters.Add("@B", room_no);
       
        cmd3.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/booking/delsucc.aspx");
    }
    
}