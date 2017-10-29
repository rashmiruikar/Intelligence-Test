<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div style=="background-color: #0099FF">


<table align="center" width="600px" style="background-color: #CCFFFF">
    <tr>
        <td align="center" colspan="2" style="font-size: x-large; " class="style2">
            <b style="color: #800000">Registration Form</b></td>
    </tr>
    <tr>
        <td height="35" width="200px" colspan="2" style="color: #800000; width: 600px;">
            <b style="font-size: large">Personal Information:</b></td>
    </tr>
    <tr>
        <td height="35" width="200px">
            Name</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtname" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
          
      <tr>
        <td height="35" width="200px">
            Surname</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtsurname" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtsurname" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter Surname">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="200px" class="style1">
            Gender</td>
        <td width="400px" height="25px"  valign="top">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal" Width="140px" RepeatLayout="Flow" >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Select Gender">*</asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td height="35" width="200px">
            Date of Birth</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtdob" runat="server" Width="150px" ClientIDMode="Static"></asp:TextBox>
           
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtdob" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Select Date Of Birth">*</asp:RequiredFieldValidator>
         
            <a onclick="setYears(1933, 2014);showCalender(this, '<%=txtdob.ClientID %>');">
&nbsp;</a></td>
    </tr>
    <tr>
        <td valign="top" width="200px">
            Address</td>
        <td style="height: 61px" width="400px">
            <asp:TextBox ID="txtaddress" runat="server" Height="46px" TextMode="MultiLine" 
                Width="300px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter Address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="middle" width="200px">
            City</td>
        <td style="height: 34px; " valign="middle" width="400px">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="303px">
                <asp:ListItem>Aurangabad</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Jalgaon</asp:ListItem>
                <asp:ListItem>Parbhani</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
    <tr>
        <td height="35" width="200px">
            State</td>
        <td height="35" width="400px">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="300px">
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>UttarPradesh</asp:ListItem>
                <asp:ListItem>Jammu Kashmir</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
   
    <tr>
        <td height="35" width="200px">
            Contact Number</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtcontact" runat="server" Width="300px" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtcontact" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter Mobile Number">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtcontact" ErrorMessage="RegularExpressionValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter correct contact Number" 
                ValidationExpression="^([7-9]{1})([0-9]{9})$">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td height="35" width="200px">
            E-Mail ID</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtemail" runat="server" Width="300px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ToolTip="Enter Email ID in Correct Format">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" ToolTip="Enter Email ID">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td height="35" width="200px">
            Qualification</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtqlf" runat="server" Width="100px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtqlf" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter your qualification">*</asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
     <td height="35" width="200px">
            User Name</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtuser" runat="server" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                ControlToValidate="txtuser" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter UserName">*</asp:RequiredFieldValidator>
    

    
    </tr>
       <tr>
     <td height="35" width="200px">
            Password</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtpass" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ControlToValidate="txtpass" ErrorMessage="RequiredFieldValidator" 
                Font-Bold="True" Font-Size="Large" ForeColor="Red" SetFocusOnError="True" 
                ToolTip="Enter Password">*</asp:RequiredFieldValidator>

            </tr>
               <tr>
     <td height="35" width="200px">
           Confirm Password</td>
        <td height="35" width="400px">
            <asp:TextBox ID="txtcpass" runat="server" Width="300px" TextMode="Password"></asp:TextBox>

    
            

            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="Enter Correct Password"></asp:CompareValidator>

    
    </tr>
    
   
    
    <tr>
        <td align="center" colspan="2" height="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2" height="35"><asp:Button ID="btnsubmit" runat="server" Text="Submit" style="font-weight: 700" onclick="btnsubmit_Click"  Font-Bold="True" Font-Size="Large" ForeColor="#990000" />
        &nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [userlogin]" InsertCommand="insert into userlogin( Name, surname, gender, dob, address, city, state, contact_no, email_id, qualification, user_id, password, confirm)values( @Name, @surname, @gender, @dob, @address, @city, @state, @contact_no, @email_id, @qualification, @user_id, @password, @confirm)

">
                <InsertParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="surname" />
                    <asp:Parameter Name="gender" />
                    <asp:Parameter Name="dob" />
                    <asp:Parameter Name="address" />
                    <asp:Parameter Name="city" />
                    <asp:Parameter Name="state" />
                    <asp:Parameter Name="contact_no" />
                    <asp:Parameter Name="email_id" />
                    <asp:Parameter Name="qualification" />
                    <asp:Parameter Name="user_id" />
                    <asp:Parameter Name="password" />
                    <asp:Parameter Name="confirm" />
                </InsertParameters>
            </asp:SqlDataSource>
            </td>
    </tr>
    <tr>
        <td align="center" colspan="2" height="5">&nbsp;</td>
    </tr>
</table>


</div>

</asp:Content>

