<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Upload_aspx.Login2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
       <h1 style="text-align: center">&nbsp;</h1> </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="height: 57px; width: 98px">Email</td>
                <td style="width: 234px; height: 57px;">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    
                </td>
                <td style="height: 57px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Prosim vnesite email" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
              
            </tr>
            <tr>
                <td class="auto-style3" style="height: 57px; width: 98px">Geslo</td>
                <td style="width: 234px; height: 57px;">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px" style="margin-top: 8px"></asp:TextBox>
                    
                </td>
                <td style="height: 57px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Prosim vnesite geslo" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 98px; height: 20px"></td>
                <td style="width: 234px; height: 20px;">
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 33px; width: 98px"></td>
                <td style="width: 234px; height: 33px;">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Vpis" Width="90px" Height="59px" />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td style="height: 33px"></td>
            </tr>
        </table>

</asp:Content>
