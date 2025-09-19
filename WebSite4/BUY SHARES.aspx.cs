using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BUY_SHARES : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
       
       c.cmd.CommandText = "select * from projectmain where userid='" + Session["userid"].ToString() + "'";
       c.ds.Clear();
       c.adp.Fill(c.ds, "reg");
       if (c.ds.Tables["reg"].Rows.Count > 0)
       {
           lbl_balance.Text = c.ds.Tables["reg"].Rows[0][10].ToString();
           
       }
       else
       {
           lbl_balance.Text = "0";
       }
       lbl_userid.Text = Session["userid"].ToString();
       lbl_tran.Text = c.autoid("Tran75", "select * from buystock");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            int a = Convert.ToInt32(lbl_balance.Text);
            int b = Convert.ToInt32(lbl_tp.Text);
        if(a>b)
        {
            c.cmd.CommandText = "select * from buystock";
            c.ds.Clear();
            c.adp.Fill(c.ds, "reg");
            c.dr = c.ds.Tables["reg"].NewRow();
            c.dr["stkname"] = ddl_stockname.SelectedItem.Text;
            c.dr["stkprice"] = lbl_price.Text;
            c.dr["stkquantity"] = txt_quantity.Text;
            c.dr["totalprice"] = lbl_tp.Text;
            c.dr["userid"] = lbl_userid.Text;
            c.dr["trans"] = lbl_tran.Text;
            c.ds.Tables["reg"].Rows.Add(c.dr);
            c.scb = new System.Data.SqlClient.SqlCommandBuilder(c.adp);
            c.adp.Update(c.ds.Tables["reg"]);
            int d = a - b;
            lbl_AL.Text = d.ToString();
            lbl_tp1.Text = b.ToString();
            lbl_AB.Text = a.ToString();
            Response.Write("<script>alert('BUY STOCK SUCCESSFULLY')</script>");
            c.cmd.CommandText = "update projectmain set amount='" + lbl_AL.Text + "' where userid='" + lbl_userid.Text + "'";
            c.con.Open();
            c.cmd.ExecuteNonQuery();
            c.con.Close();
        }
        else
        {
            Response.Write("<script>alert('INSUFFICIENT BALANCE')</script>");
        }
    }
    protected void ddl_shareid_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_price.Text = ddl_stockname.SelectedValue;
    }
    protected void txt_quantity_TextChanged(object sender, EventArgs e)
    {

        int a = Convert.ToInt32(lbl_price.Text);
        int b = Convert.ToInt32(txt_quantity.Text);
        int c = a * b;
        lbl_tp.Text = c.ToString();
    }
}