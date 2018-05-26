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

public partial class Faculty_add_attendance : System.Web.UI.Page
{
    string st = "";
    int x;
    mydb db = new mydb();

    DateTime time = DateTime.Now;              // Use current time
    string format = "dd-MM-yyyy "; 
   /* DateTime time = DateTime.Now;              // Use current time
    string format = "yyyy-MM-dd HH:mm:ss"; */
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty"] == null)
        {
            Response.Redirect("../Default.aspx");
        }

    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
        fill_repeater();
    }
    protected void fill_repeater()
    {
        
        st = "select student_id,fullname from student where dept='" + dd_dept.Text + "' and sem='" + dd_sem.Text + "'";
        db.fill_rptr_ret_sqlda(st, Repeater1);
        if (Repeater1.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }
    protected void lnk_submit_Click(object sender, EventArgs e)
    {
        //(condition)?true:false
        
        char Present;
        foreach (RepeaterItem item in Repeater1.Items)
        {
            HiddenField hf_RegNo = item.FindControl("Hf_regnum") as HiddenField;
            CheckBox cb_present = item.FindControl("chk_status") as CheckBox;
             if (dd_period.Text == "1")
              {
                  st = "insert into prd1(student_id,date,sub,status,dept,sem) values('" + hf_RegNo.Value + "','" + time.ToString(format) + "','" + dd_sub.Text + "'," + ((cb_present.Checked) ? 1 : 0) + ",'" + dd_dept.Text + "',"+dd_sem.Text+")";
              
                  x = db.ExeQuery(st);
              
              }
              else  if (dd_period.Text == "2")
            {
                st = "insert into prd2(student_id,date,sub,status,dept,sem) values('" + hf_RegNo.Value + "','" + time.ToString(format) + "','" + dd_sub.Text + "'," + ((cb_present.Checked) ? 1 : 0) + ",'" + dd_dept.Text + "'," + dd_sem.Text + ")";
              
                x = db.ExeQuery(st);
              
            }
                 else if (dd_period.Text == "3")
                      {
                          st = "insert into prd3(student_id,date,sub,status,dept,sem) values('" + hf_RegNo.Value + "','" + time.ToString(format) + "','" + dd_sub.Text + "'," + ((cb_present.Checked) ? 1 : 0) + ",'" + dd_dept.Text + "'," + dd_sem.Text + ")";
              
                          x = db.ExeQuery(st);
              
                      }
                      else if (dd_period.Text == "4")
            {
                st = "insert into period4(student_id,date,sub,status,dept,sem) values('" + hf_RegNo.Value + "','" + time.ToString(format) + "','" + dd_sub.Text + "'," + ((cb_present.Checked) ? 1 : 0) + ",'" + dd_dept.Text + "'," + dd_sem.Text + ")";
              
                x = db.ExeQuery(st);
              
            }
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Attendace Complete');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Attendace In-Complete');", true);
            }
        }


    }
}