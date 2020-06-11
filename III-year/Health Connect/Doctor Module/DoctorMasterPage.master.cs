using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Module_DoctorMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("../General Module/login.aspx");
        }
        string surl = Request.Url.ToString();
        if (surl.Contains("/View_Appointments.aspx"))
            viewappointments.Attributes.Add("class", "active");
        else if (surl.Contains("View_PatientDetails/.aspx"))
            viewpatientdetails.Attributes.Add("class", "active");
    }
    //protected void home(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/Admin Module/AdminHome.aspx");
    //}

}
