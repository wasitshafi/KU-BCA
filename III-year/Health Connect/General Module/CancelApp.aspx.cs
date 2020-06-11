using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class General_Module_CancelApp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string  str;
        str = "select * from patient_booking_table where patient_id='" + txt_p_id.Text  + "' and contact_no='" + txt_c_no.Text + "'";
        connection_class obj = new connection_class();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
//DateTime dt1, dt2;
            //dt1 = DateTime.Today;
            //dt2 = Convert.ToDateTime(obj.dr[6].ToString());
            //if (dt1 > dt2)
            //{
//}
            //else
            //{
            //    Response.Write("<script type='text/javascript'>alert('Appointment date expired....!')</script>");
            //}
        ViewState["pid"] = Convert.ToString(obj.dr[0].ToString());
        str = "select * from patient_booking_table where patient_id='" + txt_p_id.Text + "'";
        obj.groupdata(str);
        GridView1.DataSource = obj.ds;
        GridView1.DataBind();
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('No such patient found')</script>");
        }
    }
    protected void txt_p_id_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string str;
        str = "select * from patient_booking_table where contact_no=" + txt_c_no.Text;
        connection_class obj = new connection_class();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            ViewState["pid"] = Convert.ToString(obj.dr[0].ToString());
            MultiView1.ActiveViewIndex = 1;

        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('No such patient found')</script>");
        }

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
            }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        str = "delete from patient_booking_table where patient_id='" + txt_p_id.Text + "' and contact_no='" + txt_c_no.Text + "'";
        connection_class obj = new connection_class();
        obj.execute(str);
        Response.Write("<script type='text/javascript'>alert('Appointment canceled successfully.');window.location='GeneralHome.aspx'</script>");
        //Response.Redirect("~/General Module/GeneralHome.aspx");        
    }
}