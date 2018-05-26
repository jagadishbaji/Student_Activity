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

public partial class Admin_add_faculty : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
       
    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
        st = "insert into faculty (name,email,password,address,dept)values('" + txt_name.Text + "','" + txt_emailid.Text + "','" + txt_password.Text + "','"+txt_address.Text+"','"+dd_dept.Text+"')";
        int x = db.ExeQuery(st);
        if (x > 0)


        {
            emailaccount _emailConfig = new emailaccount();
            string mail_body = _emailConfig.email_content1("Your account has been created in Student Activity. <br/><b>Password : " + txt_password.Text + "</b> ", "", "", "", "Account Created");
            _emailConfig.SendEmail(txt_emailid.Text, "", "", "Your account created", mail_body, true);
            fill_repeater();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Faculty Added successfully.');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Failed');", true);
        }
    }
    protected void fill_repeater()
    {
      
        txt_emailid.Text = "";
      
        txt_name.Text = "";
      
        txt_password.Text = "";

    }
}