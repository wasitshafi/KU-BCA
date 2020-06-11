using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Module_Add_Doctors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ///**************for hospitals**************************/
            //string str;
            //str = "select name,h_id from hospital_table;";
            //connection_class obj = new connection_class();
            //obj.datareader(str);
            //if (obj.dr.HasRows)
            //{
            //    while (obj.dr.Read())
            //    {
            //        ListItem itm = new ListItem();
            //        itm.Text = obj.dr[0].ToString();
            //        itm.Value = obj.dr[1].ToString();
            //        ddl_h_id.Items.Add(itm);


            //    }
            //}
            string str;
            str = "select name,h_id from hospital_table;";
            connection_class obj = new connection_class();

            str = "select dept_name,dept_id from dept_table where h_id=" + Convert.ToString(Session["userid"].ToString()) + ";";
            obj.datareader(str);
            ddl_dept_id.Items.Clear();
            if (obj.dr.HasRows)
            {
                // ddl_dept_id.Enabled = true;
                //ddl_dept_id.ForeColor = System.Drawing.Color.Black;
                while (obj.dr.Read())
                {
                    ListItem itm = new ListItem();
                    itm.Text = obj.dr[0].ToString();
                    itm.Value = obj.dr[1].ToString();
                    ddl_dept_id.Items.Add(itm);
                }
            }
            
        }
    }
    protected void ddl_h_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        ///****************for departments*************************/
        //string str;
        //str = "select dept_name,dept_id from dept_table where h_id=" + .......+ ";";
        //connection_class obj = new connection_class();
        //obj.datareader(str);
        //ddl_dept_id.Items.Clear();
        //if (obj.dr.HasRows)
        //{
        //    // ddl_dept_id.Enabled = true;
        //    //ddl_dept_id.ForeColor = System.Drawing.Color.Black;
        //    while (obj.dr.Read())
        //    {
        //        ListItem itm = new ListItem();
        //        itm.Text = obj.dr[0].ToString();
        //        itm.Value = obj.dr[1].ToString();
        //        ddl_dept_id.Items.Add(itm);
        //    }
        //}
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string str;
        str = "insert into doctor_table (name,h_id,dept_id,position,qualification,experience,c_no,emailid) values('" + txt_d_name.Text + "','" + Convert.ToString(Session["userid"].ToString()) + "','" + ddl_dept_id.SelectedValue + "','" + ddl_desig.SelectedValue + "','" + txt_qual.Text + "'," + txt_exp.Text + "," + txt_c_no.Text + ",'" + txt_email.Text + "')";
        connection_class obj = new connection_class();
        obj.execute(str);
        str = "select max(dr_id) from doctor_table";
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            string did = obj.dr[0].ToString();
            string psw;
            Random r = new Random();
            psw = txt_c_no.Text + "_" + r.Next(1000, 10000).ToString();
            str = "insert into login_table values('" + txt_d_name.Text + "','" + psw + "','" + ddl_desig.SelectedItem + "','" + did + "')";
             obj.execute(str);
            MailMessage m = new MailMessage("healthconnectnow@gmail.com", txt_email.Text, "You have added Successfully.", "Dear " + txt_d_name.Text + " Your Login ID is  : " + txt_d_name.Text + " and password : " + psw);
            SmtpClient sc = new SmtpClient();
            sc.EnableSsl = true;
            sc.Port = 587;
            //sc.Send(m);
            //**************************************

            str = "select max(dr_id) from doctor_table";
            obj.datareader(str);

            obj.dr.Read();
            long id = Convert.ToInt64(obj.dr[0]);
            flup_dimg.SaveAs(Server.MapPath("../doctorsimage/" + id.ToString() + "_" + flup_dimg.FileName));
            Response.Write("<script type ='text/javascript'>alert('Doctor is registerd');window.location='HospitalHome.aspx';</script>");

            str = "update doctor_table set image='" + id.ToString() + "_" + flup_dimg.FileName + "' where dr_id=" + id.ToString()  ;

            obj.execute(str);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ddl_dept_id_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if (flup_dimg.HasFile == true)
        {
            string extension;
            extension = System.IO.Path.GetExtension(flup_dimg.FileName);
            if (extension == ".jpg" || extension == ".png")
            {
                int len;
                len = flup_dimg.PostedFile.ContentLength;
                if (len <= 2097152)
                {
                    args.IsValid = true;
                }
                else
                {
                    CustomValidator1.ErrorMessage = "file size should less than 2MB";
                }
            }
            else
            {
                CustomValidator1.ErrorMessage = "inavlid file please upload only jpg or png images";
            }
        }
        else
        {

            CustomValidator1.ErrorMessage = "please browse file before upload";

        }
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //args.IsValid = false;
        //string email;
        //email = Convert.ToString(args.Value.ToString());
        //string str;
       
        //connection_class obj = new connection_class();
        //str = "select * from doctor_table where emailid='" + email + "'";
        //obj.datareader(str);
        //if (obj.dr.HasRows)
        //{
        //    args.IsValid = false;
        //}
        //else
        //{
            

        //}
    }
}