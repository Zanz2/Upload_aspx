<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Upload_aspx.Profil" MasterPageFile="~/Site.master" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server"> 
    <h1>Izbris računa</h1>
    <table style="width: 100%">
        <tr>
            <td style="width: 149px">Geslo&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" ></asp:TextBox>
                
            </td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox1" ValidationGroup="Izbris"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Ponovno</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="182px" TextMode="Password" ></asp:TextBox>
                
            </td>
            <td>
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Gesli se morata ujemati!" ValidationGroup="Izbris" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ForeColor="Red"></asp:CompareValidator>
               <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox2" ValidationGroup="Izbris"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 149px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Izbris" OnClick="Button1_Click" ValidationGroup="Izbris" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td></td>
        </tr>
    </table>

    <h1>Sprememba gesla</h1>
    <table style="width: 100%">
        <tr>
            <td style="width: 264px">Staro geslo</td>
            <td style="width: 343px">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox3" ValidationGroup="Sprememba"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px; height: 33px;">Staro geslo ponovi</td>
            <td style="height: 33px; width: 343px;">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 33px">
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ValidationGroup="Sprememba" ErrorMessage="Stara gesla se ne ujemata" ForeColor="Red"></asp:CompareValidator>
               <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Obvezno polje!" ValidationGroup="Sprememba" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 264px">Novo geslo</td>
            <td style="width: 343px">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox5" ValidationGroup="Sprememba" ></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 264px">&nbsp;</td>
            <td style="width: 343px">
                <asp:Button ID="Button2" runat="server" Text="Spremeni" OnClick="Button2_Click" ValidationGroup="Sprememba"/>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

 </asp:Content>