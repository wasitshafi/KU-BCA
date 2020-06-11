using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str;
        connection_class obj = new connection_class();
        str = "insert into (name,h_id) doc";
        str = "select max(dr_id) from doctor_table";
        obj.datareader(str);
        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            long id = Convert.ToInt64(obj.dr[0]);
            FileUpload1.SaveAs(Server.MapPath("doctorsimage/" + id.ToString() + "_" + FileUpload1.FileName));
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if (FileUpload1.HasFile == true)
        {
            string extension;
            extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension == ".jpg" || extension == ".png")
            {
                int len;
                len = FileUpload1.PostedFile.ContentLength;
                if (len <= 2097152)
               // if (len <= 5)
                {
                    args.IsValid = true;
                    Response.Write("<script type ='text/javascript'>alert('file uploaded')</script>");

                }
                else
                {
                    CustomValidator1.ErrorMessage = "file size should less than 2MB";
                    Response.Write("<script type ='text/javascript'>alert('size must be less than 2mb')</script>");

                }
            }
            else
            {
                CustomValidator1.ErrorMessage = "inavlid file please upload only jpg or png images";
                Response.Write("<script type ='text/javascript'>alert('invalid file format')</script>");

            }
        }
        else
        {
            CustomValidator1.ErrorMessage = "please browse file before upload";
            Response.Write("<script type ='text/javascript'>alert('please select image')</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        connection_class obj = new connection_class();
        string str;
        str = "select max(patient_id) from patient_booking_table";
        obj.datareader(str);

        if (obj.dr.HasRows)
        {
            obj.dr.Read();
            Label1.Text = obj.dr[0].ToString();
        }

    }
}