<%@ Page Title="" Language="C#" MasterPageFile="~/General Module/GeneralMasterPage.master" AutoEventWireup="true" CodeFile="patient_verification_booking.aspx.cs" Inherits="General_Module_patient_verification_booking" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

     <link rel="stylesheet" href="../layout/styles/mystylesheet.css" type="text/css" />
    <p>
    <br style="font-family: comfortaa" />
    <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        <br style="font-family: comfortaa" />
        <asp:View ID="View1" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px; width: 302px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; width: 119px"></td>
                    <td style="width: 144px; height: 20px;"></td>
                    <td style="width: 533px; height: 20px"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 302px; text-decoration: underline; color: #996633; font-family: comfortaa;"></td>
                    <td style="width: 119px; text-decoration: underline; color: #996633; font-family: comfortaa;">Step 1 of 4</td>
                    <td style="width: 144px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 533px; text-align: right; font-weight: 700; color: #990000;"><span style="color: #000000"><span style="font-family: comfortaa">Registered Patient ?</span><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False" style="font-family: comfortaa">Click Here</asp:LinkButton>
                        </span><span style="font-family: comfortaa">&nbsp;</span></td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 302px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; width: 119px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 144px; height: 20px; font-size: large; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; font-size: large; width: 533px; font-family: comfortaa;"><strong>Book your Appointment Here</strong></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 302px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; width: 119px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 144px; height: 20px; font-size: large; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; font-size: large; width: 533px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; font-family: comfortaa;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 302px; height: 26px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 119px; height: 26px;"></td>
                    <td style="width: 144px; height: 26px; font-family: comfortaa;">Enter Aadhaar no.</td>
                    <td style="width: 533px; height: 26px;">
                        <asp:TextBox ID="txt_aadhaar_no" runat="server" Width="232px" MaxLength="12" OnTextChanged="TextBox1_TextChanged" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_aadhaar_no" Display="Dynamic" ErrorMessage="Invalid no" ValidationExpression="[0-9]{12}" style="font-family: comfortaa" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_aadhaar_no" Display="Dynamic" ErrorMessage="Please enter aadhaar no" style="font-family: comfortaa" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 26px"></td>
                </tr>
                <tr>
                    <td style="height: 30px; width: 302px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 30px; width: 119px"></td>
                    <td style="width: 144px; height: 30px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 533px; height: 30px"><span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="bt_submit_aadhaar" runat="server" Class="bt_style_1" Height="43px" OnClick="Button1_Click" style="font-family: comfortaa; margin-top: 0px;" Text="SUBMIT" Width="100px" CssClass="btn_s_1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong style="font-size: 15px">Don't have an Aadhaar</strong></span><span style="font-family: comfortaa; font-size: 15px"> ?</span><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="False" style="font-family: comfortaa; font-size: 15px">Click Here</asp:LinkButton>
                    </td>
                    <td style="height: 30px"></td>
                </tr>
                <tr>
                    <td style="width: 302px; font-family: comfortaa; height: 22px;"></td>
                    <td style="width: 119px; font-family: comfortaa; height: 22px;"></td>
                    <td style="width: 144px; font-family: comfortaa; height: 22px;"></td>
                    <td style="width: 533px; font-family: comfortaa; height: 22px;"></td>
                    <td style="font-family: comfortaa; height: 22px;"></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px; width: 366px;"></td>
                    <td style="height: 20px; width: 113px"></td>
                    <td style="height: 20px; width: 372px;"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">&nbsp;</td>
                    <td class="right" style="width: 372px"><span style="font-family: comfortaa;"><strong> New</strong></span><span style="color: #000000; font-family: comfortaa;"><strong> Patient ?</strong></span>&nbsp;<strong><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="False" style="font-family: comfortaa">Click Here</asp:LinkButton>
                        </strong></td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 43px; width: 366px;"></td>
                    <td style="height: 43px; text-align: left; font-weight: 700; color: #808080; font-size: large; font-family: comfortaa;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Log In Details</td>
                    <td style="height: 43px"></td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">Enter your id</td>
                    <td style="width: 372px">
                        <asp:TextBox ID="txt_username" runat="server" MaxLength="25" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <span style="font-family: comfortaa">&nbsp;&nbsp; </span> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Username" ControlToValidate="txt_username" style="font-family: comfortaa" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">Enter password</td>
                    <td style="width: 372px">
                        <asp:TextBox ID="txt_password" runat="server" MaxLength="25" TextMode="Password" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txt_password" style="font-family: comfortaa" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 372px"><span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Button ID="bt_signin" runat="server" Text="Sign In" style="font-family: comfortaa" CssClass="btn_s_1" />
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 372px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 372px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 372px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: comfortaa; width: 366px">&nbsp;</td>
                    <td style="width: 113px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 372px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px; width: 294px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; width: 109px"></td>
                    <td style="width: 144px; height: 20px;"></td>
                    <td style="width: 533px; height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 294px; text-decoration: underline; color: #996633; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 109px; text-decoration: underline; color: #996633; font-family: comfortaa;">Step 1 of 4</td>
                    <td style="width: 144px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 533px; text-align: right; font-weight: 700; color: #990000;"><span style="color: #000000; font-family: comfortaa;">Registered Patient ?</span>&nbsp;<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" CausesValidation="False" style="font-family: comfortaa">Click Here</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 294px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; width: 109px"></td>
                    <td style="width: 144px; height: 20px; font-size: large; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; font-size: large; width: 533px; font-weight: 700; color: #808080; font-family: comfortaa;"><strong>Book your Appointment Here</strong></td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 294px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; width: 109px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 144px; height: 20px; font-size: large; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 20px; font-size: large; width: 533px; font-weight: 700; color: #808080; font-family: comfortaa;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 294px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 109px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 144px; font-family: comfortaa;">Enter your email-id</td>
                    <td style="width: 533px">
                        <span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp; </span>
                        <asp:TextBox ID="txt_emailid" runat="server" Width="232px" TextMode="Email" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="*" ControlToValidate="txt_emailid" style="font-family: comfortaa" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 30px; width: 294px; font-family: comfortaa;">&nbsp;</td>
                    <td style="height: 30px; width: 109px"></td>
                    <td style="width: 144px; height: 30px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 533px; height: 30px"><span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span><asp:Button ID="bt_submit_mobileno" runat="server" OnClick="Button5_Click" Text="Submit" style="height: 26px; font-family: comfortaa;" CssClass="btn_s_1" />
                        <span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-family: comfortaa"><strong>&nbsp;Register with Aadhaar</strong></span><span style="font-family: comfortaa"> ?</span><asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" style="font-family: comfortaa" OnClick="LinkButton5_Click">Click Here</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table style="width: 100%; height: 174px;">
                <tr>
                    <td style="width: 217px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 182px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 154px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 217px; color: #996633; text-decoration: underline; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 182px; color: #996633; text-decoration: underline; font-family: comfortaa;">Step 2 of 4</td>
                    <td style="width: 154px; font-family: comfortaa;">Enter verfication code</td>
                    <td>
                        <asp:TextBox ID="txt_opt" runat="server" Width="144px" MaxLength="6" style="font-family: comfortaa" OnTextChanged="txt_opt_TextChanged" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_opt" Display="Dynamic" ErrorMessage="*" style="font-family: comfortaa" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 217px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 182px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 154px; font-family: comfortaa;">&nbsp;</td>
                    <td><span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Button ID="bt_confirmotp" runat="server" OnClick="Button4_Click" style="height: 26px; font-family: comfortaa;" Text="Confirm" CssClass="btn_s_1" />
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 217px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 182px; font-family: comfortaa;">
                        &nbsp;</td>
                    <td style="width: 154px; font-family: comfortaa;">&nbsp;</td>
                    <td><span style="font-family: comfortaa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" CausesValidation="False" style="font-family: comfortaa">Re-Send code ?</asp:LinkButton>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 217px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 182px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 154px; font-family: comfortaa;">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Maroon" style="font-weight: 700; font-family: comfortaa;" Text="oOps..! you have entered wrong OPT...."></asp:Label>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 217px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 182px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 154px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; text-decoration: underline; color: #996633; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; text-decoration: underline; color: #996633; font-family: comfortaa;">Step 3 of 4</td>
                    <td style="width: 129px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Name</td>
                    <td>
                        <asp:TextBox ID="txt_name" runat="server" Height="26px" Width="320px" MaxLength="30" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; height: 36px;"></td>
                    <td style="width: 216px; height: 36px;"></td>
                    <td style="width: 129px; height: 36px; font-family: comfortaa;">&nbsp;Father's name</td>
                    <td style="height: 36px">
                        <asp:TextBox ID="txt_fathername" runat="server" Height="26px" Width="314px" MaxLength="30" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_fathername" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 36px"></td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Age</td>
                    <td>
                        <asp:TextBox ID="txt_age" runat="server" Height="26px" Width="73px" MaxLength="2" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_age" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_age" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" ValidationExpression="[0-9]{2}" style="font-family: comfortaa"></asp:RegularExpressionValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">
                        &nbsp;</td>
                    <td style="width: 129px; color: #444444; font-family: comfortaa;">Address</td>
                    <td>
                        <asp:TextBox ID="txt_address" runat="server" Height="81px" TextMode="MultiLine" Width="320px" MaxLength="60" style="font-family: comfortaa" CssClass="add_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_address" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; height: 20px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; height: 20px"></td>
                    <td style="width: 129px; height: 20px; font-family: comfortaa;">Gender</td>
                    <td style="height: 20px">
                        <asp:RadioButton ID="rd_male" runat="server" GroupName="gender" Text="Male" style="font-family: comfortaa" />
                        <asp:RadioButton ID="rd_female" runat="server" GroupName="gender" Text="Female" style="font-family: comfortaa" />
                    </td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 218px; height: 20px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; height: 20px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; height: 20px; font-family: comfortaa;">Contact no.</td>
                    <td style="height: 20px">
                        <asp:TextBox ID="txt_contactno" runat="server" Height="26px" Width="242px" MaxLength="10" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txt_contactno" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_contactno" Display="Dynamic" ErrorMessage="Invalid moible no" ValidationExpression="^[789]\d{9}$" style="font-family: comfortaa" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td style="height: 20px; font-family: comfortaa;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Select hospital</td>
                    <td>
                        <asp:DropDownList ID="ddl_hopitals" runat="server" Height="26px" Width="300px" style="font-family: comfortaa" AutoPostBack="True" OnSelectedIndexChanged="ddl_hopitals_SelectedIndexChanged" CssClass="ddl_s_1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddl_hopitals" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Select Department</td>
                    <td>
                        <asp:DropDownList ID="ddl_departments" runat="server" Height="26px" Width="300px" style="font-family: comfortaa" AutoPostBack="True" OnSelectedIndexChanged="ddl_departments_SelectedIndexChanged" CssClass="ddl_s_1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddl_departments" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Select Date</td>
                    <td>
                        <asp:TextBox ID="txt_date" runat="server" TextMode="Date" Width="208px" style="font-family: comfortaa" CssClass="txt_s_1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txt_date" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                        <asp:Label ID="lbl_date_status" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Select timming</td>
                    <td>
                        <asp:DropDownList ID="ddl_timing" runat="server" Height="26px" Width="300px" style="font-family: comfortaa" AutoPostBack="True" OnSelectedIndexChanged="ddl_timing_SelectedIndexChanged" CssClass="ddl_s_1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddl_timing" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">Select Doctor</td>
                    <td>
                        <asp:DropDownList ID="ddl_doctors" runat="server" Height="26px" Width="300px" style="font-family: comfortaa" AutoPostBack="True" OnSelectedIndexChanged="ddl_doctors_SelectedIndexChanged" CssClass="ddl_s_1">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddl_doctors" Display="Dynamic" ErrorMessage="*" ForeColor="Maroon" style="font-family: comfortaa"></asp:RequiredFieldValidator>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 218px; height: 15px;"></td>
                    <td style="width: 216px; height: 15px;"></td>
                    <td style="width: 129px; height: 15px;"></td>
                    <td style="height: 15px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="font-weight: 700; color: #CC9900; font-family: comfortaa;" Text="BOOK APPOINTMENT" CssClass="btn_s_1" />
                    </td>
                    <td style="height: 15px"></td>
                </tr>
                <tr>
                    <td style="width: 218px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 216px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 129px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <table style="width: 100%">
                <tr>
                    <td style="width: 184px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; text-decoration: underline; color: #996633; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; text-decoration: underline; color: #996633; font-family: comfortaa;">Step 4 of 4</td>
                    <td class="center" colspan="2" style="color: #009933; font-size: x-large; font-family: comfortaa;"><strong style="color: #006666">Congratulations.....!</strong></td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; text-decoration: underline; color: #996633; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; text-decoration: underline; color: #996633; font-family: comfortaa;">&nbsp;</td>
                    <td class="center" colspan="2" style="color: #009933; font-size: x-large; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; font-family: comfortaa;">&nbsp;</td>
                    <td>HI &nbsp;<strong><asp:Label ID="lbl_name" runat="server" style="font-family: comfortaa; text-decoration: underline; font-size: 16px; font-weight: normal;" Text="Name"></asp:Label>
                        </strong><span style="font-family: comfortaa">&nbsp;your appointment has been booked&nbsp; with </span><strong>
                        <asp:Label ID="lbl_doctor" runat="server" style="font-family: comfortaa; text-decoration: underline; font-size: 16px;" Text="Doctor"></asp:Label>
                        </strong>
                        <span style="font-family: comfortaa">&nbsp; of&nbsp; </span>
                        <strong>
                        <asp:Label ID="lbl_hospital" runat="server" style="font-family: comfortaa; text-decoration: underline; font-size: 16px;" Text="Hospital"></asp:Label>
                        </strong>
                        <span style="font-family: comfortaa">&nbsp; on </span>
                        <strong>
                        <asp:Label ID="lbl_date" runat="server" style="font-family: comfortaa; text-decoration: underline; font-size: 16px;" Text="Date"></asp:Label>
                        </strong>
                        <span style="font-family: comfortaa">&nbsp;at </span>
                        <strong>
                        <asp:Label ID="lbl_time" runat="server" style="font-family: comfortaa; text-decoration: underline; font-size: 16px;" Text="Time"></asp:Label>
                        </strong>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">
                        <asp:Button ID="Button7" runat="server" Height="28px" OnClick="Button7_Click" style="font-family: comfortaa" Text="view details" Width="82px" CssClass="btn_s_1" />
                        &nbsp;&nbsp;
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="606px">
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
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; font-family: comfortaa;">&nbsp;</td>
                    <td><span style="font-family: comfortaa">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    </td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 184px; font-family: comfortaa;">&nbsp;</td>
                    <td style="width: 108px; font-family: comfortaa;">&nbsp;</td>
                    <td style="font-family: comfortaa">
                        &nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                    <td style="font-family: comfortaa">&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</p>
<p style="font-family: comfortaa">
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
    <p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

