<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trial.aspx.cs" Inherits="trial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3">
        <Columns>
            <asp:TemplateField HeaderText="SR_NO" SortExpression="SR_NO">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SR_NO") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    
                    <a href='take_test.aspx?Qsrno=<%# Eval("SR_NO") %>' ><%# Eval("SR_NO") %>    </a>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Tbl_test2] WHERE ([Test_ID] = @Test_ID)">
        <SelectParameters>
            <asp:SessionParameter Name="Test_ID" SessionField="TESTID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource3">
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
            SelectCommand="SELECT * FROM [Tbl_test2] WHERE (([Test_ID] = @Test_ID) AND ([SR_NO] = @SR_NO))" 
            InsertCommand="insert into Tbl_test2 (SR_NO,Test_ID,User_id,Question_no,answer) values(@SR_NO,@Test_ID,@User_id,@Question_no,@answer)">
        <InsertParameters>
            <asp:QueryStringParameter Name="SR_NO" QueryStringField="Qsrno" />
            <asp:SessionParameter Name="Test_ID" SessionField="TESTID" />
            <asp:Parameter Name="User_id" />
            <asp:Parameter Name="Question_no" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Test_ID" SessionField="TEST" Type="Int32" />
            <asp:Parameter Name="SR_NO" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [audio1] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:Parameter Name="ID" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [audio1]" 
        UpdateCommand="UPDATE Tbl_test2 SET Givenans = @givenans WHERE (Test_ID = @Test_ID) AND (SR_NO = @srno)">
        <UpdateParameters>
            <asp:Parameter Name="givenans" />
            <asp:SessionParameter Name="Test_ID" SessionField="TESTID" />
            <asp:Parameter Name="srno" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</div>
</asp:Content>

