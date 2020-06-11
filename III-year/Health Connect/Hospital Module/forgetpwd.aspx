<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="forgetpwd.aspx.cs" Inherits="Hospital_Module_forgetpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 188px">Enter user name</td>
                    <td>
                        <asp:TextBox ID="txt_useremail" runat="server" TextMode="Email" OnTextChanged="txt_useremail_TextChanged" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_useremail" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lb_next1" runat="server" OnClick="lb_next1_Click">Next</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 194px">Enter otp </td>
                    <td>
                        <asp:TextBox ID="txt_otp" runat="server" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_otp" Display="Dynamic" ErrorMessage="*" ForeColor="Red" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                        <asp:LinkButton ID="lb_resendotp" runat="server">Resend OTP...?</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 194px">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lb_next2" runat="server" OnClick="lb_next2_Click">Next</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 211px">&nbsp;</td>
                    <td style="width: 194px">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Maroon" style="font-weight: 700; font-family: comfortaa;" Text="oOps..! you have entered wrong OPT...."></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 100%">
                <tr>
                    <td>&nbsp;</td>
                    <td>Enter new Password</td>
                    <td>
                        <asp:TextBox ID="txt_newpwd" runat="server" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Re-enter Password</td>
                    <td>&nbsp;<asp:TextBox ID="txt_reenterpwd" runat="server" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_reenterpwd" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpwd" ControlToValidate="txt_reenterpwd" Display="Dynamic" ErrorMessage="Password mis-mached" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="lb_next3" runat="server" OnClick="lb_next3_Click">Next</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server"></asp:View>
        <asp:View ID="View5" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>

