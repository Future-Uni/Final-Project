<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Movies.mdf;Integrated Security=True;"+"MultipleActiveResultSets=True;";

        string strSelect = "SELECT * FROM Movie " + " WHERE Moviename like'" + txtsearch.Text + "'";


        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        SqlDataReader reader;

        conn.Open();
        reader = cmdSelect.ExecuteReader();

        if (reader.Read())
        {
            if (txtsearch.Text == "endgame")
            {
                Response.Redirect("~/endgame.aspx");
            }
            if(txtsearch.Text == "joker")
            {
                Response.Redirect("~/joker.aspx");
            }
            if(txtsearch.Text == "the green mile")
            {
                Response.Redirect("~/thegreenmile.aspx");
            }

            if(txtsearch.Text == "the revenant")
            {
                Response.Redirect("~/therevenant.aspx");
            }

        }
        else
        {

            lblmsg.Text = "No movie with that name, did you mean:";
        }

        conn.Close();
    }



</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #ffffff;
        }
        .auto-style32 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #ffffff;
            height: 74px;
        }
        .auto-style31 {
            margin-left: 35px;
            margin-top: 27px;
        }
        .auto-style34 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #ffffff;
            height: 54px;
            margin-top: 18px;
        }
        .auto-style25 {
            height: 292px;
            width: 415px;
        }
        .auto-style23 {
            width: 447px;
            height: 599px;
            margin-left: 0px;
        }
        .auto-style26 {
            height: 292px;
            width: 437px;
        }
        .auto-style28 {
            width: 441px;
            height: 520px;
            margin-left: 4px;
        }
        .auto-style27 {
            height: 292px;
            width: 500px;
        }
        .auto-style29 {
            width: 520px;
            height: 597px;
            margin-top: 0px;
        }
        .auto-style10 {
            height: 400px;
            width: 415px;
        }
        .auto-style30 {
            width: 447px;
            height: 594px;
            margin-right: 0px;
        }
        .auto-style17 {
            height: 400px;
            width: 437px;
        }
        .auto-style7 {
            height: 400px;
            width: 500px;
        }
        .auto-style11 {
            height: 411px;
            width: 415px;
        }
        .auto-style18 {
            height: 411px;
            width: 437px;
        }
        .auto-style6 {
            height: 411px;
            width: 500px;
        }
        .auto-style12 {
            height: 386px;
            width: 415px;
        }
        .auto-style19 {
            height: 386px;
            width: 437px;
        }
        .auto-style5 {
            height: 386px;
            width: 500px;
        }
        .auto-style13 {
            height: 331px;
            width: 415px;
        }
        .auto-style20 {
            height: 331px;
            width: 437px;
        }
        .auto-style4 {
            height: 331px;
            width: 500px;
        }
        .auto-style14 {
            height: 358px;
            width: 415px;
        }
        .auto-style21 {
            height: 358px;
            width: 437px;
        }
        .auto-style3 {
            height: 358px;
            width: 500px;
        }
        .auto-style15 {
            height: 309px;
            width: 415px;
        }
        .auto-style22 {
            height: 309px;
            width: 437px;
        }
        .auto-style2 {
            height: 309px;
            width: 500px;
        }
        </style>
</head>
<body  bgcolor="#ffffff">
    <form id="form2" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style32" colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Names="Stencil" Font-Size="XX-Large" ForeColor="#CC0000" Text="SEARCH FOR YOUR MOVIE:"></asp:Label>
                        <asp:TextBox ID="txtsearch" runat="server" BorderColor="#CC0000" BorderWidth="5px" CssClass="auto-style31" Height="44px" Width="575px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnsearch" runat="server" BackColor="White" BorderColor="#CC0000" BorderStyle="Dotted" CssClass="auto-style34" Font-Names="Stencil" ForeColor="#CC0000" OnClick="btnsearch_Click" Text="SEARCH" Width="102px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Font-Names="Stencil" ForeColor="#CC0000" NavigateUrl="~/upload.aspx" Target="F5">UPLOAD A VIDEO</asp:HyperLink>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="3">
                        <asp:Label ID="lblmsg" runat="server" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MovieName" DataSourceID="SqlDataSource1" Width="443px">
                            <Columns>
                            
                                <asp:BoundField DataField="MovieName" HeaderText="MovieName" ReadOnly="True" SortExpression="MovieName" />

                                <asp:BoundField DataField="MovieDirector" HeaderText="MovieDirector" SortExpression="MovieDirector" />
                                <asp:BoundField DataField="MovieDate" HeaderText="MovieDate" SortExpression="MovieDate" />
                              <asp:BoundField DataField="MovieLink" HeaderText="MovieLink" SortExpression="MovieLink" ShowHeader="False" Visible="False" />
           
                                
                              
           
                                <asp:HyperLinkField DataNavigateUrlFields="MovieLink" DataTextField="MovieName" HeaderText="Links" />
           
                                
                              
           
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Movie] WHERE ([MovieName] LIKE '%' + @MovieName + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtsearch" Name="MovieName" PropertyName="Text" Type="String" DefaultValue=""/>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <img alt="endgame" class="auto-style23" src="moviesposters/endgame.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#CC0000" NavigateUrl="~/endgame.aspx" Target="F5">Endgame</asp:HyperLink>
                    </td>
                    <td class="auto-style26">
                        <img alt="" class="auto-style28" src="moviesposters/jokerjpg.jpg" /><br />
                        <br />
                        <br />
                        \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#CC0000" NavigateUrl="~/joker.aspx" Target="F5">joker</asp:HyperLink>
                    </td>
                    <td class="auto-style27">
                        <img alt="" class="auto-style29" src="moviesposters/the%20revenant.jpg" /><br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#CC0000" NavigateUrl="~/therevenant.aspx" Target="F5">the revenant</asp:HyperLink>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <img alt="" class="auto-style30" src="moviesposters/thegreenmile.png" /><br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#CC0000" NavigateUrl="~/thegreenmile.aspx" Target="F5">THE GREEN MILE</asp:HyperLink>
                    </td>
                    <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
