using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class audiotest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random rnd = new Random();
        int i = rnd.Next(1, 4);

        Label1.Text = "<audio id='audio1' src='" + i.ToString() + ".mp3' controls preload='auto' autobuffer></audio>";
        Label2.Text ="passage " +  i.ToString();
        Session["aud"] = i.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            int i;
        DataView dv1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        if (dv1.Count > 0)
        {
            for (i = 0; i < 5; i++)
            {
                SqlDataSource2.InsertParameters["Test_ID"].DefaultValue = Session["TESTID"].ToString();
                SqlDataSource2.InsertParameters["User_ID"].DefaultValue = Session["ID"].ToString();

                Label1.Text += "<BR>" + Convert.ToString(i) + "hi";
                SqlDataSource2.InsertParameters["SR_NO"].DefaultValue = Convert.ToString(i + 1);
                //SqlDataSource2.InsertParameters["SR_NO"].DefaultValue = dv1[i][1].ToString();
                SqlDataSource2.InsertParameters["Question_id"].DefaultValue = dv1[i][0].ToString();
                    //SqlDataSource2.InsertParameters["Question"].DefaultValue = dv1[i][2].ToString();
                //SqlDataSource2.InsertParameters["Correctans"].DefaultValue = dv1[i][3].ToString();
                //SqlDataSource2.InsertParameters["Givenans"].DefaultValue = "";
                //SqlDataSource2.Insert();

            }
        }
        //Session["TESTID"] = MAXID.ToString();
        

        Response.Redirect("middle1.aspx");

        //Response.Redirect("middle.aspx");
        Response.Redirect("audiotestquest.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //int i;

        //i = Convert.ToInt16(HiddenField1.Value);

        //i = i - 1;

        //Label3.Text = (i / 60).ToString() + ": " + (i % 60).ToString();



        //HiddenField1.Value = i.ToString();
    }
   
}