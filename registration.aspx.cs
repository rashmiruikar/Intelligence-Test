using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlDataSource2.InsertParameters["Name"].DefaultValue = txtname.Text;
        SqlDataSource2.InsertParameters["surname"].DefaultValue = txtsurname.Text;
        
        SqlDataSource2.InsertParameters["gender"].DefaultValue = RadioButtonList1.Text;
        SqlDataSource2.InsertParameters["dob"].DefaultValue = txtdob.Text;
        SqlDataSource2.InsertParameters["address"].DefaultValue = txtaddress.Text;
        SqlDataSource2.InsertParameters["city"].DefaultValue = DropDownList1.Text;
        SqlDataSource2.InsertParameters["state"].DefaultValue = DropDownList2.Text;
        SqlDataSource2.InsertParameters["contact_no"].DefaultValue = txtcontact.Text;
        SqlDataSource2.InsertParameters["email_id"].DefaultValue = txtemail.Text;
        SqlDataSource2.InsertParameters["qualification"].DefaultValue = txtqlf.Text;
        SqlDataSource2.InsertParameters["user_id"].DefaultValue = txtuser.Text;
        SqlDataSource2.InsertParameters["password"].DefaultValue = txtpass.Text;
        SqlDataSource2.InsertParameters["confirm"].DefaultValue = txtcpass.Text;

        SqlDataSource2.Insert(); 
        
        Label3.Text = "Registration successful...";
        Response.Redirect("home.aspx");
    }
}