<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Upload_aspx.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 227px;
        }
        .auto-style3 {
            width: 227px;
            height: 22px;
            text-align: right;
        }
        .auto-style4 {
            height: 22px;
            margin-left: 40px;
        }
        .auto-style5 {
            width: 227px;
            text-align: right;
        }
        .auto-style6 {
            width: 227px;
            text-align: right;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            height: 22px;
            text-align: left;
            width: 188px;
            margin-left: 40px;
        }
        .auto-style9 {
            height: 30px;
            text-align: left;
            width: 188px;
        }
        .auto-style10 {
            text-align: left;
            width: 188px;
        }
        .auto-style11 {
            width: 227px;
            height: 24px;
        }
        .auto-style12 {
            height: 24px;
        }
        .auto-style13 {
            width: 188px;
        }
        .auto-style14 {
            height: 24px;
            width: 188px;
        }
        #Reset1 {
            width: 68px;
        }
        .auto-style15 {
            width: 227px;
            text-align: right;
            height: 32px;
        }
        .auto-style16 {
            text-align: left;
            width: 188px;
            height: 32px;
        }
        .auto-style17 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registracija</h1>
        </div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Uporabniško ime:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">E-mail:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px" Height="22px"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Vstaviti morate pravilen e-naslov." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Geslo:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Potrdi geslo:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Obvezno polje!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Gesli se morata ujemati!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style14"></td>
                <td class="auto-style12"></td>
            </tr>
        </table>
    
    </form>
</body>
</html>
