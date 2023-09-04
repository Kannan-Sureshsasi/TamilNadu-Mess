<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="TamilNadu_Mess.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #fbe4d8;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <asp:Table ID="tblAdmin" runat="server" HorizontalAlign="Center" Height="491px" Width="490px" class="jumbotron" BackColor="#6e5be8">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                <asp:Label runat="server" ID="Label1" Width="10px"></asp:Label>
                <asp:Label ID="WelcomeAdmin" runat="server" Text="Welcome Admin!" ForeColor="Black" Font-Size="X-Large" Font-Names="Roboto Slab"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <div id="container" Align="Center">
                    <img id="profileImage" src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" alt="Profile Image" style="border-radius: 100%; width: 90px; height: 90px;" />
                </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblUsername" runat="server" Text="User Name" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:TextBox ID="txtUsername" runat="server" Text="" BorderColor="Black"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:TextBox ID="txtPassword" runat="server" Text="" BorderColor="Black"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label runat="server" ID="lbldummy" Width="80px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" BorderColor="Black" BorderStyle="Solid" Font-Bold="true" />
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
</asp:Content>