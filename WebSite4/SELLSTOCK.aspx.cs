using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SELLSTOCK : System.Web.UI.Page
{

    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_id.Text = Session["userid"].ToString();

        c.cmd.CommandText = "select * from projectmain where userid='" + Session["userid"].ToString() + "'";

        c.adp.Fill(c.ds, "reg");
        if (c.ds.Tables["reg"].Rows.Count > 0)
        {
            lbl_balance.Text = c.ds.Tables["reg"].Rows[0][10].ToString();
        }
        c.bindgridview(GridView2, "select * from buystock where userid='" + Session["userid"].ToString() + "'");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        c.cmd.CommandText = "select * from buystock where trans='" + txt_trans.Text + "' and stkname='"+txt_NAME.Text+"'";
        c.ds.Clear();
        c.adp.Fill(c.ds, "vt");
        if (c.ds.Tables["vt"].Rows.Count > 0)
        {
            int a= Convert.ToInt32(c.ds.Tables["vt"].Rows[0][3].ToString());
            int b = a + (a * 10 / 100);
            lbl_CPRICE.Text = b.ToString();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        int x = Convert.ToInt32(lbl_balance.Text);
        int y = Convert.ToInt32(lbl_CPRICE.Text);
        int z = x + y;
        lbl_Abalance.Text = z.ToString();
        c.cmd.CommandText = "update projectmain set amount='" + lbl_Abalance.Text + "' where userid='" + Session["userid"].ToString() + "'";
        c.ds.Clear();
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        c.cmd.CommandText = "delete  from buystock where trans='" + txt_trans.Text + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        
        

        Response.Write("<script>alert('SELL SUCCESSFULLY')</script>");

    }
}