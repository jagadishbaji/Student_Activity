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
using System.Configuration;
using System.Xml;
using System.Text;

public partial class student_view_attendance : System.Web.UI.Page
{
    string st = "";
    int x;
    mydb db = new mydb();
    SqlCommand cmd;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        
        if (Session["sem"].GetHashCode() == 2)
        {

            sem2();
        }
        else if (Session["sem"].GetHashCode() == 6)
        {
            sem4();

        }
        else 
        {
            sem6();
        }
    }
   
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
       
    }
    public void sem2()
    {

        st = @"SELECT distinct prd1.student_id, prd1.date, prd1.sub, prd1.status, prd2.sub AS Period2, prd2.status AS Status, prd3.sub AS Period3, prd3.status AS Status
FROM            prd1 INNER JOIN
                         prd2 ON prd1.sl_num = prd2.sl_num INNER JOIN
                         prd3 ON prd1.sl_num = prd3.sl_num 
                        
  WHERE prd1.student_id = '" + Session["session_std"].GetHashCode() + "'";

        db.fill_grid_ret_sqlda(st, GridView1);
           
    }
    public void sem4()
    { 
    st= @" SELECT DISTINCT 
                         sem3p1.student_id, sem3p1.date, sem3p1.sub, sem3p1.status, sem3p2.sub AS Period2, sem3p2.status AS Status2, sem3p3.sub AS Period3, sem3p3.status AS Status3, sem3p4.sub AS Period4, 
                         sem3p4.status AS Status4
FROM            sem3p1 INNER JOIN
                         sem3p2 ON sem3p1.sl_num = sem3p2.sl_num INNER JOIN
                         sem3p3 ON sem3p1.sl_num = sem3p3.sl_num INNER JOIN
                         sem3p4 ON sem3p1.sl_num = sem3p4.sl_num
             where sem3p1.student_id='"+Session["session_std"].GetHashCode()+"'"    ;
    db.fill_grid_ret_sqlda(st, GridView1);  
    
    }
    public void sem6()
    { 
              st=@"  SELECT       distinct sem5p1.student_id, sem5p1.date, sem5p1.sub, sem5p1.status, sem5p2.sub AS Period2, sem5p2.status AS Status2, sem5p3.sub AS Period3, sem5p3.status AS Status3, sem5p4.sub AS Period4, 
                         sem5p4.status AS Status4
FROM            sem5p1 INNER JOIN
                         sem5p2 ON sem5p1.sl_num = sem5p2.sl_num INNER JOIN
                         sem5p3 ON sem5p1.sl_num = sem5p3.sl_num INNER JOIN
                         sem5p4 ON sem5p1.sl_num = sem5p4.sl_num
                                 where sem5p1.student_id='"+Session["session_std"].GetHashCode()+"'"    ;
    db.fill_grid_ret_sqlda(st, GridView1);  
       
    }
}
