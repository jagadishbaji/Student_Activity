using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_dashboard : System.Web.UI.Page
{
    mydb db = new mydb();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("../Default.aspx");        
        }



       
    }

  
    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("../Default.aspx");
    }
}