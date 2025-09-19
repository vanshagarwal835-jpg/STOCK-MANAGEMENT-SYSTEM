using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USERCHANGEPASS : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        c.cmd.CommandText = "update projectmain set pass='" + TextBox5.Text + "' where userid='" + TextBox1.Text + "'and email='" + TextBox2.Text + "'and pass='"+TextBox3.Text+"'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        Response.Write("<script>alert('SUCCESSFUL')</script>");
    }
}