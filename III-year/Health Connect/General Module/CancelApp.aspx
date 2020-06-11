<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="CancelApp.aspx.cs" Inherits="General_Module_CancelApp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 273px; height: 80px"></td>
                    <td style="width: 245px; height: 80px;"></td>
                    <td style="height: 80px">
                    </td>
                    <td style="height: 80px"></td>
                </tr>
                <tr>
                    <td style="width: 273px">&nbsp;</td>
                    <td style="width: 245px">Enter patient id</td>
                    <td>
                        <asp:TextBox ID="txt_p_id" runat="server" CssClass="txt_s_1" OnTextChanged="txt_p_id_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 273px">&nbsp;</td>
                    <td style="width: 245px">Enter contact no</td>
                    <td>
                        <asp:TextBox ID="txt_c_no" runat="server" MaxLength="10" CssClass="txt_s_1"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 273px; height: 111px"></td>
                    <td style="width: 245px; height: 111px;"></td>
                    <td style="height: 111px">&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Next</asp:LinkButton>
                    </td>
                    <td style="height: 111px"></td>
                </tr>
                <tr>
                    <td style="width: 273px">&nbsp;</td>
                    <td style="width: 245px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 163px">&nbsp;</td>
                    <td style="width: 863px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 163px; height: 214px"></td>
                    <td style="width: 863px; height: 214px">
                        <br />
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
                    <td style="height: 214px"></td>
                </tr>
                <tr>
                    <td style="width: 163px">&nbsp;</td>
                    <td style="width: 863px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" CssClass="btn_s_1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server"></asp:View>
        <asp:View ID="View4" runat="server"></asp:View>


    </asp:MultiView>
</asp:Content>

