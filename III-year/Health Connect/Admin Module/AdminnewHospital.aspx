<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Module/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminnewHospital.aspx.cs" Inherits="Admin_Module_AdminnewHospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link rel="stylesheet" href="../layout/styles/mystylesheet.css" type="text/css" />
   
    <table style="width: 100%">
        <tr>
            <td style="height: 24px; background-color: #008080;" class="auto-style6" colspan="5"></td>
        </tr>
        <tr>
            <td style="background-position: center center; height: 93px; background-image: url('../images/hsp.jpg'); background-repeat: no-repeat;" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td style="background-position: center center; width: 1537px; background-image: url('../images/hospital.png'); background-repeat: no-repeat;" rowspan="11">&nbsp;</td>
            <td style="color: #000000; text-align: left; height: 23px;" class="right" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Fields Marked with asterisk(<span style="color: #FF0000">*</span>) are manditory.</td>
            <td style="height: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left;" class="right"><span style="font-family: 'segoe UI', Tahoma, Geneva, Verdana, sans-serif">Hospita</span>l Name</td>
            <td style="width: 103px">
                <asp:TextBox ID="txt_h_name" runat="server" Height="26px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="width: 233px">
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_h_name" ErrorMessage="Plz Enter Hospital Name"></asp:RequiredFieldValidator>--%><%-- <addkey="ValidationSettings:UnobtrusiveValidationMode" value="None" />--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_h_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 46px;" class="right">Director</td>
            <td style="height: 46px; width: 103px;">
                <asp:TextBox ID="txt_director" runat="server" Height="26px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="height: 46px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txt_director"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 46px">
                </td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 42px;" class="right">Hospital Type</td>
            <td style="width: 103px; height: 42px">
                <asp:DropDownList ID="ddl_h_type" runat="server" Width="358px" Height="26px" OnSelectedIndexChanged="ddl_h_type_SelectedIndexChanged" CssClass="ddl_s_1">
                </asp:DropDownList>
            </td>
            <td style="height: 42px; width: 233px;">
                <asp:RequiredFieldValidator ID="Plz" runat="server" ControlToValidate="ddl_h_type" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 42px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 46px;" class="right">State</td>
            <td style="width: 103px; height: 46px">
                <asp:DropDownList ID="ddl_State" runat="server" Width="358px" Height="26px" CssClass="ddl_s_1" DataSourceID="SqlDataSource1" DataTextField="district" DataValueField="district">
                    <asp:ListItem Value="Jammu &amp; Kashmir">Jammu &amp; Kashmir</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PABSConnectionString %>" SelectCommand="SELECT [district] FROM [districts] ORDER BY [district]"></asp:SqlDataSource>
            </td>
            <td style="height: 46px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_State" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 46px">
                </td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 46px;" class="right">District</td>
            <td style="width: 103px; height: 46px">
                <asp:DropDownList ID="ddl_District" runat="server" Width="358px" Height="26px" CssClass="ddl_s_1">
                    <asp:ListItem>Srinagar</asp:ListItem>
                    <asp:ListItem>Anantnag</asp:ListItem>
                    <asp:ListItem>Shopian</asp:ListItem>
                    <asp:ListItem>Kulgam</asp:ListItem>
                    <asp:ListItem>Budgam</asp:ListItem>
                    <asp:ListItem>Pulwama</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 46px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_District" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 46px">
                </td>
        </tr>
        <tr>
            <td style="width: 267px; height: 38px; color: #000000; text-align: left;" class="right">Address</td>
            <td style="height: 38px; width: 103px;">
                <asp:TextBox ID="txt_address" runat="server" Height="81px" Width="364px" TextMode="MultiLine" CssClass="add_s_1" Wrap="False"></asp:TextBox>
            </td>
            <td style="height: 38px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 38px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 267px; height: 40px; color: #000000; text-align: left;" class="right">Pin Code</td>
            <td style="height: 40px; width: 103px;">
                <asp:TextBox ID="txt_pincode" runat="server" Height="26px" Width="358px" MaxLength="6" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="height: 40px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_pincode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_pincode" Display="Dynamic" ErrorMessage="Invalid Pin Code" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 42px;" class="right">Contact No</td>
            <td style="width: 103px; height: 42px">
                <asp:TextBox ID="txt_c_no" runat="server" Height="26px" Width="358px" MaxLength="10" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="height: 42px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_c_no" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_c_no" Display="Dynamic" ErrorMessage="Invalid Contact no." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 42px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 39px;" class="right">Email ID</td>
            <td style="width: 103px; height: 39px">
                <asp:TextBox ID="txt_email" runat="server" Height="26px" Width="358px" TextMode="Email" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="height: 39px; width: 233px;">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 39px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 267px; color: #000000; text-align: left; height: 42px;" class="right">Website</td>
            <td style="width: 103px; height: 42px">
                <asp:TextBox ID="txt_website" runat="server" Height="26px" Width="358px" TextMode="Url" CssClass="txt_s_1"></asp:TextBox>
            </td>
            <td style="height: 42px; width: 233px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txt_website"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 42px">
                </td>
        </tr>
        <tr>
            <td style="width: 1537px; height: 30px;"></td>
            <td style="width: 267px; color: #000000; text-align: left; height: 30px;" class="right"></td>
            <td style="width: 103px; height: 30px; text-align: left;" class="j">
                <asp:Button ID="btsubmit" runat="server" OnClick="Button4_Click" Text="submit" height="28px" width="61px" CssClass="btn_s_1" />
                <asp:Button ID="Button1" runat="server" Text="cancel" height="28px" width="61px" CausesValidation="False" OnClick="Button1_Click2" CssClass="btn_s_1" />
            </td>
            <td style="height: 30px; width: 233px;">
                </td>
            <td style="height: 30px">
                </td>
        </tr>
        <tr>
            <td style="width: 1537px; height: 46px;">&nbsp;</td>
            <td style="width: 267px; color: #000000; text-align: left; height: 46px;" class="right">&nbsp;</td>
            <td style="width: 103px; height: 46px">
                &nbsp;</td>
            <td style="height: 46px; width: 233px;">
                &nbsp;</td>
            <td style="height: 46px">
                &nbsp;</td>
        </tr>
        </table>

</asp:Content>

