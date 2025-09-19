using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ADMINADDSTOCK : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lbl_id.Text = c.autoid("stk4867", "select * from stock");
            c.bindgridview(GridView1, "select * from stock");
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.cmd.CommandText = "select * from stock";
        c.ds.Clear();
        c.adp.Fill(c.ds, "reg");
        c.dr = c.ds.Tables["reg"].NewRow();
        c.dr["stkid"] = lbl_id.Text;
        c.dr["stknamee"] = txt_name.Text;
        c.dr["stkprice"] = txt_price.Text;
        c.dr["stkquantity"] = txt_quantity.Text;
        c.ds.Tables["reg"].Rows.Add(c.dr);
        c.scb = new System.Data.SqlClient.SqlCommandBuilder(c.adp);
        c.adp.Update(c.ds.Tables["reg"]);
        Response.Write("<script>alert('ADD SUCCESSFULLY')</script>");
        c.bindgridview(GridView1, "select * from stock");
        c.ds.Clear();
    }
   

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        c.bindgridview(GridView1, "select * from stock");
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        c.bindgridview(GridView1, "select * from stock");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        c.cmd.CommandText = "delete from stock where stkid='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        c.bindgridview(GridView1, "select * from stock");
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        c.bindgridview(GridView1, "select * from stock");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow gr = GridView1.Rows[e.RowIndex];
        TextBox txt_name = (TextBox)gr.Cells[0].Controls[0];
        TextBox txt_price = (TextBox)gr.Cells[1].Controls[0];
        TextBox txt_quantity = (TextBox)gr.Cells[2].Controls[0];
        c.cmd.CommandText = "update stock set stknamee='" + txt_name.Text + "',stkprice='" + txt_price.Text + "',stkquantity='" + txt_quantity.Text + "' where stkid='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        GridView1.EditIndex = -1;
        c.bindgridview(GridView1, "select * from stock");
    }
   
}