<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor Module/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="View_Appointments.aspx.cs" Inherits="Doctor_Module_View_Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 336px">&nbsp;</td>
            <td style="width: 370px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="lbl_status" runat="server" Text="There is no appointments for today. " Font-Bold="True" Font-Size="20px" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 85px; width: 162px"></td>
            <td colspan="2" style="height: 85px">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </td>
            <td style="height: 85px"></td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 336px">&nbsp;</td>
            <td style="width: 370px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

