<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    feedback</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p style="background-color: #0099FF">

</p>
<div style="background-color: #0099FF">
<table align="center" width="600px" style="border: thin solid #000000">
        <tr>
            <td colspan="2" height="50px" align="center" 
                style="border: thin solid #000000; font-size: x-large; color: #003366">
                <b>
                <br />
                Feedback Form</b>
                <br />
            </td>
        </tr>
        <tr>
            <td width="200px" height="35px">&nbsp;&nbsp;&nbsp;Full&nbsp;Name</td>
            <td width="400px" height="35px">               
                <asp:TextBox ID="txtfname" runat="server" Width="300px" 
                    ></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td width="200px" height="35px">&nbsp;&nbsp;&nbsp;Address</td>
            <td width="400px" height="35px">               
                <asp:TextBox ID="txtaddress" runat="server" Width="300px" TextMode="MultiLine"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td width="200px" height="35px"> &nbsp;&nbsp;&nbsp;Contact Number</td>
            <td width="400px" height="35px">               
                <asp:TextBox ID="txtcontact" runat="server" Width="300px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                    ValidationExpression="^([7-9]{1})([0-9]{9})$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td width="200px" height="35px"> &nbsp;&nbsp;&nbsp;E-Mail ID</td>
            <td width="400px" height="35px">
               <asp:TextBox ID="txtemailid" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemailid" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td width="200px" height="35px"> &nbsp;&nbsp;&nbsp;College Name</td>
            <td width="400px" height="35px">               
                <asp:TextBox ID="txtcollegename" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtcollegename" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr valign="middle">
            <td width="200px" height="35px" valign="top"> &nbsp;&nbsp;&nbsp;Message</td>
            <td width="400px" height="35px">             
                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Height="147px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtmessage" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="600px" colspan="2" height="15px"> 
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" Width="85px" 
                    onclick="btnsubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="CANCEL" PostBackUrl="~/home.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" 
                    runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [feedback]" InsertCommand="insert into feedback(name, address, contact_no, email, college, message) values(@name, @address, @contact_no, @email, @college, @message)
">
                    <InsertParameters>
                        <asp:Parameter Name="ID" />
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="address" />
                        <asp:Parameter Name="contact_no" />
                        <asp:Parameter Name="email" />
                        <asp:Parameter Name="college" />
                        <asp:Parameter Name="message" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        
        <%-- <tr>
            <td width="600px" align="center" colspan="2" height="35px" valign="middle"> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    InsertCommand="INSERT INTO tbl_feedback(Name, Address, Contact, Email, College, Message) VALUES (@Name, @Address, @Contact, @Email, @College, @Message)" 
                    SelectCommand="SELECT * FROM [tbl_feedback]">
                    <InsertParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Address" />
                        <asp:Parameter Name="Contact" />
                        <asp:Parameter Name="Email" />
                        <asp:Parameter Name="College" />
                        <asp:Parameter Name="Message" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <asp:Button ID="btnsubmit" runat="server" ForeColor="#990000" 
                    style="font-weight: 700" Text="Submit" onclick="btnsubmit_Click" />  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;              
                     <asp:Button ID="btncancel" runat="server" ForeColor="#990000" 
                    style="font-weight: 700" Text="Cancel" CausesValidation="False" 
                    PostBackUrl="~/Home.aspx" />
            
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            
            </td>
        </tr>--%>
    </table>

</div>
</asp:Content>

