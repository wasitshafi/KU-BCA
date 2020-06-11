<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Module/AdminMasterPage.master" AutoEventWireup="true" CodeFile="View_Appointments.aspx.cs" Inherits="Admin_Module_View_Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <table style="width: 100%; height: 447px">
        <tr>
            <td class="auto-style6" colspan="3" style="color: #008080; background-color: #008080; height: 81px;"></td>
        </tr>
        <tr>
            <td style="color: #008080; background-color: #FFFFFF; height: 14px; text-align: right;">search by Doctor-ID<asp:TextBox ID="txt_srch_dr_id" runat="server" AutoPostBack="True" Height="20px" style="margin-bottom: 0px" Width="243px" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="color: #008080; background-color: #FFFFFF; height: 14px; width: 50px;">
                <asp:Button ID="btn_go" runat="server" OnClick="Button1_Click" Text="GO" CssClass="btn_s_1" />
            </td>
            <td style="color: #008080; background-color: #FFFFFF; height: 14px;"></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 194px">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="26px" style="margin-top: 63px; margin-left: 93px;" Width="1028px">
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
            <td style="height: 194px">&nbsp;</td>
        </tr>
        </table>

</asp:Content>

