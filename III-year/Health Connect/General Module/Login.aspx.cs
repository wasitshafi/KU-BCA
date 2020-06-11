using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class General_Module_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
            HttpCookie cooki = Request.Cookies["info"];
            if (cooki != null)
            {
                txt_username.Text = cooki["username"].ToString();
                 
                txt_password.Text = cooki["passwrod"].ToString();
                
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        str = "select * from login_table where user_name = '" + txt_username.Text + "' and password ='" + txt_password.Text + "';";
        connection_class obj = new connection_class();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            if (CheckBox1.Checked)
            {
                HttpCookie cookii = Request.Cookies["info"];
                if (cookii == null)
                {
                                       
                 
                    HttpCookie cooki = new HttpCookie("info");
                    cooki["username"] = txt_username.Text;
                    cooki["passwrod"] = txt_password.Text;
                    cooki.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cooki);
                }

            }
            obj.dr.Read();
            string usertype;
            usertype = obj.dr[3].ToString();
            Session["userid"] = obj.dr[4].ToString();
            if (usertype == "administrator")
            {
                Response.Redirect("~/Admin Module/AdminHome.aspx");

            }
            else if (usertype == "doctor")
            {
                Response.Redirect("~/Doctor Module/DoctorHome.aspx");

            }
            else if (usertype == "hospital")
            {
                Response.Redirect("~/Hospital Module/HospitalHome.aspx");

            }

        }
        else
        {
            Response.Write("<script type ='text/javascript'>alert('Invalid user name.')</script>");
        }
   


    }
    protected void lb_forgtpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgetpwd.aspx");

    }
}