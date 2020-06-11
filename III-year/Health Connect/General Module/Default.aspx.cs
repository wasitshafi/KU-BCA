using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class General_Module_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    
        MailMessage m = new MailMessage("healthconnectnow@gmail.com","darparveez121@gmail.com","User ID And Password","Dear User Your Login ID is  : and password : ");  
        SmtpClient sc = new SmtpClient();
        sc.EnableSsl = true;
        sc.Port = 587;
        sc.Send(m);
        Response.Write("<script type ='text/javascript'>alert('Doctor is registerd')</script>"); 
      }
    }