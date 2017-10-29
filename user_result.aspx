<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_result.aspx.cs" Inherits="user_result" %>
 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p style="background-color: #0099FF">
        your result..<asp:GridView 
            ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Total" HeaderText="Total Marks Obtained" ReadOnly="True" 
                    SortExpression="Total" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT COUNT(*) AS Total FROM Tbl_test1 WHERE (Test_ID = @Test_ID) AND (Correctans = Givenans)">
            <SelectParameters>
                <asp:SessionParameter Name="Test_ID" SessionField="TESTID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p style="background-color: #0099FF">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Examresult]"></asp:SqlDataSource>
        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="10" CellSpacing="15" DataSourceID="SqlDataSource1" Height="30px" 
            HorizontalAlign="Center" Width="50px">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="userid" HeaderText="userid" 
                    SortExpression="userid" />
                <asp:BoundField DataField="apptitude" HeaderText="apptitude" 
                    SortExpression="apptitude" />
                <asp:BoundField DataField="audio" HeaderText="audio" SortExpression="audio" />
            </Columns>
            <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" BorderStyle="Solid" BorderWidth="1px" 
                ForeColor="#003399" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>--%>
    </p>
    <p style="background-color: #0099FF">
        &nbsp;</p>
        <div style="background-color: #0099FF">
        
            <a href="#" onclick="myWindow.close();"> close</a>
        </div>



</asp:Content>


