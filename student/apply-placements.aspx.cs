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
public partial class student_apply_placements : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlCommand cmd;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["student"] == null)
        {
            Response.Redirect("../Default.aspx");

        }
       
    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
       
        st = "INSERT INTO Ressume(Name,gender,address,email,mobile,skill,dept) VALUES('" + txt_name.Text + "','" + dd_gender.Text + "','" + txt_address.Text + "','" + txt_emailid.Text + "'," + txt_mobile.Text + ",'" + txt_skills.Text + "','" + dd_dept.Text + "')";
      
        int x = db.ExeQuery(st);
        if (x > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Applied Successfully.');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Failed.');", true);
        }
        fill_clear();
    }
    public void fill_clear()
    {
        txt_address.Text= "";
        txt_emailid.Text = "";
        txt_mobile.Text = "";
        txt_name.Text = "";
        txt_skills.Text = "";

    }
}