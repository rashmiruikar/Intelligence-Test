<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="speechtest.aspx.cs" Inherits="speechtest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p style="background-color: #0099FF">
        speech test ..</p>
    <p style="background-color: #0099FF">
        &nbsp;</p>

<div style="background-color: #0099FF">
<asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button3" runat="server"
            Text="Upload" onclick="Button3_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <asp:Button ID="Button2" runat="server" Text="SUBMIT SPEECH TEST" onclick="Button2_Click" 
         />

    <asp:HyperLink ID="h1" runat="server" 
        NavigateUrl="~/test/AudioRecorderTestPage.html">Record</asp:HyperLink>

</div>
</asp:Content>

