<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="instuctions.aspx.cs" Inherits="instuctions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript">

    function openwin(url) {
   myWindow=window.open(url,'_blank','scrollbars=1,top=0,left=0,width='+screen.width+'height='+screen.height);
    }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
       <div id="page-bgtop" class="style1" 
        
        
           style="font-size: large; color: #000000; font-weight: lighter; font-family: tahoma">
		<!-- end #content -->
		  <table class="style2" align="center" 
               style="background-position: center center; background-image: none; background-repeat: no-repeat;">

              <caption style="background-color: #FFFF; font-size: large; top: 0px; left: 0px; width: 1067px; height: 23px;">
              
               FORMAT OF THE TEST
               
               </caption>
            
        <%--</table>
        <table class="style2" style="background-image: url('images/best luck2.jpg')">
        --%>    <tr>
                <td colspan="3" 
                      style="color: #000000; font-family: 'times New Roman', Times, serif">
                    The test is divided into three sections

                  </td>
            </tr>
            <tr><td style="color: #000000; font-family: 'times New Roman', Times, serif"></td>
            </tr>
            <tr>
                <td style="color: #000000; font-family: 'times New Roman', Times, serif">
                    <ul>
                        <li>Aptitude Test</li>
                    <%--</ul>
                </td>
                <td>
                    <ul>
                        --%>
                        <li>Audio Test</li>
                    <%--</ul>
                </td>
                <td>
                    <ul>
                        --%>
                        <li>Speech Test</li>
                    </ul>
                   
                </td>
                <tr> <td>  
                    <ul>
                        <li></li>
                    </ul>
                    </td></tr>
            </tr>
        <%--</table>
        <table class="style2">
        --%>    <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000">
                    <ol>
                        <li>&nbsp;Aptitude Test: It consists of logical reasoning, general awareness, verbal and 
                    general mathematics.<br />It carries 10 questions from Q.1 to Q.10 each carrying 1 mark. Time alloted for 
                    Aptitude test is 10 mins.<br />
                            <br /></li>
                    </ol>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000">
                    Audio test: We will make you listen a English passage for 2 mins and you have to 
                    answer 5 questions from Q.11 to Q 15 based on the audio passage.<br />Time alloted for Audio test is 4 mins of which 2 minutes are for listening and 2 
                    minutes for answering .<br />
                    <br />
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000">
                    Speech test:Topic will be given
                    <br />You have maximum 2 minutes to speak on the given topic.<br />
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000">
                    Result of aptitude and audio test will given immediately after submitting the 
                    test. Result of speech test will be send through email.
                    <br />
                    </td>
            </tr>
        </table>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="144px" 
               ImageUrl="~/images/best luck2.jpg" Width="318px"  />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
&nbsp;&nbsp;
        </div>
	

    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#0099CC" ForeColor="#000066" 
            onclick="Button1_Click" Text="Take test" BorderStyle="Inset" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            InsertCommand="insert into tbl_test(USER_ID, DATE, RESULT) values (@USER_ID, @DATE, @RESULT)" 
            SelectCommand="SELECT MAX(ID) FROM [Tbl_test]">
            <InsertParameters>
                <asp:Parameter Name="ID" />
                <asp:Parameter Name="USER_ID" />
                <asp:Parameter Name="DATE" />
                <asp:Parameter Name="RESULT" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="insert into tbl_test1(  Test_ID,User_id, Question_id,SR_NO, Correctans, Givenans) values(  @Test_ID, @User_id, @Question_id,@SR_NO, @Correctans, @Givenans)
            

" SelectCommand="SELECT * FROM [Tbl_test1]">
            <InsertParameters>
                <asp:Parameter Name="Test_ID" />
                <asp:Parameter Name="User_id" />
                <asp:Parameter Name="Question_id" />
                <asp:Parameter Name="Correctans" />
                <asp:Parameter Name="Givenans" />
                <asp:Parameter Name="SR_NO" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 10 *  FROM [aptitudetest]
ORDER BY NEWID()"></asp:SqlDataSource>
    </p>

</asp:Content>

