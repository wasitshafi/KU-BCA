using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Module_Add_Departments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //if(!IsPostBack)
       //{
       //    lbl_status.Visible = false;

       //}
        /**************for hospitals**************************/
        //string str;
        //str = "select name,h_id from hospital_table;";
        //connection_class obj1 = new connection_class();
        //obj1.datareader(str);
        //if (obj1.dr.HasRows)
        //{
        //    while (obj1.dr.Read())
        //    {
        //        ListItem itm = new ListItem();
        //        itm.Text = obj1.dr[0].ToString();
        //        itm.Value = obj1.dr[1].ToString();
        //        ddl_h_id.Items.Add(itm);
        //    }
        //}
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      string str;
//        str = "insert into dept_table values('" + txt_dept_name.Text + "','" + txt_hod.Text + "','" + ddl_h_id.SelectedValue + "'," + txt_c_no.Text + ");";
       str = "insert into dept_table values('" + txt_dept_name.Text + "','" + txt_hod.Text + "','" + Convert.ToString(Session["userid"].ToString()) +"'," + txt_c_no.Text + ");";
        
        connection_class obj = new connection_class();
        obj.execute(str);
        Response.Write("<script LANGUAGE='JavaScript' >alert('Department Added Successfully')</script>");
        txt_c_no.Text = "";
        txt_dept_name.Text = "";
        txt_hod.Text = "";
    }
    protected void ddl_h_id_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}