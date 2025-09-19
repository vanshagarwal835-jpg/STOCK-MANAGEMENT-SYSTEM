using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
    public DataSet ds = new DataSet();
    public SqlDataAdapter adp = new SqlDataAdapter();
    public SqlCommandBuilder scb = new SqlCommandBuilder();
    
    public DataRow dr;
	public Class1()
	{
        con.ConnectionString = ConfigurationManager.ConnectionStrings["SAMPLEConnectionString3"].ConnectionString;
        cmd.Connection = con;
        adp.SelectCommand = cmd;
        
	}
    public void bindgridview(GridView id,string query)
    {
        ds.Clear();
        cmd.CommandText = query;
        adp.Fill(ds,"reg");
        id.DataSource = ds.Tables["reg"];
        id.DataBind();
    }
    public string autoid(string text, string q)
    {
        ds.Clear();
        cmd.CommandText = q;
        adp.Fill(ds, "reg");
        return (text + (ds.Tables["reg"].Rows.Count) + 46);

    }
    public void binddrop(DropDownList id, string query, string text)
    {
        cmd.CommandText = query;
        adp.Fill(ds, "reg");
        id.DataSource = ds.Tables["reg"];
        id.DataTextField = text;
        //   id.DataValueField=text;
        id.DataBind();
    }
}