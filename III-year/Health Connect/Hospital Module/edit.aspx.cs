using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Module_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        string s = Session["edit"].ToString();

        if (s == "dp")
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else if (s == "dr")
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (s == "lb")
        {
            MultiView1.ActiveViewIndex = 2;
        }

    }
    protected void lb_doctor_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void lb_departments_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 1;
    }
    protected void lb_labs_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 2;
    }
}