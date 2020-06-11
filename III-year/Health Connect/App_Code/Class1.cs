using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class connection_class
{
    SqlConnection conn;
    SqlCommand cmd;

    

    public SqlDataReader dr;
          SqlDataAdapter da;



    public DataSet ds;


    public void connection()
    {
        conn = new SqlConnection();
        conn.ConnectionString = "data source=JHONS-PC\\SQLEXPRESS; initial catalog=PABS; integrated security=true; ";
        conn.Open();
    }
    public void execute(string sql)
    {
        connection();
        cmd = new SqlCommand();
        cmd.CommandText=sql;
        cmd.CommandType= CommandType.Text;
        cmd.Connection =conn;
        cmd.ExecuteNonQuery();

    }
    public void datareader(string sql)
    {
        connection();
        cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        dr = cmd.ExecuteReader();
    }

    public void groupdata(string sql)
    {
        connection();
        da = new SqlDataAdapter(sql, conn);
        ds=new DataSet();

        da.Fill(ds, "recordstable");
    }
  
}