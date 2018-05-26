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
public partial class Admin_sports_select : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlCommand cm;
    SqlDataAdapter sqlda;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Admin"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        else 
        {
            fill_repeater();
                
        }

    }
    protected void fill_repeater()
    {
        st = "select * from sports";
        db.fill_rptr_ret_sqlda(st, Repeater1);
        if (Repeater1.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
        st = "insert into sprtselected (name,email,sport,dept) values ('" + txt_name.Text + "','" + txt_emailid.Text + "','" + txt_sports.Text + "','" + dd_dept.Text + "')";
        int x = db.ExeQuery(st);
        if (x > 0)
        { 
          emailaccount _emailaccount = new emailaccount();
            string mail_body = _emailaccount.email_content1("You are selected for inter college sports <br/><b>Sports : '"+txt_sports.Text+"'</b> ", "", "", "", "Sports Event");
            _emailaccount.SendEmail(txt_emailid.Text, "", "", "Sports selection", mail_body, true);
            fill_empty();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Students selected successfully.');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Failed ');", true);
        }
        
        
        }
    public void fill_empty()
    {
        txt_sports.Text = "";
        txt_name.Text = "";
        txt_emailid.Text = "";
        dd_dept.Text = "";
    
    }
    protected void lnk_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
        st = "delete from sports where id=" + lnk.CommandArgument;
        db.ExeQuery(st);
        fill_repeater();
    }
   
}
