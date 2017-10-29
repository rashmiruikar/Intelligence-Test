<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="sample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [apptitudetest]">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        Visible="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Question" HeaderText="Question" 
                SortExpression="Question" />
            <asp:BoundField DataField="optionA" HeaderText="optionA" 
                SortExpression="optionA" />
            <asp:BoundField DataField="optionB" HeaderText="optionB" 
                SortExpression="optionB" />
            <asp:BoundField DataField="optionC" HeaderText="optionC" 
                SortExpression="optionC" />
            <asp:BoundField DataField="optionD" HeaderText="optionD" 
                SortExpression="optionD" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" 
        DataSourceID="SqlDataSource2" ForeColor="Black" AllowPaging="True" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellSpacing="2" GridLines="Both">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Question:
            <asp:TextBox ID="QuestionTextBox" runat="server" 
                Text='<%# Bind("Question") %>' />
            <br />
            optionA:
            <asp:TextBox ID="optionATextBox" runat="server" Text='<%# Bind("optionA") %>' />
            <br />
            optionB:
            <asp:TextBox ID="optionBTextBox" runat="server" Text='<%# Bind("optionB") %>' />
            <br />
            optionC:
            <asp:TextBox ID="optionCTextBox" runat="server" Text='<%# Bind("optionC") %>' />
            <br />
            optionD:
            <asp:TextBox ID="optionDTextBox" runat="server" Text='<%# Bind("optionD") %>' />
            <br />
            answer:
            <asp:TextBox ID="answerTextBox" runat="server" Text='<%# Bind("answer") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Question:
            <asp:TextBox ID="QuestionTextBox" runat="server" 
                Text='<%# Bind("Question") %>' />
            <br />
            optionA:
            <asp:TextBox ID="optionATextBox" runat="server" Text='<%# Bind("optionA") %>' />
            <br />
            optionB:
            <asp:TextBox ID="optionBTextBox" runat="server" Text='<%# Bind("optionB") %>' />
            <br />
            optionC:
            <asp:TextBox ID="optionCTextBox" runat="server" Text='<%# Bind("optionC") %>' />
            <br />
            optionD:
            <asp:TextBox ID="optionDTextBox" runat="server" Text='<%# Bind("optionD") %>' />
            <br />
            answer:
            <asp:TextBox ID="answerTextBox" runat="server" Text='<%# Bind("answer") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Question:
            <asp:Label ID="QuestionLabel" runat="server" Text='<%# Bind("Question") %>' />
            <br />
            optionA:
            <asp:Label ID="optionALabel" runat="server" Text='<%# Bind("optionA") %>' />
            <br />
            optionB:
            <asp:Label ID="optionBLabel" runat="server" Text='<%# Bind("optionB") %>' />
            <br />
            optionC:
            <asp:Label ID="optionCLabel" runat="server" Text='<%# Bind("optionC") %>' />
            <br />
            optionD:
            <asp:Label ID="optionDLabel" runat="server" Text='<%# Bind("optionD") %>' />
            <br />
            <%--answer:
            <asp:Label ID="answerLabel" runat="server" Text='<%# Bind("answer") %>' />
            --%><br />
        </ItemTemplate>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT TOP (10) ID, Question, optionA, optionB, optionC, optionD FROM apptitudetest ORDER BY NEWID()">
    </asp:SqlDataSource>
    </form>
</body>
</html>
