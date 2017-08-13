using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class updatestaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String branchid = TextBox3.Text;
        String eid = TextBox4.Text;
        String ename = TextBox5.Text;
        String desig = TextBox6.Text;
        String contact = TextBox7.Text;
        String sqlQ = "select * from staff where brid='" + branchid + "' and empid='" + eid + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (dtr.Read())
            Label6.Text = "Member is already existed in this Branch";
        else
        {
            dtr.Close();
            sqlQ = "insert into staff values(@A,@B,@C,@D,@E)";
            SqlCommand cmd1 = new SqlCommand(sqlQ, con);
            cmd1.Parameters.AddWithValue("@A", branchid);
            cmd1.Parameters.AddWithValue("@B", eid);
            cmd1.Parameters.AddWithValue("@C", ename);
            cmd1.Parameters.AddWithValue("@D", desig);
            cmd1.Parameters.AddWithValue("@E", contact);
            cmd1.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label6.Text = "Staff Record inserted successfully";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String brnid = TextBox3.Text;
        String sqlQ = "delete from branch where brid='" + brnid + "' & ";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.ExecuteNonQuery();
        Label6.Text = "Branch Record deleted successfully";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
        String branchid = TextBox3.Text;
        String empid = TextBox4.Text;
        String empname = TextBox5.Text;
        String desig = TextBox6.Text;
        String contact = TextBox7.Text;
        String sqlQ = "select * from staff where brid='" + branchid + "' and empid='" + empid + "'";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (!dtr.Read())
            Label6.Text = "Employee Record you entered does not Exist";
        else
        {
            dtr.Close();
            sqlQ = "update staff set brid=@A,empid=@B,empname=@C,designation=@D,contact_no=@E where brid='" + branchid + "' and empid='" + empid + "'";
            SqlCommand cmd1 = new SqlCommand(sqlQ, con);
            cmd1.Parameters.AddWithValue("@A", branchid);
            cmd1.Parameters.AddWithValue("@B", empid);
            cmd1.Parameters.AddWithValue("@C", empname);
            cmd1.Parameters.AddWithValue("@D", desig);
            cmd1.Parameters.AddWithValue("@E", contact);
            cmd1.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label6.Text = "staff Record updated successfully";
        }
    }
}