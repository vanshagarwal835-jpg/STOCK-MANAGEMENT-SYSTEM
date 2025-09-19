using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NEWUSER1 : System.Web.UI.Page
{
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        c.cmd.CommandText = "select * from projectmain";
        c.ds.Clear();
        c.adp.Fill(c.ds, "reg");
        c.dr = c.ds.Tables["reg"].NewRow();
        c.dr["userid"] = txt_id.Text;
        c.dr["email"] = txt_email.Text;
        c.dr["namee"] = txt_name.Text;
        c.dr["pass"] = txt_cpass.Text;
        c.dr["dob"] = txt_dob.Text;
        c.dr["mobile"] = txt_mob.Text;
        c.dr["city"] = txt_city.Text;
        c.dr["pincode"] = txt_pincode.Text;
        c.dr["addres"] = txt_add.Text;
        if (FileUpload1.HasFile)
        {
            string p1 = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(p1));
            c.dr["photo"] = p1.ToString();
        }
        c.ds.Tables["reg"].Rows.Add(c.dr);
        c.scb = new System.Data.SqlClient.SqlCommandBuilder(c.adp);
        c.adp.Update(c.ds.Tables["reg"]);
        c.cmd.CommandText = "update projectmain set amount='" + 500 + "' where userid='" + txt_id.Text + "'";
        c.con.Open();
        c.cmd.ExecuteNonQuery();
        c.con.Close();
        Response.Write("<script>alert('SIGN UP SUCCESS NOW TO GO SIGN IN PAGE')</script>");
        Response.Redirect("~/LOGIN1.aspx");
    }
}