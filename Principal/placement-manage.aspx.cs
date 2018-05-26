using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Web.Security;
using System.Drawing;


public partial class Principal_placement_manage : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["principal"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
          else
        {
            fill_repeater();
        }
    }
    public void fill_repeater()
    {
        st = "select * from placement";
        db.fill_rptr_ret_sqlda(st, Repeater1);
        if (Repeater1.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    
       
    }
    protected void lnk_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
        st = "delete from placement where company_id=" + lnk.CommandArgument;
        db.ExeQuery(st);
        fill_repeater();
    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
        st = "insert into placement (name,email,password,address)values('" + txt_name.Text + "','" + txt_emailid.Text + "','" + txt_password.Text + "','" + txt_address.Text + "')";
      
        int x = db.ExeQuery(st);
        if (x > 0)
        {
            emailaccount _emailaccount = new emailaccount();
            string mail_body = _emailaccount.email_content1("Your account has been created in Student Activity. <br/><b>Password : " + txt_password.Text + "</b> ", "", "", "", "Account Created");
            _emailaccount.SendEmail(txt_emailid.Text, "", "", "Your account created", mail_body, true);
            fill_clear();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Company Details Added successfully.');", true);
            fill_repeater();
        }
        else {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Failed to Add Company');", true);
        }
    }
    protected void fill_clear()
    {

        txt_emailid.Text = "";
        
        txt_name.Text = "";

        txt_password.Text = "";

    }
}