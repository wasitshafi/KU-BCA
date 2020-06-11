using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Module_ViewAll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            string s = Session["search"].ToString();
            
        if (s == "h")
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else if (s == "d")
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else if (s == "p")
            {
                MultiView1.ActiveViewIndex = 5;
            }
       


    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void btn_search_hosp_Click(object sender, EventArgs e)
    {
        string str;
         str = "select h_id as [H ID],name as [Name of Hospital],h_type as [type of Hospital],director as Director,state as State,district as District,c_no as Contact,emailid as [Email ID],website as Website from hospital_table where h_id="+txt_hid.Text;
        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView1.DataSource = obj.ds;
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btn_srch_doctor_Click1(object sender, EventArgs e)
    {
        string str;
        str = "select dr_id as [Dr ID],name as Name,h_id as Hospital,position as Designation,qualification as Qualification,experience as [years Experience],c_no as Contact,emailid as [Email ID] from doctor_table where dr_id=" + txt_srch_doctor.Text;
        connection_class obj = new connection_class();

        obj.groupdata(str);

        GridView2.DataSource = obj.ds;
        GridView2.DataBind();

        str = "select image from doctor_table where dr_id=" + txt_srch_doctor.Text;
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            if (obj.dr[0].ToString() != "")
            {
                string imgpath = "~/Doctorsimage/" + obj.dr[0].ToString();
                Image1.ImageUrl = imgpath;
                Image1.Visible = true;
            }
            else
                Image1.Visible = false;
        }
        }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        string str;
         str = "select h_id as [H ID],name as [Name of Hospital],h_type as [type of Hospital],director as Director,state as State,district as District,c_no as Contact,emailid as [Email ID],website as Website from hospital_table where name like'"+txt_h_name.Text+"%'";
        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView3.DataSource = obj.ds;
        GridView3.DataBind();
        
    }
    protected void lbtn_Srch_dname_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    

    
    protected void btn_srh_d_Click(object sender, EventArgs e)
    {
        string str;

        //str = "select * from doctor_table where name like'" + txt_srh_dname.Text +"%'";
        str = "select dr_id as [ID], name as [Name],h_id as [Hosp. ID],dept_id as [Dept. ID],position as [Position] ,qualification as [Qual.],experience as[Exp],c_no as [Contact No],emailid as [Email Id] from doctor_table where name like'" + txt_srh_dname.Text + "%'";
        
        
        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView4.DataSource = obj.ds;
        GridView4.DataBind();
        MultiView1.ActiveViewIndex = 3;
    }
    protected void lbtn_srh_dbyid_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void lbtn_srh_hbyid_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
   
    }
    protected void lbt_srh_pbyid_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
   
    }
    protected void lbt_srh_pbynam_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
   
    }
    protected void bt_srh_pbyname_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
        string str;

        str = "select * from patient_booking_table where name like'" + txt_srh_pname.Text + "%'"; 

        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView5.DataSource = obj.ds;
        GridView5.DataBind();
   
    
    }
    protected void bt_srh_pbyid_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
        string str;

        str = "select * from patient_booking_table where patient_id =" + txt_srh_pid.Text; 

        connection_class obj = new connection_class();

        obj.groupdata(str);
        GridView6.DataSource = obj.ds;
        GridView6.DataBind();
   
    }
}
