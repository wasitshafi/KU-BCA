using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Module_View_PatientDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
        
            MultiView1.ActiveViewIndex = 0;
            txt_patient_id.Focus();
            string str;
           
            connection_class obj = new connection_class();
            str = "select h_id from doctor_table where dr_id=" + Session["userid"].ToString();
            obj.datareader(str);
            if (obj.dr.HasRows)
            {
                obj.dr.Read();
                 ViewState["hid"] = obj.dr[0].ToString();

            }

        }

      


    }
    protected void bt_go_Click(object sender, EventArgs e)
    {
        string str, hid=ViewState["hid"].ToString();
   
        str = "select patient_id as ID,name as Name,age as Age,gender as Gender,address as Address,contact_no as [Contact No.] from patient_booking_table where patient_id=" + txt_patient_id.Text + " and hospital_id=" + hid;
        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView1.DataSource = obj.ds;
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
        {

            lbl_status_byid.Visible = true;
        }
        else
        {
            lbl_status_byid.Visible = false;

        }
    }
    protected void txt_patient_id_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lb_search_by_name_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txt_patient_name.Focus();
    }
    protected void bt_go2_Click(object sender, EventArgs e)
    {
        //MultiView1.ActiveViewIndex = 1;
        string str, hid = ViewState["hid"].ToString();
        str = "select patient_id as ID,name as Name,age as Age,gender as Gender,address as Address,contact_no as [Contact No.] from patient_booking_table where name like'%" + txt_patient_name.Text + "%'" + " and hospital_id=" + hid;
        connection_class obj = new connection_class();
        obj.groupdata(str);
        GridView2.DataSource = obj.ds;
        GridView2.DataBind();
        if (GridView2.Rows.Count == 0)
        {

            lbl_status_byname.Visible = true;
        }
        else
        {
            lbl_status_byname.Visible = false;

        }

    }
    protected void lb_search_by_id_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txt_patient_id.Focus();

    }
}