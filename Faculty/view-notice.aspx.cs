using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_view_notice : System.Web.UI.Page
{
    mydb db = new mydb();
    string st;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty"] == null)
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
}