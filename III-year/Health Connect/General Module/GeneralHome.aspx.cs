using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class General_Module_GeneralHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        string str;
        str = "select MAX (patient_id) from patient_booking_table";
        connection_class obj = new connection_class();
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            lbl_total_no_of_appointments.Text = obj.dr[0].ToString();
        }


         DateTime dt = DateTime.Today; 
         int count=0;
         str = "select * from patient_booking_table where date='" + Convert.ToString(dt.ToString("yyyy/MM/dd"))+ "'";
         obj.datareader(str);
         if (obj.dr.HasRows)
         {
             while (obj.dr.Read())
             {
                 count++;
             }
         }
         lbl_todays_appointment.Text = count.ToString();


         count = 0;
         str = "select * from hospital_table";
         obj.datareader(str);
         if (obj.dr.HasRows)
         {
             while (obj.dr.Read())
             {
                 count++;
             }
         }
         lbl_total_no_of_hospital.Text = count.ToString();



         count = 0;
         str = "select * from dept_table";
         obj.datareader(str);
         if (obj.dr.HasRows)
         {
             while (obj.dr.Read())
             {
                 count++;
             }
         }
         lbl_total_no_of_departments.Text = count.ToString();

         count = 0;
         str = "select * from doctor_table";
         obj.datareader(str);
         if (obj.dr.HasRows)
         {
             while (obj.dr.Read())
             {
                 count++;
             }
         }
         lbl_total_no_of_doctors.Text = count.ToString();
   }
}