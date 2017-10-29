<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="middle.aspx.cs" Inherits="middle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">

    function openwin(url) {
        myWindow = window.open(url, '_blank', 'scrollbars=1,top=0,left=0,width=' + screen.width + 'height=' + screen.height);
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p style="background-color: #0099FF">

your test  is configured click to start&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#" onclick="openwin('take_test.aspx')" > click here  </a>
</p>



</asp:Content>

