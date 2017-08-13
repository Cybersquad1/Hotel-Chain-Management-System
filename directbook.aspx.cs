using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class booking_directbook : System.Web.UI.Page
{
    int no_rooms;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text=Session["bname"].ToString();
        Label3.Text = Session["doa"].ToString();
        Label4.Text = Session["dod"].ToString();
        String nop = Session["noofpeo"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();

        String sqlQ = "select brid from branch where brname=@A";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.Parameters.Add("@A",Session["bname"] );

        SqlDataReader dtr1 = cmd.ExecuteReader();
        if (dtr1.Read())
        {
            Label1.Text = dtr1.GetString(0);
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["bname"] ="";
        Session["doa"] = "";
        Session["dod"] = "";
        Session["noofpeo"] = "";
        Response.Redirect("home.aspx");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        String branch_name = Label2.Text;
        String branch_id = Label1.Text;
        String doa = Label3.Text;
        String dod = Label4.Text;
        String cat = DropDownList3.Text;
        Int32 user_rooms = Convert.ToInt32(TextBox3.Text);


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();

        String sqlQ = "select count(room_no) from roomdetails where brid=@A and status=@B and Room_type=@C";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.Parameters.Add("@A", branch_id);
        cmd.Parameters.Add("@B", "vacant");
        cmd.Parameters.Add("@C", cat);
        SqlDataReader dtr1 = cmd.ExecuteReader();
        if (dtr1.Read())
        {
            no_rooms = dtr1.GetInt32(0);
        }


        if (no_rooms >= user_rooms)
        {
            Session["bname"] = branch_name;
            Session["bid"] = branch_id;
            Session["doa"] = doa;
            Session["dod"] = dod;
            Session["cat"] = cat;
            Session["userrooms"] = user_rooms;

            Response.Redirect("~/booking/userinfo.aspx");
        }
        else
        {
            Response.Redirect("~/booking/noavail.aspx");
        }

    }
}