using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class usernext : System.Web.UI.Page
{
    string guid,room_no;
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        Label1.Text = "WELCOME  "+Session["gname"].ToString();
       
        Label9.Text = Session["userrooms"].ToString();
        Label10.Text = Session["doa"].ToString();
        Label11.Text = Session["dod"].ToString();
        Label12.Text = Session["cat"].ToString();
        Label13.Text = Session["rate"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        guid= random.Next(10000, 99999).ToString(); 

        int total_room = Convert.ToInt32(Label9.Text);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        for (int i = 0; i < total_room; i++)
        {

            String sqlQ2 = "select room_no from roomdetails where brid=@A and Room_type=@B and status=@C ";
            SqlCommand cmd2 = new SqlCommand(sqlQ2, con);
            cmd2.Parameters.Add("@A", Session["bid"].ToString());
            cmd2.Parameters.Add("@B", Session["cat"].ToString());
            cmd2.Parameters.Add("@C", "vacant");
            SqlDataReader dtr2 = cmd2.ExecuteReader();
            if (dtr2.Read())
            {
                room_no = dtr2.GetString(0);
            }
            dtr2.Close();
            if (i == 0)
            {
                String sqlQ = "insert into guestper values(@A,@B,@C,@D,@E,@F,@G,@H)";
                SqlCommand cmd = new SqlCommand(sqlQ, con);
                cmd.Parameters.Add("@A", Session["bid"].ToString());
                cmd.Parameters.Add("@B", guid);
                cmd.Parameters.Add("@C", Session["gname"].ToString());
                cmd.Parameters.Add("@D", Session["noofpeo"].ToString());
                cmd.Parameters.Add("@E", Session["age"].ToString());
                cmd.Parameters.Add("@F", Session["address"].ToString());
                cmd.Parameters.Add("@G", Session["contactno"].ToString());
                cmd.Parameters.Add("@H", Session["email"].ToString());
                cmd.ExecuteNonQuery();
            }
            
            String sqlQ1 = "insert into guestnext values(@A,@B,@C,@D,@F,@G,@H)";
            SqlCommand cmd1 = new SqlCommand(sqlQ1, con);
            cmd1.Parameters.Add("@A", Session["bid"].ToString());
            cmd1.Parameters.Add("@B", guid);
            cmd1.Parameters.Add("@C", room_no);
            cmd1.Parameters.Add("@D", Session["doa"].ToString());
            cmd1.Parameters.Add("@F", Session["dod"].ToString());
            cmd1.Parameters.Add("@G", Session["cat"].ToString());
            cmd1.Parameters.Add("@H", Session["rate"].ToString());
            cmd1.ExecuteNonQuery();

            String sqlQ3 = "update  roomdetails set status='booked' where brid=@A and room_no=@B and Room_type=@C";
            SqlCommand cmd3 = new SqlCommand(sqlQ3, con);
            cmd3.Parameters.Add("@A", Session["bid"].ToString());
            cmd3.Parameters.Add("@B", room_no);
            cmd3.Parameters.Add("@C", Session["cat"].ToString());
            cmd3.ExecuteNonQuery();
        }
        con.Close();
        Session["guid"] = guid;
        Response.Redirect("~/booking/booksucc.aspx");
    }
}