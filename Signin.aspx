<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {  SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|users.mdf;Integrated Security=True";

        string strSelect = "SELECT * FROM users "
                 + " WHERE Username = '" + txtusername.Text + "' AND Password = '"+ txtpassword.Text + "'";


        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        SqlDataReader reader;

        conn.Open();
        reader = cmdSelect.ExecuteReader();

        if (reader.Read())
        {
            if (txtusername.Text == "admin2020" && txtpassword.Text == "12345")
            {
                Response.Redirect("~/adminHome.aspx");
            }
           
            
                Response.Redirect("~/userHome.aspx");
            
            
        }else
            {
                lblMsg.Text = "incorrect username or password please try again";
            }


        conn.Close();
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1454px;
        }
        .auto-style7 {
            height: 84px;
            width: 484px;
        }
        .auto-style11 {
            width: 484px;
            height: 104px;
        }
        .auto-style12 {
            height: 84px;
            width: 120px;
        }
        .auto-style13 {
            width: 120px;
            height: 104px;
        }
        .auto-style14 {
            height: 120px;
        }
    </style>
</head>
<body  bgcolor="#ffffff" >
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Stencil" Font-Size="X-Large" ForeColor="#e0ac1b" Text="enter your username and password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label15" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="username:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtusername" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label16" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtpassword" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#e0ac1b" OnClick="btnSubmit_Click" Text="Signin" BackColor="#CCCCCC" Height="38px" Width="346px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="Stencil" Font-Size="Large" ForeColor="#e0ac1b"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
