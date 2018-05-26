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


public partial class Placement_selected_students : System.Web.UI.Page
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
    protected void fill_repeater()
    {
        st = "select * from SelectedRessume";
        db.fill_rptr_ret_sqlda(st, rpt_student);
        if (rpt_student.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }
}