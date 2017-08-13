using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session["bname"] = DropDownList2.Text;
        Session["doa"] = TextBox1.Text;
        Session["dod"] = TextBox2.Text;
        Session["noofpeo"] = DropDownList1.Text;
        Response.Redirect("directbook.aspx");
    }
}
