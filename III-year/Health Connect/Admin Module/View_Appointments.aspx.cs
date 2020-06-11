using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Module_View_Appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str;
            // DateTime dt = DateTime.Today;
           //  str = "select patient_id as ID,name as Name,time as Time,gender as Gender,address as Address,contact_no as [Contact No.] from patient_booking_table;
              str = "select patient_id as P_ID,name as Name,fathers_name as Parentage,age as Age,gender as Gender,contact_no as [Contact No],dr_id as Dr_ID,date as [Date of Appointment] from Patient_booking_table";
           // str = "select * from patient_booking_table";
            connection_class obj = new connection_class();
            obj.groupdata(str);
            GridView2.DataSource = obj.ds;
            GridView2.DataBind();

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }



  
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        str = "select patient_id as P_ID,name as Name,fathers_name as Parentage,age as Age,gender as Gender,contact_no as [Contact No],dr_id as Dr_ID,date as [Date of Appointment] from patient_booking_table where dr_id=" + txt_srch_dr_id.Text;
       // str="select * from 
        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView2.DataSource = obj.ds;
        GridView2.DataBind();
    }
}