using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class instuctions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mode"] == null)
        {
            Response.Redirect("userlogin.aspx");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i=0;

        //Response.Redirect("take_test.aspx");
        SqlDataSource1.InsertParameters["USER_ID"].DefaultValue = Session["ID"].ToString();
        SqlDataSource1.InsertParameters["DATE"].DefaultValue = DateTime.Now.ToString();
        SqlDataSource1.InsertParameters["RESULT"].DefaultValue = "0";
        SqlDataSource1.Insert();
        int MAXID = 0;
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
          
         DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
         if (dv.Count > 0)
         {
             MAXID = Convert.ToInt16(dv[0][0]);
             //check..
             //i = Convert.ToInt16(dv[0][1]);
         }



         DataView dv1 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
         if (dv1.Count > 0)
         {
             for (i = 0; i < 10; i++)
             {
                 SqlDataSource2.InsertParameters["Test_ID"].DefaultValue = MAXID.ToString();
                 SqlDataSource2.InsertParameters["User_ID"].DefaultValue = Session["ID"].ToString();

                 //Label1.Text += "<BR>" + Convert.ToString(i) + "hi";
                 SqlDataSource2.InsertParameters["SR_NO"].DefaultValue = Convert.ToString(i+1);
                 //SqlDataSource2.InsertParameters["SR_NO"].DefaultValue = dv1[i][1].ToString();
                 SqlDataSource2.InsertParameters["Question_id"].DefaultValue = dv1[i][0].ToString();
                 SqlDataSource2.InsertParameters["Correctans"].DefaultValue = dv1[i][6].ToString();
                 SqlDataSource2.InsertParameters["Givenans"].DefaultValue = "";
           SqlDataSource2.Insert();

             }
         }
         Session["TESTID"] = MAXID.ToString();

        Response.Redirect("middle.aspx");

    }

}