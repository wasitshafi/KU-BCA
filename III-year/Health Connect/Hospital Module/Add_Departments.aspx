<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital Module/HospitalMasterPage.master" AutoEventWireup="true" CodeFile="Add_Departments.aspx.cs" Inherits="Hospital_Module_Add_Departments" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    0<table style="width: 100%">
    <tr>
        <td style="background-position: center center; height: 176px; background-image: url('../images/department1.jpg'); background-repeat: no-repeat; background-color: #008080;" colspan="4"></td>
    </tr>
    <tr>
        <td style="background-position: center center; width: 1743px; background-image: url('../images/UnityHospital.jpg'); background-repeat: no-repeat; background-color: #3333CC;" rowspan="7"></td>
        <td style="height: 158px; " colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="color: #003300"><strong><span style="font-size: large">
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><span style="font-size: large"><strong>DEPARTMENT ENTRY&nbsp;</strong></span></span></td>
    </tr>
    <tr>
        <td style="height: 43px; width: 312px">&nbsp;&nbsp;&nbsp;&nbsp; Department Name</td>
        <td colspan="2" rowspan="2">
            <asp:TextBox ID="txt_dept_name" runat="server" Height="26px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_dept_name" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_dept_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 31px; width: 312px">&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td style="height: 44px; width: 312px">&nbsp;&nbsp;&nbsp;&nbsp; HOD</td>
        <td style="height: 44px; " colspan="2">
            <asp:TextBox ID="txt_hod" runat="server" Height="26px" Width="358px" CssClass="txt_s_1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_hod" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_hod" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 20px; width: 312px">&nbsp;&nbsp;&nbsp;&nbsp; Contact No</td>
        <td style="height: 20px; " colspan="2">
            <asp:TextBox ID="txt_c_no" runat="server" Height="26px" Width="358px" CssClass="txt_s_1" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_c_no" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_c_no" Display="Dynamic" ErrorMessage="Invalid Contact no." ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 312px; height: 52px" rowspan="2"></td>
        <td style="height: 52px; width: 387px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click"  CssClass="btn_s_1" />
            &nbsp; <asp:Button ID="Button2" runat="server" Text="Submit"
                 OnClick="Button2_Click" CssClass="btn_s_1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td style="height: 52px" rowspan="2"></td>
    </tr>
    <tr>
        <td style="height: 52px; width: 387px;">&nbsp;</td>
    </tr>
    </table>


    


</asp:Content>

