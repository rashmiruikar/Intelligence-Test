<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="regtuser.aspx.cs" Inherits="regtuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [userlogin]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="5" 
            DataSourceID="SqlDataSource1" CellSpacing="10">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="surname" HeaderText="surname" 
                    SortExpression="surname" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
                <asp:BoundField DataField="dob" HeaderText="dob" 
                    SortExpression="dob" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" 
                    SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                    SortExpression="contact_no" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" 
                    SortExpression="email_id" />
                <asp:BoundField DataField="qualification" HeaderText="qualification" 
                    SortExpression="qualification" />
                <asp:BoundField DataField="user_id" HeaderText="user_id" 
                    SortExpression="user_id" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="confirm" HeaderText="confirm" 
                    SortExpression="confirm" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

