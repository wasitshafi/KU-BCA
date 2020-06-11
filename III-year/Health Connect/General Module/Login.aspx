<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="General_Module_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col4" style="display: inline-block;">
            <div id="container" style="text-align:center; margin:auto;">
                <div style="display:inline-block;width:auto;height:315px; background-image:url('../images/2.jpg');overflow:visible;"  >
                   
                    <div style="background-color:rgba(00,00,00,.6); display:inline-block;height:315px; width:100%;">
                         <table style="border-style: none; border-color: inherit; border-width: 0px; width: 137%; height: 282px;" >
                        <tr>
                            <td style="height: 50px; width: 117px;"></td>
                            <td style="height: 50px; width: 91px"></td>
                            <td style="width: 311px; height: 50px"></td>
                            <td style="height: 50px; width: 314px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 117px; height: 67px"></td>
                            <td style="text-align: left; width: 91px; color:whitesmoke; height: 67px;" >Enter user id</td>
                            <td style="width: 311px; text-align: left; height: 67px;">
            <asp:TextBox ID="txt_username" placeholder="User Name" runat="server" Height="16px" Width="165px" CssClass="txt_s_1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 314px; height: 67px"></td>
                        </tr>
                        <tr>
                            <td style="width: 117px; height: 49px"></td>
                            <td style="text-align: left; width: 91px; color:whitesmoke; height: 49px;">Enter password</td>
                            <td style="width: 311px; text-align: left; height: 49px;">
            <asp:TextBox ID="txt_password" placeholder="Password" runat="server" Height="17px" Width="165px" TextMode="Password" CssClass="txt_s_1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 314px; height: 49px"></td>
                        </tr>
                        <tr>
                            <td style="width: 117px; height: 66px;"></td>
                            <td ><span style="padding:0px;margin:0px;text-shadow:0px 0px 3px rgba(250,250,250,.9);font-size:15px;" class="specialchkbox"><asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" /></span>
                            </td>
                            <td style="width: 311px; text-align: left; height: 66px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="bt_login" runat="server" Text="Login" Width="65px" OnClick="Button1_Click" CssClass="btn_s_1" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lb_forgtpwd" runat="server" OnClick="lb_forgtpwd_Click" CssClass="whitetxt" CausesValidation="False"> Forget?</asp:LinkButton>
                            </td>
                            <td style="width: 314px; height: 66px;"></td>
                        </tr>
                        <tr>
                            <td style="width: 117px">&nbsp;</td>
                            <td style="width: 91px">&nbsp;</td>
                            <td style="width: 311px; text-align: left;">
                                &nbsp;</td>
                            <td style="width: 314px">&nbsp;</td>
                        </tr>
                    </table>
                        </div>
                    <br />
&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;<br />
                    <br />
        </div>
                </div>
    </div>

</asp:Content>

