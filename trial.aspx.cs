using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class trial : System.Web.UI.Page
{
    int qid, srno;
    protected void Page_Load(object sender, EventArgs e)
    {

        int qid, srno;
        string gans;

        if (Request.QueryString["Qsrno"] != null)
        {
            srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

        }

        else
        {
            srno = 1;
        }
        SqlDataSource2.SelectParameters["SR_NO"].DefaultValue = srno.ToString();


        DataView dv1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);



       // if (dv1.Count > 0)
        //{
        Label1.Text = "hello";
            //qid = Convert.ToInt16(dv1[0][4]);
            //gans = dv1[0][6].ToString();
            //Label1.Text=dv1[0][4].ToString();
        //}
    }
     
    
}