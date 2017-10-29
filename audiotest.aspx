<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="audiotest.aspx.cs" Inherits="audiotest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p style="background-color: #0099FF">
        audio test..</p>
    <p style="background-color: #0099FF">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
        <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
        </asp:Timer>
        <asp:HiddenField ID="HiddenField1" runat="server" 
             />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
        
    </p>
    <p style="background-color: #0099FF">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="TAKE AUDIO TEST" />
        
        
     
    
    <p style="background-color: #0099FF">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Tbl_test2]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="select TOP (5) * FROM AUDIO  where PID=@PID ORDER BY NEWID()" 
            InsertCommand="insert into tbl_test2(SR_NO, Test_ID, User_id, Question_id, Question, Correctans, Givenans) values(@SR_NO, @Test_ID, @User_id, @Question_id, @Question, @Correctans, @Givenans)

">
            <InsertParameters>
                <asp:Parameter Name="SR_NO" />
                <asp:SessionParameter Name="Test_ID" SessionField="TESTID" />
                <asp:Parameter Name="User_id" />
                <asp:Parameter Name="Question_id" />
                <asp:Parameter Name="Question" />
                <asp:Parameter Name="Correctans" />

                <asp:Parameter Name="Givenans" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="PID" SessionField="aud" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>    

        <p style="background-color: #0099FF">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
</asp:Content>

