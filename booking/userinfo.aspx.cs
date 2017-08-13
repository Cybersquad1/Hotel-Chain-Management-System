using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userinfo : System.Web.UI.Page
{
    String Rate;
    int rate;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Text = Session["bid"].ToString();
        

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        String roomtype = Session["cat"].ToString();
        int urooms = Convert.ToInt32(Session["userrooms"].ToString());
        

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();

        String sqlQ = "select rate from roomdetails where brid=@A and Room_type=@B";
        SqlCommand cmd = new SqlCommand(sqlQ, con);
        cmd.Parameters.Add("@A", Label9.Text);
        cmd.Parameters.Add("@B", roomtype);
        SqlDataReader dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Rate = dtr.GetString(0);
        }
        rate = Convert.ToInt32(Rate);
        Session["gname"] = TextBox2.Text;
        Session["noofpeo"] = DropDownList1.Text;
        Session["age"] = TextBox3.Text;
        Session["address"] = TextBox4.Text;
        Session["contactno"] = TextBox5.Text;
        Session["email"] = TextBox6.Text;
        Session["rate"] = (rate*urooms);

        Response.Redirect("usernext.aspx");
    }
}