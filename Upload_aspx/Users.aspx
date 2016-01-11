<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Upload_aspx.Users"  MasterPageFile="~/Site.master"%>



<asp:Content ID="Content9" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <asp:Label ID="Label_welcome" runat="server" Text="Dobrodošli..."></asp:Label>
        <br />
        <asp:Button ID="B_Logout" runat="server" OnClick="B_Logout_Click" Text="Odjava" />
    
    </div>
  </asp:Content>