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

public partial class Placement_view_students : System.Web.UI.Page
{
    mydb db = new mydb();
    SqlCommand cm;
    string st;
    SqlDataAdapter sqda;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Placement"] == null)
        {

            Response.Redirect("../Default.aspx");
        }
        else
        {
            fill_repeater();
        }
    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
        st = "insert into SelectedRessume (name,email) values('" + txt_name.Text + "','" + txt_email.Text + "')";
        int x = db.ExeQuery(st);
        if (x > 0)
        {
            emailaccount _emailaccount = new emailaccount();
            string mail_body = _emailaccount.email_content1("You have been selected for placement interview , Please contact faculty <br/><b></b> ", "", "", "", "Ressume Selected");
            _emailaccount.SendEmail(txt_email.Text, "", "", "You have been Selected ", mail_body, true);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Student selected');", true);
            fill_clear();
        }
        else 
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Failed');", true);
        }
    
    }
    protected void fill_repeater()
    {
        st = "select * from Ressume";
        db.fill_rptr_ret_sqlda(st, rpt_student);
        if (rpt_student.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }
    public void fill_clear()
    {
        txt_email.Text = "";
        txt_name.Text = "";

    }
    
}