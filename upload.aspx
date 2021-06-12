<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">

   
          protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Movies.mdf;Integrated Security=True";
        string strInsert = String.Format("INSERT INTO Movie VALUES('{0}', '{1}', '{2}', '{3}')", txtmoviename.Text, txtmoviedirector.Text, txtmoviedate.Text, txtmovielink.Text);
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        conn.Open();

        // 5- Execute SQL Command
        cmdInsert.ExecuteNonQuery();

        // 6- Close the database
        conn.Close();

        if (ffupload.HasFile)
        {
            ffupload.SaveAs(Server.MapPath("uservideos") + "\\" + txtmoviename.Text + ".mp4");

            lblMsg.Text = "Video has been uploaded susseccfully";

        }


    
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 1454px;
        }
        .auto-style12 {
            height: 84px;
            width: 161px;
        }
        .auto-style7 {
            height: 84px;
            width: 484px;
        }
        .auto-style13 {
            width: 161px;
            height: 104px;
        }
        .auto-style11 {
            width: 484px;
            height: 104px;
        }
        .auto-style14 {
            height: 120px;
        }
    </style>
</head>
<body bgcolor="#000000">
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#e0ac1b" Text="upload video"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="mOVCIENAME" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="Movie Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtmoviename" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label16" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="Movie Director"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtmoviedirector" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label17" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="Movie Date" ClientIDMode="Static"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtmoviedate" runat="server" TextMode="Date" Width="227px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label20" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="Movie Link"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtmovielink" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label18" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="Upload movie"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:FileUpload ID="ffupload" runat="server" Width="255px" />
                        <asp:Label ID="Label19" runat="server" Font-Names="Stencil" Font-Strikeout="False"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMsg" runat="server" Font-Names="Stencil" Font-Size="Large" ForeColor="#e0ac1b"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" OnClick="btnSubmit_Click" Text="UPLOAD" BackColor="#CCCCCC" Height="38px" Width="346px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Stencil" Font-Overline="False" Font-Size="Large" ForeColor="#e0ac1b">View all uploaded videos</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
