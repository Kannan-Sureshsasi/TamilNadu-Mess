<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TamilNadu_Mess.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #fbe4d8;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <asp:Table ID="tblLoginPage" runat="server" HorizontalAlign="Center" Height="491px" Width="490px" class="jumbotron" BackColor="#6e5be8">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell HorizontalAlign="left">
                <asp:Label runat="server" ID="Label1" Width="10px"></asp:Label>
                <asp:Label Text="Welcome_Buddy!" ID="Welcome_Buddy" ForeColor="black" runat="server" Font-Bold="true" Font-Size="X-Large" Font-Names="Roboto Slab"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <div id="container">
                    <img id="profileImage" src="http://clipart-library.com/images_k/face-profile-silhouette/face-profile-silhouette-18.png" alt="Profile Image" style="border-radius: 10%; width: 80px; height: 80px;" />
                </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="center">
                <asp:Label ID="lblUsername" runat="server" Text="User Name" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="left">
                <asp:TextBox ID="txtUsername" runat="server" Text=""  BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell  HorizontalAlign="Center">
                <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="left">
                <asp:TextBox ID="txtPassword" runat="server" Text="" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="lbldummy" Width="30px"></asp:Label>
                <asp:HyperLink runat="server" Text="Don't have an account?" NavigateUrl="~/RegisterForm.aspx" ForeColor="#000000"></asp:HyperLink>&nbsp;&nbsp;
                <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" BorderColor="#000000" Font-Bold="true" />&nbsp;&nbsp;
                <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" BorderColor="#000000" Font-Bold="true" />
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
</asp:Content>