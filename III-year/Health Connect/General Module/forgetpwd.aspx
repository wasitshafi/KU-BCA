<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="forgetpwd.aspx.cs" Inherits="General_Module_forgetpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 174px">&nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 174px">&nbsp;</td>
                    <td style="width: 188px">Enter user name</td>
                    <td>
                        <asp:TextBox ID="txt_useremail" runat="server" TextMode="Email" OnTextChanged="txt_useremail_TextChanged" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_useremail" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 174px">&nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lb_next1" runat="server" OnClick="lb_next1_Click">Next</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 174px">&nbsp;</td>
                    <td style="width: 188px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 166px">&nbsp;</td>
                    <td style="width: 194px">Enter otp </td>
                    <td>
                        <asp:TextBox ID="txt_otp" runat="server" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_otp" Display="Dynamic" ErrorMessage="*" ForeColor="Red" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                        <asp:LinkButton ID="lb_resendotp" runat="server">Resend OTP...?</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 166px; height: 27px;"></td>
                    <td style="width: 194px; height: 27px;"></td>
                    <td style="height: 27px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lb_next2" runat="server" OnClick="lb_next2_Click">Next</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="Maroon" style="font-weight: 700; font-family: comfortaa;" Text="oOps..! you have entered wrong OPT...." Visible="False"></asp:Label>
                    </td>
                    <td style="height: 27px"></td>
                </tr>
                <tr>
                    <td style="width: 166px">&nbsp;</td>
                    <td style="width: 194px">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 303px">&nbsp;</td>
                    <td style="width: 204px">Enter new Password</td>
                    <td>
                        <asp:TextBox ID="txt_newpwd" runat="server" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_newpwd" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 303px">&nbsp;</td>
                    <td style="width: 204px">Re-Enter password</td>
                    <td>
                        <asp:TextBox ID="txt_reenter_pwd" runat="server" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_reenter_pwd" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpwd" ControlToValidate="txt_reenter_pwd" Display="Dynamic" ErrorMessage="Password Miss-Mached" ForeColor="Red"></asp:CompareValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 303px">&nbsp;</td>
                    <td style="width: 204px">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="lb_next3" runat="server" OnClick="lb_next3_Click">Finish</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server"></asp:View>
        <asp:View ID="View5" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>

