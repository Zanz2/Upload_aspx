﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="star registration.aspx.cs" Inherits="Upload_aspx.Registration"  MasterPageFile="~/Site.master"%>


    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 
        <div>
            <h1 style="text-align: center">Registracija</h1>
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
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px" OnTextChanged="TextBoxPass_TextChanged"></asp:TextBox>
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
                    <asp:Button ID="ButtonSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <input id="Reset1" type="reset" value="Reset" /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login1.aspx">Prijava</asp:HyperLink>
                </td>
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
    

        </asp:Content>