<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminfdback.aspx.cs" Inherits="adminfdback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="10" 
        DataSourceID="SqlDataSource1" Height="10px" HorizontalAlign="Center" 
        Width="100px">
        <AlternatingRowStyle BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="college" HeaderText="college" 
                SortExpression="college" />
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
        </Columns>
        <EditRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" 
            BorderWidth="1px" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
</p>
</asp:Content>

