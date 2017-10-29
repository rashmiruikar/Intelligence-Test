using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
      
            SqlDataSource1.SelectParameters["user_id"].DefaultValue = TextBox1.Text;
            SqlDataSource1.SelectParameters["password"].DefaultValue = TextBox2.Text;



            DataView dv1 = (DataView) SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        Label1.Text=dv1.Count.ToString();

        if (dv1.Count > 0)
        {
            Session["ID"] = dv1[0][0];
                Session["Name"] = dv1[0][1];
                //Session["user_id"] = Textbox1.Text;
                Session["mode"] = "user";
                Response.Redirect("instuctions.aspx");

            }
            else
            {
                Label1.Text = "User name or Password is invalid.....";

            }
        
   //     Session["Userid"] = TextBox1.Text;
   //     Session["mode"] = "user";
   //Response.Redirect("instuctions.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
}