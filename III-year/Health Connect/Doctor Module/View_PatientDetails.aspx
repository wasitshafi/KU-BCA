<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor Module/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="View_PatientDetails.aspx.cs" Inherits="Doctor_Module_View_PatientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        
    <link rel="stylesheet" href="../layout/styles/mystylesheet.css" type="text/css" />
        <asp:View ID="View1" runat="server">
            <br />
            <table style="width: 100%">
                <tr>
                    <td style="width: 351px; height: 27px;">&nbsp;</td>
                    <td style="width: 109px; height: 27px;"></td>
                    <td style="width: 304px; height: 27px;"></td>
                    <td style="height: 27px">
                        <asp:LinkButton ID="lb_search_by_name" runat="server" CausesValidation="False" OnClick="lb_search_by_name_Click">Search By Name ?</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="width: 351px; height: 39px"></td>
                    <td class="center" colspan="2" style="height: 39px"><span style="font-size: 20px">Search Patient By Name</span></td>
                    <td style="height: 39px"></td>
                </tr>
                <tr>
                    <td style="width: 351px">&nbsp;</td>
                    <td style="width: 109px">Enter Patient ID</td>
                    <td style="width: 304px">
                        <asp:TextBox ID="txt_patient_id" runat="server" MaxLength="6" OnTextChanged="txt_patient_id_TextChanged" TextMode="Number" Width="129px" CssClass="txt_s_1" Height="16px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_patient_id" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 351px">&nbsp;</td>
                    <td style="width: 109px">&nbsp;</td>
                    <td style="width: 304px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bt_go" runat="server" Height="28px" OnClick="bt_go_Click" Text="GO" Width="65px" CssClass="btn_s_1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 351px">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="lbl_status_byid" runat="server" ForeColor="Maroon" Text="No Such patient found" Visible="False" Font-Bold="True" Font-Size="20px"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 351px">&nbsp;</td>
                    <td colspan="2">
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 351px">&nbsp;</td>
                    <td style="width: 109px">&nbsp;</td>
                    <td style="width: 304px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br /><br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="height: 22px; width: 380px"></td>
                    <td style="width: 137px; height: 22px"></td>
                    <td style="width: 280px; height: 22px"></td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td style="width: 380px">&nbsp;</td>
                    <td style="width: 137px">&nbsp;</td>
                    <td style="width: 280px">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="lb_search_by_id" runat="server" CausesValidation="False" OnClick="lb_search_by_id_Click">Search By Id ?</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="width: 380px; height: 40px;"></td>
                    <td class="center" colspan="2" style="height: 40px">&nbsp;&nbsp;&nbsp;<span style="font-size: 20px">Search Patient By Name</span></td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td style="height: 32px; width: 380px"></td>
                    <td style="width: 137px; height: 32px">Enter Patient Name</td>
                    <td style="width: 280px; height: 32px">
                        <asp:TextBox ID="txt_patient_name" runat="server" MaxLength="20" Width="144px" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_patient_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;</td>
                    <td style="height: 32px"></td>
                </tr>
                <tr>
                    <td style="height: 32px; width: 380px">&nbsp;</td>
                    <td style="width: 137px; height: 32px">&nbsp;</td>
                    <td style="width: 280px; height: 32px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bt_go2" runat="server" OnClick="bt_go2_Click" Text="GO" Width="65px" CssClass="btn_s_1" />
                    </td>
                    <td style="height: 32px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 380px">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="lbl_status_byname" runat="server" ForeColor="Maroon" Text="No Such patient found" Visible="False" Font-Bold="True" Font-Size="20px"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 380px">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 380px">&nbsp;</td>
                    <td style="width: 137px">&nbsp;</td>
                    <td style="width: 280px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <br />
        <br />
    </asp:MultiView>
</asp:Content>

