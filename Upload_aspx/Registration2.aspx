<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration2.aspx.cs" Inherits="Upload_aspx.Registration2" %>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <h1 style="text-align: center">
                &nbsp;</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" style="width: 160px">Uporabniško ime:</td>
                <td class="auto-style10" style="width: 336px">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="height: 57px; width: 160px;">E-mail:</td>
                <td class="auto-style16" style="width: 336px; height: 57px">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="179px" Height="57px" style="margin-top: 8px"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 57px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Vstaviti morate pravilen e-naslov." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="height: 57px; width: 160px;">Geslo:</td>
                <td class="auto-style9" style="width: 336px; height: 57px">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px" style="margin-top: 8px"></asp:TextBox>
                </td>
                <td class="auto-style7" style="height: 57px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="height: 57px; width: 160px;">Potrdi geslo:</td>
                <td class="auto-style8" style="width: 336px; height: 57px">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px" ValidateRequestMode="Enabled" ViewStateMode="Disabled" style="margin-top: 8px"></asp:TextBox>
                </td>
                <td class="auto-style4" style="height: 57px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Gesli se morata ujemati!" ForeColor="Red"></asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="width: 160px">&nbsp;</td>
                <td class="auto-style13" style="width: 336px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="margin-top: 8px" Width="159px" />
                    <input id="Reset1" type="reset" value="Reset" style="margin-left: 12px; margin-top: 8px;" /></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 160px">&nbsp;</td>
                <td class="auto-style13" style="width: 336px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" style="width: 160px"></td>
                <td class="auto-style14" style="width: 336px"></td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
        </table>

                
        </div>
    
        </asp:Content>
