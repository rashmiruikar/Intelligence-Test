using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class speechtest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) Label1.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(@"C:\Users\Glory\Desktop\losarwar maam\inteltest\speech colctn" + FileUpload1.FileName);
            Label1.Text = "FIle" + FileUpload1.FileName + "Is uploaded";
        }
        else
            Label1.Text = "no uploaded file";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_result.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("voiceforms\\VoiceRecorder\\WelcomeView.xaml");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:1598/inteltest/test/AudioRecorderTestPage.aspx");
    }
}