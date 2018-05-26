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



public partial class Principal_dashboard : System.Web.UI.Page
{
    mydb db=new mydb();
    SqlDataAdapter sqlda;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["principal"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
       
    }
   
}