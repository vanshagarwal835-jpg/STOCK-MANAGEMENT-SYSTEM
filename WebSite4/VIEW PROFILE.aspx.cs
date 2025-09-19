using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VIEW_PROFILE : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["userid"].ToString();
        Label2.Text = Session["userid"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cmd.CommandText = "select * from projectmain where userid='" + Label1.Text + "'";
        c.ds.Clear();
        c.adp.Fill(c.ds, "reg");
        if (c.ds.Tables["reg"].Rows.Count > 0)
        {
            txt_email.Text = c.ds.Tables["reg"].Rows[0][1].ToString();
            txt_name.Text = c.ds.Tables["reg"].Rows[0][2].ToString();
            txt_dob.Text = c.ds.Tables["reg"].Rows[0][4].ToString();
            txt_mob.Text = c.ds.Tables["reg"].Rows[0][5].ToString();
            txt_city.Text = c.ds.Tables["reg"].Rows[0][6].ToString();
            txt_pincode.Text = c.ds.Tables["reg"].Rows[0][7].ToString();
            txt_add.Text = c.ds.Tables["reg"].Rows[0][8].ToString();
            string p1 = c.ds.Tables["reg"].Rows[0]["photo"].ToString();
            Image1.ImageUrl = p1.ToString();
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c.cmd.CommandText = "update projectmain set namee='" + txt_name.Text + "',email='" + txt_email.Text + "',mobile='" + txt_mob.Text + "',dob='" + txt_dob.Text + "',addres='"+txt_add.Text+"',city='"+txt_city.Text+"',pincode='"+txt_pincode.Text+"'   where userid='" + Label2.Text + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        Response.Write("<script>alert('update')</script>");
        
    }
}