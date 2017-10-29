using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters["Name"].DefaultValue = TextBox1.Text;
        SqlDataSource1.SelectParameters["Password"].DefaultValue = TextBox2.Text;



        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
        {
            Session["ID"] = dv[0][0];
            Session["Name"] = dv[0][1];
            //Session["user_id"] = Textbox1.Text;
            Session["mode"] = "admin";
            Response.Redirect("adminwelcome.aspx");

        }
        else
        {
            Label1.Text = "User name or Password is invalid.....";

        }

        //Session["Userid"] = TextBox1.Text;
        //Session["mode"] = "admin";
        //Response.Redirect("adminwelcome.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}