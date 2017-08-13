using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class location : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["hname"]="The Royal Paradise Hotel Goa";
        Response.Redirect("hoteldetail.aspx");

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["hname"] = "The Royal Paradise Hotel Mumbai";
        Response.Redirect("hoteldetail.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["hname"] = "The Royal Paradise Hotel Lucknow";
        Response.Redirect("hoteldetail.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["hname"] = "The Royal Paradise Hotel Patna ";
        Response.Redirect("hoteldetail.aspx");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Session["hname"] = "The Royal Paradise Hotel Jaipur";
        Response.Redirect("hoteldetail.aspx");

    }
}