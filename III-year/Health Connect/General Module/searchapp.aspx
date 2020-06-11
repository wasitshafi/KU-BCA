<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="searchapp.aspx.cs" Inherits="General_Module_searchapp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 229px">&nbsp;</td>
        <td style="width: 281px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 229px">&nbsp;</td>
        <td style="width: 281px">enter Appointment id</td>
        <td>
            <asp:TextBox ID="txt_appid" runat="server" CssClass="txt_s_1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 229px">&nbsp;</td>
        <td style="width: 281px">enter contact no</td>
        <td>
            <asp:TextBox ID="txt_cno" runat="server" MaxLength="10" OnTextChanged="TextBox1_TextChanged" CssClass="txt_s_1"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 229px">&nbsp;</td>
        <td style="width: 281px">&nbsp;</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn_s_1" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 229px; height: 245px"></td>
        <td colspan="2" style="height: 245px">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </td>
        <td style="height: 245px"></td>
    </tr>
    <tr>
        <td style="width: 229px">&nbsp;</td>
        <td style="width: 281px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

