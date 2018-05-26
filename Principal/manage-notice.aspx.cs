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

public partial class Principal_add_notice : System.Web.UI.Page
{
    mydb db = new mydb();
    string st = "";
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Principal"] == null)
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
        st = "select * from Notice";
        db.fill_rptr_ret_sqlda(st, Repeater1);
        if (Repeater1.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }

    protected void lnk_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
        st = "delete from Notice where notice_id=" + lnk.CommandArgument;
        db.ExeQuery(st);
        fill_repeater();
    }
    protected void lnk_save_Click(object sender, EventArgs e)
    {
           st = "insert into Notice(subject,descr,noticeDate)values('" + txt_sub.Text + "','" + txt_dcr.Text + "','" + txt_date.Text + "')";

        int x = db.ExeQuery(st);
        if (x > 0)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('success','Details Updated successfully.');", true);
            fill_repeater();
        }
        else
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "showalert('error','Updation failed please try later.');", true);
        }
        fill_rpt();
    }
    private void fill_rpt()
    {
        txt_date.Text = "";
        txt_dcr.Text = "";
        txt_sub.Text = "";

    }
}
