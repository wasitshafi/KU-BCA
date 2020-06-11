using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Module_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("~/General Module/login.aspx");
        }

        string surl = Request.Url.ToString();
        if (surl.Contains("/AdminHome.aspx"))
            home.Attributes.Add("class", "active");
        else if (surl.Contains("/AdminnewHospital.aspx"))
            addnewhospital.Attributes.Add("class", "active");
        else if (surl.Contains("/View_Appointments.aspx"))
            viewappointments.Attributes.Add("class", "active");
        else if (surl.Contains("/SearchAll.aspx"))
            search_anchor.Attributes.Add("class", "active");
    }


    protected void Lb_h_Click(object sender, EventArgs e)
    {
        Session["search"] = "h";
        Response.Redirect("~/Admin Module/SearchAll.aspx");

    }
    protected void lb_d_Click1(object sender, EventArgs e)
    {
        Session["search"] = "d";
        Response.Redirect("~/Admin Module/SearchAll.aspx");

    }
    protected void lb_p_Click1(object sender, EventArgs e)
    {
        Session["search"] = "p";
        Response.Redirect("~/Admin Module/SearchAll.aspx");
    }
}
