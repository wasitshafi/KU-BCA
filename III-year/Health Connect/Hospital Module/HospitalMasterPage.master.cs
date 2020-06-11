using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Module_HospitalMasterPage : System.Web.UI.MasterPage
{
   public static int xyz = 0;
  
    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/General Module/GeneralHome.aspx");
    //}
    //protected void lb_doctors_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Hospital Module/edit.aspx");
    //}
    //protected void lb_departments_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Hospital Module/edit.aspx");
    //}
    //protected void lb_labs_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Hospital Module/edit.aspx");
    //}
    //protected void func1(object source, EventArgs e)
    //{
    //    Response.Redirect("~/Hospital Module/edit.aspx");
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("~/General Module/login.aspx");
        }
        string surl;
        surl = Request.Url.ToString();
        if (surl.Contains("/HospitalHome.aspx"))
            home.Attributes.Add("class", "active");
        else   if (surl.Contains("/Add_Departments.aspx"))
            adddepartments.Attributes.Add("class", "active");
        else if (surl.Contains("/Add_Doctors.aspx"))
            adddoctor.Attributes.Add("class", "active");
        else if (surl.Contains("/Add_Lab.aspx"))
            addlab.Attributes.Add("class", "active");
        else if (surl.Contains("/edit.aspx"))
            edit.Attributes.Add("class", "active");
    }
    protected void lb_departments_Click(object sender, EventArgs e)
    {
        Session["edit"] = "dp";
        Response.Redirect("~/Hospital Module/edit.aspx");

    }
    protected void lb_doctors_Click(object sender, EventArgs e)
    {

        Session["edit"] = "dr";
        Response.Redirect("~/Hospital Module/edit.aspx");

    }
    protected void lb_labs_Click(object sender, EventArgs e)
    {

        Session["edit"] = "lb";
        Response.Redirect("~/Hospital Module/edit.aspx");

    }
}
