using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotpassword : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cmd.CommandText = "select * from projectmain where userid='" + txt_id.Text + "' and dob='" + txt_dob.Text + "'";
        c.ds.Clear();
        c.adp.Fill(c.ds, "reg");
        if (c.ds.Tables["reg"].Rows.Count > 0)
        {
            lbl_pass.Text = c.ds.Tables["reg"].Rows[0]["pass"].ToString();
            Response.Write("<script>alert('successfully recover')</script>");
        }
        else
        {
            Response.Write("<script>alert('INCORRECT DETAIL')</script>");
        }
        txt_id.Text = "";
        txt_dob.Text = "";
    }
}