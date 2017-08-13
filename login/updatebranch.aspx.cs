using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class addbranch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
            String branchid = TextBox3.Text;
            String branchnm = TextBox4.Text;
            String address = TextBox5.Text;
            String city = TextBox6.Text;
            String contact = TextBox7.Text;
              String sqlQ = "select * from branch where brid='" + branchid+ "'";
           SqlCommand cmd = new SqlCommand(sqlQ, con);
            SqlDataReader dtr = cmd.ExecuteReader();
            if (dtr.Read())
                Label5.Text = "Branch Id already Exist";
            else
            {
                dtr.Close();
              sqlQ = "insert into branch values(@A,@B,@C,@D,@E,@F)";
              SqlCommand cmd1 = new SqlCommand(sqlQ, con);
            cmd1.Parameters.AddWithValue("@A", branchid);
            cmd1.Parameters.AddWithValue("@B", branchnm);
            cmd1.Parameters.AddWithValue("@C", address);
            cmd1.Parameters.AddWithValue("@D", city);
            cmd1.Parameters.AddWithValue("@E", contact);
            cmd1.Parameters.AddWithValue("@F", "~/images/" + FileUpload1.FileName);
            cmd1.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Image4.ImageUrl = "";
            Label5.Text = "Branch Record inserted successfully";
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
        Label5.Text = "Branch Record deleted successfully";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();
            String branchid = TextBox3.Text;
            String branchnm = TextBox4.Text;
            String address = TextBox5.Text;
            String city = TextBox6.Text;
            String contact = TextBox7.Text;
              String sqlQ = "select * from branch where brid='" + branchid+ "'";
           SqlCommand cmd = new SqlCommand(sqlQ, con);
            SqlDataReader dtr = cmd.ExecuteReader();
            if (!dtr.Read())
                Label5.Text = "Branch you entered does not Exist";
            else
            {
                dtr.Close();
              sqlQ = "update  branch set brid=@A,brname=@B,address=@C,city=@D,contact_no=@E,pic_id=@F where brid='"+branchid+"'";
              SqlCommand cmd1 = new SqlCommand(sqlQ, con);
            cmd1.Parameters.AddWithValue("@A", branchid);
            cmd1.Parameters.AddWithValue("@B", branchnm);
            cmd1.Parameters.AddWithValue("@C", address);
            cmd1.Parameters.AddWithValue("@D", city);
            cmd1.Parameters.AddWithValue("@E", contact);
            cmd1.Parameters.AddWithValue("@F", "~/images/" + FileUpload1.FileName);
            cmd1.ExecuteNonQuery();
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Image4.ImageUrl = "";
            
            Label5.Text = "Branch Record updated successfully";
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
            Image4.ImageUrl = "~/images/" + FileUpload1.FileName;
        }
        else
            Label7.Text = "file is not selected";

    }
}

