using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class General_Module_searchapp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        str = "select * from patient_booking_table where patient_id='" + txt_appid.Text + "' and contact_no='" + txt_cno.Text + "'";
        connection_class obj = new connection_class();
        obj.groupdata(str);
        GridView1.DataSource = obj.ds;
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0) 
        {
            Response.Write("<script type='text/javascript'>alert('No such appointment found')</script>");
        }
         
    }
}