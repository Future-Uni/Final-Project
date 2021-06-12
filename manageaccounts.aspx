<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 326px;
        }
    </style>
</head>
<body bgcolor="#000000">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Names="Stencil" Font-Size="XX-Large" ForeColor="#CC0000" Text="Manage user accounts"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Names="Stencil" ForeColor="#CC0000" Text="Select country:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="country" DataValueField="country" Font-Names="Stencil" ForeColor="#CC0000">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [country] FROM [country] ORDER BY [country]"></asp:SqlDataSource>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="USERNAME" DataSourceID="SqlDataSource2" Font-Names="Stencil" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                                <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" ReadOnly="True" SortExpression="USERNAME" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [users] WHERE [USERNAME] = @USERNAME" InsertCommand="INSERT INTO [users] ([Fname], [Lname], [PHONE], [EMAIL], [GENDER], [COUNTRY], [USERNAME]) VALUES (@Fname, @Lname, @PHONE, @EMAIL, @GENDER, @COUNTRY, @USERNAME)" SelectCommand="SELECT [Fname], [Lname], [PHONE], [EMAIL], [GENDER], [COUNTRY], [USERNAME] FROM [users] WHERE ([COUNTRY] = @COUNTRY)" UpdateCommand="UPDATE [users] SET [Fname] = @Fname, [Lname] = @Lname, [PHONE] = @PHONE, [EMAIL] = @EMAIL, [GENDER] = @GENDER, [COUNTRY] = @COUNTRY WHERE [USERNAME] = @USERNAME">
                            <DeleteParameters>
                                <asp:Parameter Name="USERNAME" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Fname" Type="String" />
                                <asp:Parameter Name="Lname" Type="String" />
                                <asp:Parameter Name="PHONE" Type="String" />
                                <asp:Parameter Name="EMAIL" Type="String" />
                                <asp:Parameter Name="GENDER" Type="String" />
                                <asp:Parameter Name="COUNTRY" Type="String" />
                                <asp:Parameter Name="USERNAME" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlcountry" Name="COUNTRY" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Fname" Type="String" />
                                <asp:Parameter Name="Lname" Type="String" />
                                <asp:Parameter Name="PHONE" Type="String" />
                                <asp:Parameter Name="EMAIL" Type="String" />
                                <asp:Parameter Name="GENDER" Type="String" />
                                <asp:Parameter Name="COUNTRY" Type="String" />
                                <asp:Parameter Name="USERNAME" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
