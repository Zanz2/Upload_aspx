<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="Upload_aspx.Profil" MasterPageFile="~/Site.master" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server"> 
    <h1><b>Izbris računa</b></h1>
    <table style="width: 100%">
        <tr>
            <td style="width: 160px; height: 66px;">Geslo&nbsp;</td>
            <td style="height: 66px; width: 341px;">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" ></asp:TextBox>
                
            </td>
            <td style="height: 66px"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox1" ValidationGroup="Izbris"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 66px;">Ponovno</td>
            <td style="height: 66px; width: 341px;">
                <asp:TextBox ID="TextBox2" runat="server" Width="182px" TextMode="Password" ></asp:TextBox>
                
            </td>
            <td style="height: 66px">
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Gesli se morata ujemati!" ValidationGroup="Izbris" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ForeColor="Red"></asp:CompareValidator>
               <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox2" ValidationGroup="Izbris"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 66px;"></td>
            <td style="height: 66px; width: 341px;">
                <asp:Button ID="Button1" runat="server" Text="Izbris" OnClick="Button1_Click" ValidationGroup="Izbris" Height="56px" Width="130px" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 66px"></td>
        </tr>
    </table>

    <h1><b>Sprememba gesla</b></h1>
    <table style="width: 100%">
        <tr>
            <td style="width: 160px; height: 66px;">Staro geslo</td>
            <td style="width: 343px; height: 66px;">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 66px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox3" ValidationGroup="Sprememba"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px; height: 66px;">Staro geslo ponovi</td>
            <td style="height: 66px; width: 343px;">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 66px">
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ValidationGroup="Sprememba" ErrorMessage="Stara gesla se ne ujemata" ForeColor="Red"></asp:CompareValidator>
               <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Obvezno polje!" ValidationGroup="Sprememba" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 66px;">Novo geslo</td>
            <td style="width: 343px; height: 66px;">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 66px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Obvezno polje!" ControlToValidate="TextBox5" ValidationGroup="Sprememba" ></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px; height: 66px;"></td>
            <td style="width: 343px; height: 66px;">
                <asp:Button ID="Button2" runat="server" Text="Spremeni" OnClick="Button2_Click" ValidationGroup="Sprememba" Height="56px" Width="185px"/>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 66px"></td>
        </tr>
    </table>

 </asp:Content>