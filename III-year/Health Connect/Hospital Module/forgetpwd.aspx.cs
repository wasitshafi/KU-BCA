using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Hospital_Module_forgetpwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
   }
    protected void lb_next1_Click(object sender, EventArgs e)
    {
        string str;
        
        str = "select * from doctor_table where emailid='" + txt_useremail + "'";
        connection_class obj = new connection_class();

        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            ViewState["drid"] = obj.dr[0].ToString();//storing drid
            MultiView1.ActiveViewIndex = 1;

            //**************************************

            Random r = new Random();
            long n;
            n = r.Next(1000, 10000);
            ViewState["otp"] = n.ToString();

            MailMessage m = new MailMessage("healthconnectnow@gmail.com", txt_useremail.Text, "subject","Your otp is " + n.ToString());
            SmtpClient sc = new SmtpClient();
            sc.EnableSsl = true;
            sc.Port = 587;
            sc.Send(m);

            



        }
        else
        {
            Response.Write("<script  type='text/javascript'>alert('Invalid email id')</script>");
        }

    }
    protected void lb_next2_Click(object sender, EventArgs e)
    {
        int otp;
        otp = Convert.ToInt32(txt_otp.Text);
        if (otp == Convert.ToInt32(ViewState["otp"]))
        {
            MultiView1.ActiveViewIndex =2;
          
        }
        else
        {
            Label1.Visible = true;
            MultiView1.ActiveViewIndex = 1;
        }
    }
    protected void lb_next3_Click(object sender, EventArgs e)
    {
        string str,drid=ViewState["drid"].ToString();
        connection_class obj = new connection_class();
        str = "update login_table set password ='" + txt_newpwd.Text + "' where userid='" + drid +"'";
        Response.Write("<script type='text/javascript'>alert('password has successfully changed');</script>");
        Response.Redirect("~/General Module/Login.aspx");

    }
    protected void txt_useremail_TextChanged(object sender, EventArgs e)
    {

    }
}