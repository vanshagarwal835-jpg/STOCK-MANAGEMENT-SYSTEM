using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LOGIN1 : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "USER")
        {
            c.cmd.CommandText = "select * from projectmain where userid='" + txt_id.Text + "' and pass='" + txt_pass.Text + "'";
            c.ds.Clear();
            c.adp.Fill(c.ds, "reg");
            if (c.ds.Tables["reg"].Rows.Count > 0)
            {
                Session["userid"] = txt_id.Text;
                Response.Write("<script>alert('login successfully')</script>");
                Response.Redirect("~/AFTER LOGIN.aspx");
            }
            else
            {
                Response.Write("<script>alert('INCORRECT DETAIL')</script>");
            }
        }
        else if (DropDownList1.SelectedItem.Text == "ADMIN")
        {
            c.cmd.CommandText = "select * from adminlogin where userid='" + txt_id.Text + "' and pass='" + txt_pass.Text + "'";
            c.ds.Clear();
            c.adp.Fill(c.ds, "reg");
            if (c.ds.Tables["reg"].Rows.Count > 0)
            {
               
                Response.Write("<script>alert('login successfully')</script>");
                Response.Redirect("~/ADMINAFTERLOGIN.aspx");
            }
            else
            {
                Response.Write("<script>alert('INCORRECT DETAIL')</script>");
            }
        }
       
    }
}