using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VIEW_PORTFOLIO : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["userid"].ToString();
        c.bindgridview(GridView1, "select * from buystock where userid='" + Session["userid"].ToString() + "'");
    }
    
}