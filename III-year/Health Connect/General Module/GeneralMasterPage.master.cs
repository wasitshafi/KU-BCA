using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class General_Module_GeneralMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        string surl = Request.Url.ToString();
        if (surl.Contains("/GeneralHome.aspx"))
            Generalhome.Attributes.Add("class", "active");
        else if (surl.Contains("/patient_verification_booking.aspx"))
            bookapp.Attributes.Add("class", "active");
        else if (surl.Contains("/Login.aspx"))
            login.Attributes.Add("class", "active");
    }
}
