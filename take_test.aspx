<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="take_test.aspx.cs" Inherits="take_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        test starts...<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Tbl_test1] WHERE ([Test_ID] = @Test_ID)"
            >
            <SelectParameters>
                <asp:SessionParameter Name="Test_ID" SessionField="TESTID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [Tbl_test1] WHERE (([Test_ID] = @Test_ID) AND ([SR_NO] = @SR_NO))">
            <SelectParameters>
                <asp:SessionParameter  Name="Test_ID" SessionField="TESTID" 
                    Type="Int32" />
                <asp:Parameter  Name="SR_NO"  Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [aptitudetest] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:Parameter Name="ID" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [aptitudetest]" UpdateCommand="update tbl_test1 set givenans=@givenans 
where Test_ID=@Test_ID
and SR_NO=@srno;">
            <UpdateParameters>
                <asp:Parameter Name="givenans" />
                <asp:SessionParameter Name="Test_ID" SessionField="TESTID" />
                <asp:Parameter Name="srno" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
 
        <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
        </asp:Timer>
             <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" Value="1200" />
        </ContentTemplate>
        </asp:UpdatePanel>
    </p>
      
    <p>
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="101px" 
                        Height="113px" onrowdatabound="GridView1_RowDataBound" 
                        onrowcommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="SR_NO" SortExpression="SR_NO">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SR_NO") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                   
                              <a href='take_test.aspx?Qsrno=<%# Eval("SR_NO") %>' >Question No.<%# Eval("SR_NO") %></a><asp:Button ID="Button4" runat="server" Text='<%# "asd"+ Eval("SR_NO") %>' CommandArgument='<%# Eval("SR_NO") %>'   CommandName="Time" onclick="Button4_Click" />
                               
                                
                                </ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                        GroupName="answer" oncheckedchanged="RadioButton1_CheckedChanged" />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>


                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                        GroupName="answer" oncheckedchanged="RadioButton2_CheckedChanged" />
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                        GroupName="answer" oncheckedchanged="RadioButton3_CheckedChanged" />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" 
                        GroupName="answer" oncheckedchanged="RadioButton4_CheckedChanged" />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="PREVIOUS" 
                        onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="NEXT" onclick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="SUBMIT TEST" 
                        onclick="Button3_Click" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

