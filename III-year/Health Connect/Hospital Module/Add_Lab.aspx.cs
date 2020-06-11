using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Module_Add_Lab : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        string str;
        str = "select dept_name,dept_id from dept_table where h_id=" + Convert.ToString(Session["userid"].ToString()) + ";";
        connection_class obj = new connection_class();
        obj.datareader(str);
        ddl_dept_id.Items.Clear();
        if (obj.dr.HasRows)
        {
            ddl_dept_id.Enabled = true;
            ddl_dept_id.ForeColor = System.Drawing.Color.Black;
            while (obj.dr.Read())
            {
                ListItem itm = new ListItem();
                itm.Text = obj.dr[0].ToString();
                itm.Value = obj.dr[1].ToString();
                ddl_dept_id.Items.Add(itm);
            }
        }






        //    string str;
        //    str = "select name,h_id from hospital_table;";
        //    connection_class obj = new connection_class();
        //    obj.datareader(str);
        //    if (obj.dr.HasRows)
        //    {
        //        while (obj.dr.Read())
        //        {
        //            ListItem itm = new ListItem();
        //            itm.Text = obj.dr[0].ToString();
        //            itm.Value = obj.dr[1].ToString();
        //            ddl_h_id.Items.Add(itm);
                   
        //        }
        //    }
        //}
    }
    protected void ddl_h_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string str;
        //str = "select dept_name,dept_id from dept_table where h_id=" + ddl_h_id.SelectedValue + ";";
        //connection_class obj = new connection_class();
        //obj.datareader(str);
        //ddl_dept_id.Items.Clear();
        //if (obj.dr.HasRows)
        //{
        //     ddl_dept_id.Enabled = true;
        //    ddl_dept_id.ForeColor = System.Drawing.Color.Black;
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
        string str;
        str = "insert into lab_table values('" + txt_lab_name.Text + "','" + Convert.ToString(Session["userid"].ToString()) + "','" + ddl_dept_id.SelectedValue + "'," + txt_c_no.Text + ",'" + txt_assist.Text + "');";
        connection_class obj = new connection_class();
        obj.execute(str);
        Response.Write("<script LANGUAGE='JavaScript' >alert('Laboratory Added Successfully')</script>");
        txt_assist.Text = "";
        txt_c_no.Text = "";
        txt_lab_name.Text = "";

    }
}