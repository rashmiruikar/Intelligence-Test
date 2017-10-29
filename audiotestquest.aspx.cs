using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class audiotestquest : System.Web.UI.Page
{
    //int qid, srno;
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    int  srno;
    //    string gans;

    //    if (Request.QueryString["Qsrno"] != null)
    //    {
    //        srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

    //    }

    //    else
    //    {
    //        srno = 1;
    //    }
    //    SqlDataSource2.SelectParameters["SR_NO"].DefaultValue = srno.ToString();

    //    DataView dv1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);



    //    if (dv1.Count > 0)
    //    {

    //        qid = Convert.ToInt16(dv1[0][4]);
    //        gans = dv1[0][6].ToString();
    //    }
    //    SqlDataSource3.SelectParameters["ID"].DefaultValue = qid.ToString();

    //    DataView dv2 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);

    //    if (dv2.Count > 0)
    //    {

    //        Label3.Text = dv2[0][1].ToString();

    //    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (RepeaterItem i in Repeater1.Items)
        {
            TextBox t1 = (TextBox)i.FindControl("TextBox1");
            HiddenField h1 = (HiddenField)i.FindControl("HiddenField1");

            SqlDataSource2.UpdateParameters["givenans"].DefaultValue = t1.Text;
            SqlDataSource2.UpdateParameters["ID"].DefaultValue = h1.Value;
            SqlDataSource2.Update();
            Response.Redirect("speechtest.aspx");
        }
    }
}