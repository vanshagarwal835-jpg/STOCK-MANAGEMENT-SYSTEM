using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADDFUNDaspx : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_id.Text = Session["userid"].ToString();
        Label1.Text = Session["userid"].ToString();
        c.cmd.CommandText = "select * from projectmain where userid='" + Session["userid"].ToString() + "'";
        c.ds.Clear();
        c.adp.Fill(c.ds, "reg");
        if (c.ds.Tables["reg"].Rows.Count > 0)
        {
            lbl_ab.Text = c.ds.Tables["reg"].Rows[0][10].ToString();

        }
        
        

    }
    protected void Button_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(lbl_ab.Text);
        int b = Convert.ToInt32(txt_amount.Text);
        int d = a + b;
        lbl_FB.Text = d.ToString();
        c.cmd.CommandText = "update projectmain set amount='" + lbl_FB.Text + "' where userid='" + lbl_id.Text + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        Response.Write("<script>alert('ADD FUND SUCCESSFULLY')</script>");
        
    }
}