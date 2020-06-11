<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic"></asp:CustomValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" style="height: 26px" />
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
&nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Button" />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PABSConnectionString %>" DeleteCommand="DELETE FROM [dept_table] WHERE [dept_id] = @dept_id" InsertCommand="INSERT INTO [dept_table] ([dept_name], [hod], [h_id], [c_no]) VALUES (@dept_name, @hod, @h_id, @c_no)" SelectCommand="SELECT * FROM [dept_table]" UpdateCommand="UPDATE [dept_table] SET [dept_name] = @dept_name, [hod] = @hod, [h_id] = @h_id, [c_no] = @c_no WHERE [dept_id] = @dept_id">
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="dept_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="dept_id" HeaderText="dept_id" InsertVisible="False" ReadOnly="True" SortExpression="dept_id" />
                <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
                <asp:BoundField DataField="hod" HeaderText="hod" SortExpression="hod" />
                <asp:BoundField DataField="h_id" HeaderText="h_id" SortExpression="h_id" />
                <asp:BoundField DataField="c_no" HeaderText="c_no" SortExpression="c_no" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </form>
</body>
</html>
