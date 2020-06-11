<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital Module/HospitalMasterPage.master" AutoEventWireup="true" CodeFile="Add_Doctors.aspx.cs" Inherits="Hospital_Module_Add_Doctors" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 373px"></td>
            <td style="width: 148px"></td>
            <td style="width: 498px; "></td>
            <td></td>
        </tr>
        <tr>
            <td style="background-position: center center; width: 373px; background-image: url('../images/images.jpeg'); background-repeat: no-repeat;" rowspan="10"></td>
            <td style="height: 52px; width: 148px">&nbsp;</td>
            <td style="width: 498px; height: 52px">
                &nbsp;</td>
            <td style="height: 52px"></td>
        </tr>
        <tr>
            <td style="height: 42px; width: 148px">Doctor Name</td>
            <td style="width: 498px; height: 42px">
                <asp:TextBox ID="txt_d_name" runat="server" Height="26px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_d_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_d_name" Display="Dynamic" ErrorMessage="*" ValidationExpression="(^[A-Za-z\s]+$)" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="height: 40px; width: 148px">Select Department</td>
            <td style="width: 498px; height: 40px">
                <asp:DropDownList ID="ddl_dept_id" runat="server" Height="26px" Width="358px" OnSelectedIndexChanged="ddl_dept_id_SelectedIndexChanged" CssClass="ddl_s_1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddl_dept_id" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 40px"></td>
        </tr>
        <tr>
            <td style="height: 42px; width: 148px">Qualification</td>
            <td style="width: 498px; height: 42px">
                <asp:TextBox ID="txt_qual" runat="server" Height="22px" Width="233px" CssClass="txt_s_1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_qual" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_qual" Display="Dynamic" ErrorMessage="*" ValidationExpression="(^[A-Za-z\s]+$)" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td style="height: 49px; width: 148px">Experience</td>
            <td style="width: 498px; height: 49px">
                <asp:TextBox ID="txt_exp" runat="server" MaxLength="2" TextMode="Number" CssClass="txt_s_1">years</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_exp" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 49px"></td>
        </tr>
        <tr>
            <td style="height: 43px; width: 148px">Designation</td>
            <td style="width: 498px; height: 43px">
                <asp:DropDownList ID="ddl_desig" runat="server" Height="26px" Width="358px" CssClass="ddl_s_1">
                    <asp:ListItem>doctor</asp:ListItem>
                    <asp:ListItem>HoD</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl_desig" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 43px"></td>
        </tr>
        <tr>
            <td style="height: 50px; width: 148px">Address</td>
            <td style="width: 498px; height: 50px">
                <asp:TextBox ID="txt_address" runat="server" Height="67px" Width="358px" TextMode="MultiLine" CssClass="add_s_1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_address" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="height: 55px; width: 148px">Contact No</td>
            <td style="width: 498px; height: 55px">
                <asp:TextBox ID="txt_c_no" runat="server" Height="26px" Width="358px" CssClass="txt_s_1" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_c_no" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_c_no" Display="Dynamic" ErrorMessage="Invalid Contact no." ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 55px"></td>
        </tr>
        <tr>
            <td style="height: 61px; width: 148px">Email ID</td>
            <td style="width: 498px; height: 61px">
                <asp:TextBox ID="txt_email" runat="server" Height="26px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
            <td style="height: 61px"></td>
        </tr>
        <tr>
            <td style="width: 148px">Upload Image</td>
            <td style="width: 498px">
                <asp:FileUpload ID="flup_dimg" runat="server" Height="26px" style="margin-top: 0px" Width="358px" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="flup_dimg" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="flup_dimg" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">&nbsp;</td>
            <td style="width: 148px">&nbsp;</td>
            <td style="width: 498px">&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" style="margin-top: 0px" Text="Cancel" OnClick="Button1_Click" CssClass="btn_s_1" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" style="margin-top: 0px" Text="Submit" OnClick="Button2_Click1" CssClass="btn_s_1" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 373px">&nbsp;</td>
            <td style="width: 148px">&nbsp;</td>
            <td style="width: 498px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
  
</asp:Content>

