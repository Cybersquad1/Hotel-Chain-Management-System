using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class room : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String branchid = TextBox3.Text;
        String room_no = TextBox4.Text;
        String roomtype = DropDownList5.Text;
        String status = DropDownList4.Text;
        String rent = TextBox6.Text;
        String sqlQ = "select * from roomdetails where brid='" + branchid + "' and room_no='" + room_no + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Label6.Text = "This Room is already insreted ";
          
        }
        else
        {
            dtr.Close();
            sqlQ = "insert into roomdetails values(@A,@B,@C,@D,@E)";
            SqlCommand cmd1 = new SqlCommand(sqlQ, con);
            cmd1.Parameters.AddWithValue("@A", branchid);
            cmd1.Parameters.AddWithValue("@B", room_no);
            cmd1.Parameters.AddWithValue("@C", roomtype);
            cmd1.Parameters.AddWithValue("@D", status);
            cmd1.Parameters.AddWithValue("@E", rent);
            cmd1.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
            Label6.Text = "Room Record inserted successfully";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String brnid = TextBox3.Text;
        String room_no = TextBox4.Text;
        String sqlQ = "delete from roomdetails where brid='" + brnid + "' and room_no='" + room_no + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.ExecuteNonQuery();
        Label6.Text = "Branch Record deleted successfully";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String branchid = TextBox3.Text;
        String room_no = TextBox4.Text;
        String roomtype = DropDownList5.Text;
        String status = DropDownList4.Text;
        String rent = TextBox6.Text;
        String sqlQ = "select * from roomdetails where brid='" + branchid + "' and room_no='" + room_no + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (!dtr.Read())
            Label6.Text = "Room Record you entered does not Exist";
        else
        {
            dtr.Close();
            sqlQ = "update staff set brid=@A,room_no=@B,Room_type=@C,status=@D,rate=@E where brid='" + branchid + "' and room_no='" + room_no + "'";
            SqlCommand cmd1 = new SqlCommand(sqlQ, con);
            cmd1.Parameters.AddWithValue("@A", branchid);
            cmd1.Parameters.AddWithValue("@B", room_no);
            cmd1.Parameters.AddWithValue("@C", roomtype);
            cmd1.Parameters.AddWithValue("@D", status);
            cmd1.Parameters.AddWithValue("@E", rent);
            cmd1.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
            Label5.Text = "Room Record updated successfully";
        }
    }
}