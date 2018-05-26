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
public partial class Faculty_view_attendance : System.Web.UI.Page
{
    mydb db = new mydb();
    SqlDataAdapter sqlda;
    string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty"] != null)
        {
            sqlda = new SqlDataAdapter("SELECT * from faculty where email='" + Session["faculty"].ToString() + "'", db.db);
            DataTable dt = new DataTable();
            sqlda.Fill(dt);

        }
        else
        {
            Response.Redirect("../Default.aspx");
        }
    }
    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("login.aspx");
    }
    protected void check_Click(object sender, EventArgs e)
    {
        st = @"SELECT distinct prd1.student_id, prd1.date, prd1.sub, prd1.status, prd2.sub AS Period2, prd2.status AS Status, prd3.sub AS Period3, prd3.status AS Status
FROM            prd1 INNER JOIN
                         prd2 ON prd1.sl_num = prd2.sl_num INNER JOIN
                         prd3 ON prd1.sl_num = prd3.sl_num 
                        
  WHERE prd1.student_id = "+TextBox1.Text+" and prd1.sem="+DropDownList1.Text+"";

        db.fill_grid_ret_sqlda(st, GridView1);
           
    }
}