<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital Module/HospitalMasterPage.master" AutoEventWireup="true" CodeFile="Add_Lab.aspx.cs" Inherits="Hospital_Module_Add_Lab" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="background-position: center center; height: 142px; background-image: url('../images/lab2.jpg'); background-repeat: no-repeat;" colspan="4"></td>
        </tr>
        <tr>
            <td style="background-position: center center; width: 6035px; background-image: url('../images/lab-photo.jpg'); background-repeat: no-repeat; background-color: #666699;" rowspan="11">&nbsp;</td>
            <td style="height: 9px;" colspan="2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fields Marked with asterisk(<span style="color: #FF0000">*</span>) are manditory.<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td rowspan="2"></td>
        </tr>
        <tr>
            <td style="height: 66px;" colspan="2"><span style="font-size: large; color: #003300"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LABORATORY ENTRY</strong></span></td>
        </tr>
        <tr>
            <td style="width: 794px; height: 58px;">&nbsp;&nbsp; Laboratory Name</td>
            <td style="width: 537px; height: 58px;">
                <asp:TextBox ID="txt_lab_name" runat="server" Height="23px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_lab_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_lab_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 58px"></td>
        </tr>
        <tr>
            <td style="width: 794px; height: 50px;">&nbsp;&nbsp; Select Hospital</td>
            <td style="width: 537px; height: 50px;">
                <asp:DropDownList ID="ddl_h_id" runat="server" Height="23px" Width="363px" AutoPostBack="True" OnSelectedIndexChanged="ddl_h_id_SelectedIndexChanged" CssClass="ddl_s_1">
                </asp:DropDownList>
            </td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="width: 794px; height: 45px;">&nbsp;&nbsp; Select Department</td>
            <td style="width: 537px; height: 45px;">
                <asp:DropDownList ID="ddl_dept_id" runat="server" Height="23px" Width="364px" CssClass="ddl_s_1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddl_dept_id" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 45px"></td>
        </tr>
        <tr>
            <td style="width: 794px; height: 49px;">&nbsp;&nbsp; Lab Assistant</td>
            <td style="width: 537px; height: 49px;">
                <asp:TextBox ID="txt_assist" runat="server" Height="23px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_assist" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_assist" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 49px"></td>
        </tr>
        <tr>
            <td style="width: 794px">&nbsp;&nbsp; Contact No</td>
            <td style="width: 537px">
                <asp:TextBox ID="txt_c_no" runat="server" Height="23px" Width="358px" CssClass="txt_s_1" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_c_no" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_c_no" Display="Dynamic" ErrorMessage="Invalid Contact no." ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 794px; height: 67px;"></td>
            <td style="width: 537px; height: 67px;"></td>
            <td style="height: 67px"></td>
        </tr>
        <tr>
            <td style="width: 794px">&nbsp;</td>
            <td style="width: 537px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn_s_1" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" CssClass="btn_s_1"  />
            &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 794px; height: 20px;"></td>
            <td style="width: 537px; height: 20px;"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 794px; height: 194px;"></td>
            <td style="width: 537px; height: 194px;"></td>
            <td style="height: 194px"></td>
        </tr>
        <tr>
            <td style="background-color: #008080;" colspan="4">&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

