using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class General_Module_patient_verification_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txt_aadhaar_no.Focus();
        if (!IsPostBack)
        {

        }

    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        Label1.Visible = false;
        txt_opt.Focus();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txt_username.Focus();

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txt_username.Focus();
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txt_username.Focus();

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        txt_emailid.Focus();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        int otp;
        otp = Convert.ToInt32(txt_opt.Text);
        if (otp == Convert.ToInt32(ViewState["otp"]))
        {
            // args= true;
            MultiView1.ActiveViewIndex = 4;
            /**************for hospitals**************************/
            string str;
            str = "select name,h_id from hospital_table;";
            connection_class obj1 = new connection_class();
            obj1.datareader(str);
            if (obj1.dr.HasRows)
            {
                ddl_hopitals.Items.Clear();
                while (obj1.dr.Read())
                {
                    ListItem itm = new ListItem();
                    itm.Text = obj1.dr[0].ToString();
                    itm.Value = obj1.dr[1].ToString();
                    ddl_hopitals.Items.Add(itm);
                }
            }

            refresh_departmnents();
            refresh_timing();

            refresh_doctors();

        }
        else
        {
            Label1.Visible = true;
            MultiView1.ActiveViewIndex = 3;

        }
        //if()
        // int code;
        // code = Convert.ToInt32(txt_opt.Text);
        //lbl_date_status.Visible = false;


        //if (code == )
        //{

        //MultiView1.ActiveViewIndex = 4;
        //txt_name.Focus();

        //    /**************for hospitals**************************/
        //    string str;
        //    str = "select name,h_id from hospital_table1;";
        //    connection_class obj1 = new connection_class();
        //    obj1.datareader(str);
        //    if (obj1.dr.HasRows)
        //    {
        //        ddl_hopitals.Items.Clear();
        //        while (obj1.dr.Read())
        //        {
        //            ListItem itm = new ListItem();
        //            itm.Text = obj1.dr[0].ToString();
        //            itm.Value = obj1.dr[1].ToString();
        //            ddl_hopitals.Items.Add(itm);
        //        }
        //    }




        //}
        //else
        //{
        //    MultiView1.ActiveViewIndex = 3;
        //    Label1.Visible = true;
        //}








    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Random r = new Random();
        long n;
        n = r.Next(1000, 10000);
        ViewState["otp"] = n.ToString();


        MailMessage m = new MailMessage("healthconnectnow@gmail.com", txt_emailid.Text, "subject", n.ToString());
        SmtpClient sc = new SmtpClient();
        sc.EnableSsl = true;
        sc.Port = 587;
        sc.Send(m);



        MultiView1.ActiveViewIndex = 3;
        Label1.Visible = false;
        txt_opt.Focus();
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 3;
        Label1.Visible = false;

        Random r = new Random();
        long n;
        n = r.Next(1000, 10000);
        ViewState["otp"] = n.ToString();


        MailMessage m = new MailMessage("healthconnectnow@gmail.com", txt_emailid.Text, "subject", n.ToString());
        SmtpClient sc = new SmtpClient();
        sc.EnableSsl = true;
        sc.Port = 587;
        sc.Send(m);
        txt_opt.Text = "";
        Response.Write("<script type ='text/javascript'>alert('New OTP has bee send.Please enter new OTP.')</script>");


        MultiView1.ActiveViewIndex = 3;
        Label1.Visible = false;
        txt_opt.Focus();


    }
    protected void Button6_Click(object sender, EventArgs e)
    {


        MultiView1.ActiveViewIndex = 4;
        DateTime dt1, dt2;
        string mnth;
        mnth = DateTime.Now.Month.ToString();
        
        dt1 = DateTime.Now;
        dt2 = Convert.ToDateTime(txt_date.Text);
         
        if (dt2 < dt1)
        {

            lbl_date_status.Text = "Invalid date";
            lbl_date_status.Visible = true ;
            return;

        }
        lbl_date_status.Visible = false;
        MultiView1.ActiveViewIndex = 5;




        lbl_name.Text = txt_name.Text;
        lbl_doctor.Text = ddl_doctors.SelectedItem.Text;
        lbl_hospital.Text = ddl_hopitals.SelectedItem.Text;
        lbl_date.Text = txt_date.Text;
        lbl_time.Text = ddl_timing.SelectedItem.Text;
        string gender;
        if (rd_male.Checked)
        {
            gender = rd_male.Text;
        }
        else
        {
            gender = rd_female.Text;
        }
        string str;
        DateTime date;
        date = Convert.ToDateTime(txt_date.Text);
        
//        str = "insert into patient_booking_table values ('" + txt_name.Text + "','" + txt_fathername.Text + "'," + txt_age.Text + ",'" + gender + "','" + txt_address.Text + "'," + txt_contactno.Text + ",'" + ddl_hopitals.SelectedValue + "','" + ddl_doctors.SelectedValue + "','" + ddl_departments.SelectedValue + "','" + txt_date.Text + "','" + ddl_timing.SelectedItem + "');";
        str = "insert into patient_booking_table values ('" + txt_name.Text + "','" + txt_fathername.Text + "'," + txt_age.Text + ",'" + gender + "','" + txt_address.Text + "'," + txt_contactno.Text + ",'" + ddl_hopitals.SelectedValue + "','" + ddl_doctors.SelectedValue + "','" + ddl_departments.SelectedValue + "','" + txt_date.Text + "','" + ddl_timing.SelectedItem + "');";
            connection_class obj = new connection_class();
        obj.execute(str);
        if(mnth == "1")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='jan'";
        }
        else if(mnth =="2")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='feb'";

        }
                else if(mnth =="3")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='mar'";

        }        else if(mnth =="4")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='apr'";

        }        else if(mnth =="5")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='may'";

        }        else if(mnth =="6")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='jun'";
        }        else if(mnth =="7")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='jul'";
        }        else if(mnth =="8")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='aug'";
        }        else if(mnth =="9")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='sep'";
        }        else if(mnth =="10")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='oct'";
        }        else if(mnth =="11")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='nov'";
        }        else if(mnth =="12")
        {
            str = "update	total_appointments set appointments = appointments +1 where months='dec'";
        }

        obj.execute(str);

        //******
        MailMessage m = new MailMessage("healthconnectnow@gmail.com", txt_emailid.Text, "Appointment Booked", "Dear <b>" + txt_name.Text + "</b> your apponitment has been booked with <b>" + ddl_doctors.SelectedItem.Text + "</b> of <b>" + ddl_hopitals.SelectedItem.Text + "</b> on <b>" + txt_date.Text + "</b> at " + ddl_timing.SelectedItem.Text + "</b>.");
        SmtpClient sc = new SmtpClient();
        sc.EnableSsl = true;
        sc.Port = 587;
        sc.Send(m);

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
        string str;
        str = "select patient_id,name,contact_no,dr_id,date,time from patient_booking_table where patient_id = (select max(patient_id) from patient_booking_table where patient_id<=(select max(patient_id) from patient_booking_table))";

        connection_class obj = new connection_class();
        obj.groupdata(str);
        GridView1.DataSource = obj.ds;
        GridView1.DataBind();



    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

        if (ddl_hopitals.SelectedValue == "0")
        {
            args.IsValid = false;
        }





    }
    protected void ddl_hopitals_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        /****************for departments*************************/

        refresh_departmnents();

    }
    protected void ddl_departments_SelectedIndexChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 4;
        /***************for timming**************************/
        refresh_timing();

    }
    protected void ddl_timing_SelectedIndexChanged(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 4;
        /***************for doctors**************************/
        refresh_doctors();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txt_aadhaar_no.Focus();
    }
    protected void ddl_doctors_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    public void refresh_departmnents()
    {
        string str;
        str = "select dept_name,dept_id from dept_table where h_id =" + ddl_hopitals.SelectedValue + ";";
        connection_class obj2 = new connection_class();
        obj2.datareader(str);
        ddl_departments.Enabled = true;
        if (obj2.dr.HasRows)
        {
            ddl_departments.Items.Clear();
            ddl_timing.Items.Clear();
            ddl_doctors.Items.Clear();
            while (obj2.dr.Read())
            {
                ListItem itm2 = new ListItem();
                itm2.Text = obj2.dr[0].ToString();
                itm2.Value = obj2.dr[1].ToString();
                ddl_departments.Items.Add(itm2);
            }
        }


    }
    public void refresh_timing()
    {
        ddl_doctors.Enabled = true;
        string str;
        str = "select time,shift_id from shift_time_table;";
        connection_class obj3 = new connection_class();
        obj3.datareader(str);
        if (obj3.dr.HasRows)
        {
            ddl_timing.Items.Clear();
            ddl_doctors.Items.Clear();
            while (obj3.dr.Read())
            {
                ListItem itm3 = new ListItem();
                itm3.Text = obj3.dr[0].ToString();
                itm3.Value = obj3.dr[1].ToString();
                ddl_timing.Items.Add(itm3);
            }
        }
    }
    public void refresh_doctors()
    {
        string str;
        //str = "select doctor_table1.name,doctor_table1.dr_id from doctor_table1,shift_table where shift_table.dr_id = doctor_table1.dr_id  and shift_table.shift_id='" + ddl_timing.SelectedValue + "' and shift_table.dept_id=" + ddl_departments.SelectedValue;

        str = "select doctor_table.name,doctor_table.dr_id from doctor_table,shift_table where shift_table.dr_id = doctor_table.dr_id  and shift_table.shift_id='" + ddl_timing.SelectedValue.ToString() + "' and shift_table.dept_id=" + ddl_departments.SelectedValue.ToString();

        connection_class obj4 = new connection_class();
        obj4.datareader(str);
        ddl_doctors.Enabled = true;
        ddl_doctors.ForeColor = System.Drawing.Color.Black;
        if (obj4.dr.HasRows)
        {
            ddl_doctors.Items.Clear();
            while (obj4.dr.Read())
            {
                ListItem itm4 = new ListItem();
                itm4.Text = obj4.dr[0].ToString();
                itm4.Value = obj4.dr[1].ToString();
                ddl_doctors.Items.Add(itm4);
            }
        }
    }



    protected void txt_date_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txt_opt_TextChanged(object sender, EventArgs e)
    {

    }
}