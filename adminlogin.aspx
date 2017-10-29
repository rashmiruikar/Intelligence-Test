<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--<p>
    ADMINLOGIN</p>-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADMIN NAME&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox1" runat="server" Width="194px" BackColor="White" 
            BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
     <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PASSWORD&nbsp;&nbsp; <asp:TextBox 
            ID="TextBox2" runat="server" Width="194px" BackColor="White" 
             BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="1px" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" 
             runat="server" ForeColor="#FF3300"></asp:Label>
    </p>
<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server"
        Text="LOGIN" BorderColor="#0099FF" BorderStyle="Groove" Width="112px" 
        BackColor="#6699FF" onclick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [adminlogin] WHERE (([Name] = @Name) AND ([Password] = @Password))">
            <SelectParameters>
                <asp:QueryStringParameter Name="Name" QueryStringField="Name" Type="String" />
                <asp:QueryStringParameter Name="Password" QueryStringField="Password" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

