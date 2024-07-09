<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="Student_registration_web_app.StudentRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>        .grid1 {
       margin-left:auto;
       margin-right:auto;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 795px">
            <strong>Student Registration Form<br />
            </strong>
            <br />
            <asp:Label ID="label1" runat="server" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtID" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Search student for ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSearch" runat="server" Width="537px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Width="172px" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" style="height: 22px; margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Surname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSurname" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="StudentID"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtStudenID" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlGender" runat="server" Height="17px" Width="128px">
                <asp:ListItem>Girl</asp:ListItem>
                <asp:ListItem>Boy</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:GridView ID="dgStudents" runat="server" CssClass="grid1" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="748px">
                <Columns>
                <asp:BoundField DataField="ID" HeaderText ="ID" />
                <asp:BoundField DataField="_Name" HeaderText ="Name" />
                 <asp:BoundField DataField="Surname" HeaderText ="Surname" />
                     <asp:BoundField DataField="StudentID" HeaderText ="Student ID" />
                     <asp:BoundField DataField="Gender" HeaderText ="Gender" />
                     <asp:BoundField DataField="Email" HeaderText ="E-mail" />
                     <asp:BoundField DataField="PhoneNumber" HeaderText ="PhoneNumber" />
                     <asp:BoundField DataField="PlaceOfBirth" HeaderText ="Place of birth" />
                     <asp:BoundField DataField="DateOfBirth" HeaderText ="Date of birth" />
                </Columns>
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label6" runat="server" Text="E-mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="PhoneNumber"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtPhoneNumber" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Place of birth"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPlaceBirth" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Date of birth"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDateBirth" runat="server" style="margin-bottom: 0px" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Student" Width="172px" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Student" Width="172px" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Student" Width="172px" />
        </div>
    </form>
</body>
</html>
