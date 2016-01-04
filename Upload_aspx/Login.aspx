<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Upload_aspx.Login"  MasterPageFile="~/MasterPage.master" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
    
       <h1 style="text-align: center">Prijava</h1> </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Uporabniško ime</td>
                <td>
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Prosim vnesite uporabniško ime" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Geslo</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Prosim vnesite geslo" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Vpis" Width="90px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
