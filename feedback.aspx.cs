using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["name"].DefaultValue = txtfname.Text;
        SqlDataSource1.InsertParameters["address"].DefaultValue = txtaddress.Text;
        SqlDataSource1.InsertParameters["contact_no"].DefaultValue = txtcontact.Text;
        SqlDataSource1.InsertParameters["email"].DefaultValue = txtemailid.Text; 
        SqlDataSource1.InsertParameters["college"].DefaultValue = txtcollegename.Text;
        SqlDataSource1.InsertParameters["message"].DefaultValue = txtmessage.Text;
        SqlDataSource1.Insert();
        Label1.Text = "Data Successfully entered...";

        txtfname.Text = "";
        txtaddress.Text = "";
        txtcontact.Text = "";
        txtemailid.Text = "";
        txtcollegename.Text = "";
        txtmessage.Text = "";
    }
}