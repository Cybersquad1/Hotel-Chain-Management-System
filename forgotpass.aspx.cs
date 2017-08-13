using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgotpass : System.Web.UI.Page
{
    string forg;
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
         forg = Request.QueryString["forgot"];
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = TextBox3.Text;
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        // setup Smtp authentication
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString);
        con.Open();

        if(forg=="guest")
        {
            String sqlQ = "select gid from guestper where email=@A";
            SqlCommand cmd = new SqlCommand(sqlQ, con);
            cmd.Parameters.Add("@A", email);
            SqlDataReader dtr1 = cmd.ExecuteReader();
            if (dtr1.Read())
            {
               id  = dtr1.GetString(0);
            }
            dtr1.Close();
        }
        else if(forg=="admin")
        {
            String sqlQ = "select password from adminlogin where adminname=@A";
            SqlCommand cmd = new SqlCommand(sqlQ, con);
            cmd.Parameters.Add("@A", email);
            SqlDataReader dtr1 = cmd.ExecuteReader();
            if (dtr1.Read())
            {
                id = dtr1.GetString(0);
            }
            dtr1.Close();
        }

       
        System.Net.NetworkCredential credentials =
            new System.Net.NetworkCredential("theroyalparadisehotels@gmail.com", "rylprdshtl");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("theroyalparadisehotels@gmail.com");
        msg.To.Add(new MailAddress(TextBox3.Text));

        msg.Subject = "your id & password";
        msg.IsBodyHtml = true;
        msg.Body = string.Format("<html><head></head><body><b>Your id or password is: "+id+"</b></body>");
       // client.Send(msg);

        try
        {
            client.Send(msg);
            Label1.Text = "Your message has been successfully sent.";
        }
        catch (Exception ex)
        {
            Label1.Text = "Error occured while sending your message." + ex.Message;
        }
    }
}