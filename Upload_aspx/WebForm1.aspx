<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Upload_aspx.WebForm11" MasterPageFile="~/Site.master" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server"> 
        <div style="font-family:Arial">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Datoteka">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Naloži" Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Velikost v bitih" />
                <asp:BoundField DataField="Type" HeaderText="Tip datoteke" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        </div>
    </asp:Content>