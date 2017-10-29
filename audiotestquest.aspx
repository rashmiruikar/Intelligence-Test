<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="audiotestquest.aspx.cs" Inherits="audiotestquest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <p style="background-color: #0099FF">
        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT * FROM [Tbl_test2] WHERE ([Test_ID] = @Test_ID)">
             <SelectParameters>
                 <asp:SessionParameter Name="Test_ID" SessionField="TESTID" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
     </p>
     <p style="background-color: #0099FF">
         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
          <b>  <%#Eval("ID") %> <asp:Label ID="Label1" runat="server" > <%#Eval("Question") %> </asp:Label></b>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br />
             <asp:HiddenField ID="HiddenField1" Value='<%#Eval("ID") %>' runat="server" />
         </ItemTemplate>
         </asp:Repeater>
         <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" />
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT * FROM [Tbl_test2]" 
             UpdateCommand="update tbl_test2 set givenans=@givenans where ID=@ID">
             <UpdateParameters>
                 <asp:Parameter Name="givenans" />
                 <asp:Parameter Name="ID" />
             </UpdateParameters>
         </asp:SqlDataSource>
     </p>
     <p style="background-color: #0099FF">
         &nbsp;</p>
     <%--<p style="background-color: #0099FF">
         <asp:GridView ID="GridView1" runat="server">
         </asp:GridView>
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
             Width="291px"></asp:TextBox>
     </p>--%>
     <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
        
                    &nbsp;</td>
            </tr>
        </table>

<p style="background-color: #0099FF">
        &nbsp;</p>
     <p style="background-color: #0099FF">
         &nbsp;</p>
     <p style="background-color: #0099FF">
         &nbsp;</p>
<p style="background-color: #0099FF">
        <asp:Button ID="Button1" runat="server"  
            Text="SUBMIT AUDIO TEST" />
     </p>
    <p>
        <br />
    </p>
</asp:Content>

