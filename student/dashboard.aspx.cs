using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Drawing;
using System.IO;
using System.Xml;
using System.Web.Security;



public partial class student_dashboard : System.Web.UI.Page
{
    mydb db=new mydb();
    SqlDataAdapter sqlda;
    DataTable dt;
    SqlCommand cm;
    DataSet ds;
    public DataTable get_datatable(string st)
    {

        try
        {

            cm = new SqlCommand(st, db.db);
            sqlda = new SqlDataAdapter(cm);
            ds = new DataSet();
            ds.Tables.Clear();
            sqlda.Fill(ds, "recordset");
            db.db.Close();

        }
        catch (Exception) { }
        return ds.Tables["recordset"];
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
        else 
        {
           string st = "select * from student where email='" + Session["std"].ToString() + "' and Password='" + Session["std1"].ToString() + "'";
            dt = get_datatable(st);
          
            if (dt.Rows.Count > 0)
            {
                name.Text = dt.Rows[0]["fullname"].ToString();
                dob.Text = dt.Rows[0]["dob"].ToString();
                gender.Text = dt.Rows[0]["gender"].ToString();
                dept.Text = dt.Rows[0]["dept"].ToString();
                address.Text = dt.Rows[0]["address"].ToString();
                mobile.Text = dt.Rows[0]["mobile"].ToString();
                email.Text = dt.Rows[0]["email"].ToString();
                
            }
          
        
        }
    }
    protected void logout_Click1(object sender, EventArgs e)
    {
         Session.Clear();
        Response.Redirect("../Default.aspx");
    }
}