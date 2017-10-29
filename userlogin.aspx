<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;USER NAME&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
            BorderStyle="Groove" BorderWidth="1px" Width="207px"></asp:TextBox>
    </p>
     <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD&nbsp;&nbsp;<asp:TextBox 
             ID="TextBox2" runat="server" BorderStyle="Groove" BorderWidth="1px" 
             Width="207px" TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
    </p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server"
        Text="LOGIN" BorderColor="#000099" BorderStyle="Groove" Width="112px" 
    BackColor="#33CCFF" onclick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
    ID="Button2" runat="server" BackColor="#33CCFF" BorderColor="#000099" 
    BorderStyle="Groove" Text="NEW USER REGISTER HERE" Width="213px" 
    onclick="Button2_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [userlogin] WHERE (([user_id] = @user_id) AND ([password] = @password))">
        <SelectParameters>
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>



