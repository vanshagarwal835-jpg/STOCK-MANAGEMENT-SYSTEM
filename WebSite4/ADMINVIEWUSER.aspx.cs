using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMINVIEWUSER : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.bindgridview(GridView1, "select * from projectmain");
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        c.bindgridview(GridView1, "select * from projectmain");
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        c.bindgridview(GridView1, "select * from projectmain");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        c.cmd.CommandText = "delete from projectmain where userid='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        c.bindgridview(GridView1, "select * from projectmain");
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        c.bindgridview(GridView1, "select * from projectmain");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow gr = GridView1.Rows[e.RowIndex];
        TextBox txt_EMAIL = (TextBox)gr.Cells[1].Controls[0];
        TextBox txt_NAME = (TextBox)gr.Cells[2].Controls[0];
        TextBox txt_PASSWORD = (TextBox)gr.Cells[3].Controls[0];
        TextBox txt_DATEOFBIRTH = (TextBox)gr.Cells[4].Controls[0];
        TextBox txt_MOBILE = (TextBox)gr.Cells[5].Controls[0];
        TextBox txt_CITY = (TextBox)gr.Cells[6].Controls[0];
        TextBox txt_PINCODE = (TextBox)gr.Cells[7].Controls[0];
        TextBox txt_ADDRESS = (TextBox)gr.Cells[8].Controls[0];
        c.cmd.CommandText = "update projectmain set email='" + txt_EMAIL.Text + "',namee='" + txt_NAME.Text + "',pass='"+txt_PASSWORD.Text+"',dob='"+txt_DATEOFBIRTH.Text+"',mobile='"+txt_MOBILE.Text+"',city='"+txt_CITY.Text+"',pincode='"+txt_PINCODE.Text+"',addres='"+txt_ADDRESS.Text+"' where userid='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        GridView1.EditIndex = -1;
        c.bindgridview(GridView1, "select * from projectmain");
    }
}