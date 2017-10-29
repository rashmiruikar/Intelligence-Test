<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    questions</p>



    <div align="center">
        <br />
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateInsertButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT [ID], [Question], [optionA], [optionB], [optionC], [optionD],[answer] FROM [aptitudetest]" 
            InsertCommand="insert into aptitudetest(Question, optionA, optionB, optionC, optionD, answer)values(@Question, @optionA, @optionB, @optionC, @optionD, @answer)">
        <InsertParameters>
            <asp:Parameter Name="Question" />
            <asp:Parameter Name="optionA" />
            <asp:Parameter Name="optionB" />
            <asp:Parameter Name="optionC" />
            <asp:Parameter Name="optionD" />
            <asp:Parameter Name="answer" />
        </InsertParameters>
        </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" CellSpacing="10" 
        DataSourceID="SqlDataSource1" 
        Height="10px" HorizontalAlign="Center" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100px" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Question" HeaderText="Question" 
                SortExpression="Question" />
            <asp:BoundField DataField="optionA" HeaderText="optionA" 
                SortExpression="optionA" />
            <asp:BoundField DataField="optionB" HeaderText="optionB" 
                SortExpression="optionB" />
            <asp:BoundField DataField="optionC" HeaderText="optionC" 
                SortExpression="optionC" />
            <asp:BoundField DataField="optionD" HeaderText="optionD" 
                SortExpression="optionD" />
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1px" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    </div>

</asp:Content>

