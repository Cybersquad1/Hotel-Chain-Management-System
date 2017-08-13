using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
        if (RadioButtonList1.SelectedIndex == 0)
            Response.Redirect("roomstatus.aspx");
        else if (RadioButtonList1.SelectedIndex == 1)
            Response.Redirect("viewstaffinfo.aspx");
        else
            Response.Redirect("updatebranch.aspx");
        
    }
}