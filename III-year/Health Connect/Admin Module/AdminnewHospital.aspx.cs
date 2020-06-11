using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Module_AdminnewHospital : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            get_h_type();
        }
      

    }
    public void get_h_type()
    {
        connection_class obj = new connection_class();
        string str;
        str = "select h_type_id,type_name from h_type_table;";
        obj.datareader(str);
        ddl_h_type.Items.Clear();
        if (obj.dr.HasRows)
        {

            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = obj.dr["type_name"].ToString();
                itm.Value = obj.dr["h_type_id"].ToString();
                ddl_h_type.Items.Add(itm);
            }

        }


    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str;
        //str = "insert into hospital_table h_id,name,h_type,director,state,pin,c_no,emailid values(30,'" + txt_h_name.Text + "','" + ddl_h_type.SelectedValue + "','" + txt_director.Text + "','" + ddl_State.SelectedValue + "'," + txt_pincode.Text + "," + txt_c_no + ",'" + txt_email.Text + "');";
        str = "insert into hospital_table values('9003','" + txt_h_name.Text + "','" + ddl_h_type.SelectedValue + "','" + txt_director.Text + "','" + ddl_State.SelectedItem + "'," + txt_pincode.Text + "," + txt_c_no.Text + ",'" + txt_email.Text + "');";

        connection_class obj = new connection_class();
        obj.execute(str);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
       // lbl_star.Visible=false;
       // if (txt_address.Text == "" && txt_c_no.Text == "" && txt_director.Text == "" && txt_email.Text == "" && txt_h_name.Text == "" && txt_pincode.Text == "" && txt_website.Text == "")
       // {
           // lbl_star.Text= "Fields Marked With Asterisk(*) are manditory";
      //  }
       // else
       // {
            string str;
            str = "insert into hospital_table values('" + txt_h_name.Text + "','" + ddl_h_type.SelectedValue + "','" + txt_director.Text + "','" + ddl_State.SelectedItem + "','" + ddl_District.SelectedItem + "'," + txt_pincode.Text + "," + txt_c_no.Text + ",'" + txt_email.Text + "','" + txt_website.Text + "');";
            connection_class obj = new connection_class();
            obj.execute(str);
            txt_h_name.Text = "";
            txt_address.Text = "";
            txt_c_no.Text = "";
            txt_director.Text = "";
            txt_email.Text = "";
            txt_pincode.Text = "";
            txt_website.Text = "";
            //Response.Redirect("~/Admin Module/AdminHome.aspx");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Hospital Added Sucessfully')</script>");
            
        //}
 
    }
    protected void ddl_h_type_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (ddl_h_type.SelectedValue == "0")
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid =  true;
        }

        }

    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {

    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin Module/AdminHome.aspx");
    }
}