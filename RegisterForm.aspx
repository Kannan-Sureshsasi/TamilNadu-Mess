<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="TamilNadu_Mess.RegisterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #fbe4d8;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <asp:Table ID="tblRegisterHere" runat="server" Height="491px" Width="490px" class="jumbotron" BackColor="#6e5be8">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                <asp:Label runat="server" ID="Label1" Width="10px"></asp:Label>
                <asp:Label ID="Createaccount" runat="server" Text="Create Account !" ForeColor="Black" Font-Bold="true" Font-Size="X-Large" Font-Names="Roboto Slab"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblUsername" runat="server" Text="Username" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server" Text="" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblEmail" runat="server" Text="Email" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" Text="" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblNewpassword" runat="server" Text="New password" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNewpassword" runat="server" Text="" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label runat="server" ID="Label3" Width="30px"></asp:Label>
                <asp:HyperLink runat="server" Text="Already have an account" NavigateUrl="~/LoginPage.aspx" ForeColor="#000000"></asp:HyperLink>&nbsp;
                <asp:Button ID="Register" runat="server" Text="Register Here" OnClick="Register_Click" BorderColor="Black" Font-Bold="true" ForeColor="#7B1BBB" />
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
</asp:Content>