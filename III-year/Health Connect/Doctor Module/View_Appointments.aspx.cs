using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Module_View_Appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lbl_statusatus.Visible = false;
        if (!IsPostBack)
        {
            string str, drid = Session["userid"].ToString(); 
            DateTime dt = DateTime.Today;   
            str = "select patient_id as ID,name as Name,time as Time,gender as Gender,address as Address,contact_no as [Contact No.] from patient_booking_table where dr_id="+ drid +" and date='" + Convert.ToString(dt.ToString("yyyy/MM/dd"))+ "'";
  
            connection_class obj = new connection_class();
            obj.groupdata(str);
           
            GridView1.DataSource = obj.ds;
            GridView1.DataBind();
            if(GridView1.Rows.Count == 0)

            {
             
                lbl_status.Visible = true;


            }
            
        }
    }
}