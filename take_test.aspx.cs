using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class take_test : System.Web.UI.Page
{
    int qid, srno;
    protected void Page_Load(object sender, EventArgs e)
    {

        string time;
        time = HiddenField1.Value;

       
        //if (Request.QueryString["time"] != null)
        //{
        //    HiddenField1.Value = Request.QueryString["time"];
        //}

        //else
        //{
        //    HiddenField1.Value = "1200";
        //}

        //Label6.Text = DateTime.Now.ToString("dd/MM/yyyy");

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



        if (dv1.Count > 0)
        {
            
            qid = Convert.ToInt16(dv1[0][4]);
            gans = dv1[0][6].ToString();

            if (gans != null)
            {
                if (gans == "A")
                {
                    RadioButton1.Checked = true;
                }
                if (gans == "B")
                {
                    RadioButton2.Checked = true;
                } if (gans == "C")
                {
                    RadioButton3.Checked = true;
                } if (gans == "D")
                {
                    RadioButton4.Checked = true;
                }
            }

            //Label2.Text = qid.ToString();

            SqlDataSource3.SelectParameters["ID"].DefaultValue = qid.ToString();

            DataView dv2 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);

            if (dv2.Count > 0)
            {

                Label1.Text = dv2[0][1].ToString();
                 Label2.Text = dv2[0][2].ToString();
                Label3.Text = dv2[0][3].ToString();
                Label4.Text = dv2[0][4].ToString();
                Label5.Text = dv2[0][5].ToString();

            }





        }



    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("audiotest.aspx");
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (Request.QueryString["Qsrno"] != null)
        {
            srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

        }

        else
        {
            srno = 1;
        }
        SqlDataSource4.UpdateParameters["givenans"].DefaultValue = "A";
        SqlDataSource4.UpdateParameters["srno"].DefaultValue = srno.ToString();
        SqlDataSource4.Update();

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (Request.QueryString["Qsrno"] != null)
        {
            srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

        }

        else
        {
            srno = 1;
        }
        SqlDataSource4.UpdateParameters["givenans"].DefaultValue = "B";
        SqlDataSource4.UpdateParameters["srno"].DefaultValue = srno.ToString();
        SqlDataSource4.Update();
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (Request.QueryString["Qsrno"] != null)
        {
            srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

        }

        else
        {
            srno = 1;
        }
        SqlDataSource4.UpdateParameters["givenans"].DefaultValue = "C";
        SqlDataSource4.UpdateParameters["srno"].DefaultValue = srno.ToString();
        SqlDataSource4.Update();

    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if (Request.QueryString["Qsrno"] != null)
        {
            srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

        }

        else
        {
            srno = 1;
        }
        SqlDataSource4.UpdateParameters["givenans"].DefaultValue = "D";
        SqlDataSource4.UpdateParameters["srno"].DefaultValue = srno.ToString();
        SqlDataSource4.Update();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {int nsrno;
    if (Request.QueryString["Qsrno"] != null)
    {
        srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

    }

    else
    {
        srno = 1;
    }
        if (srno > 1)
        {
            nsrno = srno - 1;
        }
        else
        {
            nsrno = 10;
        }  Response.Redirect("take_test.aspx?Qsrno="+nsrno.ToString() + "&time="+HiddenField1.Value );
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int nsrno ;
        if (Request.QueryString["Qsrno"] != null)
        {
            srno = Convert.ToInt16(Request.QueryString["Qsrno"]);

        }

        else
        {
            srno = 1;
        }
        
        if (srno < 10)
        {
            nsrno = srno + 1;
        }
        else
        {
            nsrno = 1;
        }
        Response.Redirect("take_test.aspx?Qsrno=" + nsrno.ToString());
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
         
        int i;

        i = Convert.ToInt16(HiddenField1.Value);

        i = i-1;

        Label7.Text = (i/60 ).ToString() + ": " + (i%60).ToString()   ;



        HiddenField1.Value = i.ToString();

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.DataItem != null)
        {
            System.Data.DataRowView drv = (System.Data.DataRowView)e.Row.DataItem;

            if (drv["givenans"] != System.DBNull.Value)
            {
                e.Row.BackColor = System.Drawing.Color.Red;
                e.Row.ForeColor = System.Drawing.Color.Yellow;
            }
        
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Label6.Text = HiddenField1.Value;
    }
}