using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class useravail : System.Web.UI.Page
{
    String doa;
    String dod;
    String cat;
    int user_rooms;
    int no_rooms;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = Session["bname"].ToString();
        Label7.Text = Session["bid"].ToString();
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        String branch_name=Label8.Text;
        String branch_id=Label7.Text;
        doa = TextBox1.Text;
        dod = TextBox3.Text;
        cat = DropDownList1.Text;
        user_rooms = Convert.ToInt32(TextBox5.Text);
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();     
               
        String sqlQ="select count(room_no) from roomdetails where brid=@A and status=@B and Room_type=@C";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.Parameters.Add("@A", branch_id);
            cmd.Parameters.Add("@B","vacant");
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

                Response.Redirect("userinfo.aspx");
            }
            else
            {
                Response.Redirect("noavail.aspx");
            }



    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["bname"]="";
        Session["bid"] = "";
        Response.Redirect("userbranch.aspx");
    }
}