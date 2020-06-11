<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital Module/HospitalMasterPage.master" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="Hospital_Module_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:Panel ID="Panel1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 100%">
            <tr>
                <td style="width: 510px">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; ss&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
<p>





        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="v_doctors" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 106px">&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PABSConnectionString %>" DeleteCommand="DELETE FROM [doctor_table] WHERE [dr_id] = @dr_id" InsertCommand="INSERT INTO [doctor_table] ([name], [h_id], [dept_id], [position], [qualification], [experience], [c_no], [emailid]) VALUES (@name, @h_id, @dept_id, @position, @qualification, @experience, @c_no, @emailid)" SelectCommand="SELECT * FROM [doctor_table]" UpdateCommand="UPDATE [doctor_table] SET [name] = @name, [h_id] = @h_id, [dept_id] = @dept_id, [position] = @position, [qualification] = @qualification, [experience] = @experience, [c_no] = @c_no, [emailid] = @emailid WHERE [dr_id] = @dr_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="dr_id" Type="Int64" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="h_id" Type="String" />
                                    <asp:Parameter Name="dept_id" Type="String" />
                                    <asp:Parameter Name="position" Type="String" />
                                    <asp:Parameter Name="qualification" Type="String" />
                                    <asp:Parameter Name="experience" Type="Decimal" />
                                    <asp:Parameter Name="c_no" Type="Decimal" />
                                    <asp:Parameter Name="emailid" Type="String" />
                                    
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="h_id" Type="String" />
                                    <asp:Parameter Name="dept_id" Type="String" />
                                    <asp:Parameter Name="position" Type="String" />
                                    <asp:Parameter Name="qualification" Type="String" />
                                    <asp:Parameter Name="experience" Type="Decimal" />
                                    <asp:Parameter Name="c_no" Type="Decimal" />
                                    <asp:Parameter Name="emailid" Type="String" />
                                     
                                    <asp:Parameter Name="dr_id" Type="Int64" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="dr_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="dr_id" HeaderText="dr_id" InsertVisible="False" ReadOnly="True" SortExpression="dr_id" />
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="h_id" HeaderText="h_id" SortExpression="h_id" />
                                    <asp:BoundField DataField="dept_id" HeaderText="dept_id" SortExpression="dept_id" />
                                    <asp:BoundField DataField="position" HeaderText="position" SortExpression="position" />
                                    <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                                    <asp:BoundField DataField="experience" HeaderText="experience" SortExpression="experience" />
                                    <asp:BoundField DataField="c_no" HeaderText="c_no" SortExpression="c_no" />
                                    <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
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
                        <td style="width: 106px">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="v_departments" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 79px">&nbsp;</td>
                        <td style="width: 690px">
                            <asp:SqlDataSource ID="sqldc_departments" runat="server" ConnectionString="<%$ ConnectionStrings:PABSConnectionString %>" DeleteCommand="DELETE FROM [dept_table] WHERE [dept_id] = @dept_id" InsertCommand="INSERT INTO [dept_table] ([dept_name], [hod], [h_id], [c_no]) VALUES (@dept_name, @hod, @h_id, @c_no)" SelectCommand="SELECT * FROM [dept_table]" UpdateCommand="UPDATE [dept_table] SET [dept_name] = @dept_name, [hod] = @hod, [h_id] = @h_id, [c_no] = @c_no WHERE [dept_id] = @dept_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="dept_id" Type="Int64" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="dept_name" Type="String" />
                                    <asp:Parameter Name="hod" Type="String" />
                                    <asp:Parameter Name="h_id" Type="String" />
                                    <asp:Parameter Name="c_no" Type="Decimal" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="dept_name" Type="String" />
                                    <asp:Parameter Name="hod" Type="String" />
                                    <asp:Parameter Name="h_id" Type="String" />
                                    <asp:Parameter Name="c_no" Type="Decimal" />
                                    <asp:Parameter Name="dept_id" Type="Int64" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="gv_departments" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="dept_id" DataSourceID="sqldc_departments" style="margin-left: 0px" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="dept_id" HeaderText="dept_id" InsertVisible="False" ReadOnly="True" SortExpression="dept_id" />
                                    <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
                                    <asp:BoundField DataField="hod" HeaderText="hod" SortExpression="hod" />
                                    <asp:BoundField DataField="h_id" HeaderText="h_id" SortExpression="h_id" />
                                    <asp:BoundField DataField="c_no" HeaderText="c_no" SortExpression="c_no" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
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
                </table>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:View>
            <asp:View ID="v_labs" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 83px">&nbsp;</td>
                        <td style="width: 685px">
                            <asp:SqlDataSource ID="sqlds_labs" runat="server" ConnectionString="<%$ ConnectionStrings:PABSConnectionString %>" DeleteCommand="DELETE FROM [lab_table] WHERE [lab_id] = @lab_id" InsertCommand="INSERT INTO [lab_table] ([lab_name], [h_id], [dept_id], [c_no], [lab_assistant]) VALUES (@lab_name, @h_id, @dept_id, @c_no, @lab_assistant)" SelectCommand="SELECT * FROM [lab_table]" UpdateCommand="UPDATE [lab_table] SET [lab_name] = @lab_name, [h_id] = @h_id, [dept_id] = @dept_id, [c_no] = @c_no, [lab_assistant] = @lab_assistant WHERE [lab_id] = @lab_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="lab_id" Type="Int64" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="lab_name" Type="String" />
                                    <asp:Parameter Name="h_id" Type="String" />
                                    <asp:Parameter Name="dept_id" Type="String" />
                                    <asp:Parameter Name="c_no" Type="Decimal" />
                                    <asp:Parameter Name="lab_assistant" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="lab_name" Type="String" />
                                    <asp:Parameter Name="h_id" Type="String" />
                                    <asp:Parameter Name="dept_id" Type="String" />
                                    <asp:Parameter Name="c_no" Type="Decimal" />
                                    <asp:Parameter Name="lab_assistant" Type="String" />
                                    <asp:Parameter Name="lab_id" Type="Int64" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="gv_labs" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="lab_id" DataSourceID="sqlds_labs" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="lab_id" HeaderText="lab_id" InsertVisible="False" ReadOnly="True" SortExpression="lab_id" />
                                    <asp:BoundField DataField="lab_name" HeaderText="lab_name" SortExpression="lab_name" />
                                    <asp:BoundField DataField="h_id" HeaderText="h_id" SortExpression="h_id" />
                                    <asp:BoundField DataField="dept_id" HeaderText="dept_id" SortExpression="dept_id" />
                                    <asp:BoundField DataField="c_no" HeaderText="c_no" SortExpression="c_no" />
                                    <asp:BoundField DataField="lab_assistant" HeaderText="lab_assistant" SortExpression="lab_assistant" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
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
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server"></asp:View>
        </asp:MultiView>
        <br />
    </p>
    <p>
    

</asp:Content>

