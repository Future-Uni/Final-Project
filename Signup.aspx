<%@ Page Language="C#"%>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|users.mdf;Integrated Security=True";
        string strInsert = String.Format("INSERT INTO users VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtfname.Text, txtLNAME.Text, txtphone.Text, txtemail.Text, rblgender.SelectedValue, ddlCountry.SelectedValue, txtusername.Text, txtpassword.Text);
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn); 
        try
        {
        conn.Open();

        // 5- Execute SQL Command
        cmdInsert.ExecuteNonQuery();

        // 6- Close the database
        conn.Close();
      
            if (fupic.HasFile)
            {
                fupic.SaveAs(Server.MapPath("userpic") + "\\" + txtusername.Text + ".jpg");

            }
            lblMsg.Text = "Welcome " + txtfname.Text + ", Your Account has been Successfully Created!!";
        }
        catch (SqlException err)
        {
            if (err.Number == 2627)
            {
                lblMsg.Text = txtusername.Text + " are already used, please try another one.";
            }
            else
            {
                lblMsg.Text = "Sorry database problem please try later";
            }
        }
        catch
        {
            lblMsg.Text = "the system in not available at the momment please try later";
        }
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91%;
            height: 432px;
        }
        .auto-style11 {
            height: 556px;
            width: 1217px;
            margin-bottom: 19px;
        }
        .auto-style61 {
            height: 24px;
        }
        .auto-style90 {
            height: 24px;
            width: 326px;
        }
        .auto-style102 {
            height: 97px;
        }
        .auto-style103 {
            height: 97px;
            width: 326px;
        }
        .auto-style104 {
            height: 55px;
        }
        .auto-style105 {
            height: 55px;
            width: 326px;
        }
        .auto-style106 {
            width: 115px;
            height: 71px;
        }
        .auto-style107 {
            width: 71px;
            height: 71px;
        }
        .auto-style108 {
            height: 71px;
            width: 328px;
        }
        .auto-style109 {
            height: 71px;
            width: 326px;
        }
        .auto-style110 {
            width: 115px;
            height: 60px;
        }
        .auto-style111 {
            width: 71px;
            height: 60px;
        }
        .auto-style112 {
            height: 60px;
            width: 328px;
        }
        .auto-style113 {
            height: 60px;
            width: 326px;
        }
        .auto-style114 {
            width: 115px;
            height: 58px;
        }
        .auto-style115 {
            width: 71px;
            height: 58px;
        }
        .auto-style116 {
            height: 58px;
            width: 328px;
        }
        .auto-style117 {
            height: 58px;
            width: 326px;
        }
        .auto-style118 {
            width: 115px;
            height: 61px;
        }
        .auto-style119 {
            width: 71px;
            height: 61px;
        }
        .auto-style120 {
            height: 61px;
            width: 328px;
        }
        .auto-style121 {
            height: 61px;
            width: 326px;
        }
        .auto-style122 {
            width: 115px;
            height: 47px;
        }
        .auto-style123 {
            width: 71px;
            height: 47px;
        }
        .auto-style124 {
            height: 47px;
            width: 328px;
        }
        .auto-style125 {
            height: 47px;
            width: 326px;
        }
        .auto-style126 {
            width: 115px;
            height: 53px;
        }
        .auto-style127 {
            width: 71px;
            height: 53px;
        }
        .auto-style128 {
            height: 53px;
            width: 328px;
        }
        .auto-style129 {
            height: 53px;
            width: 326px;
        }
        .auto-style130 {
            width: 115px;
            height: 66px;
        }
        .auto-style131 {
            width: 71px;
            height: 66px;
        }
        .auto-style132 {
            height: 66px;
            width: 328px;
        }
        .auto-style133 {
            height: 66px;
            width: 326px;
        }
        .auto-style134 {
            width: 115px;
            height: 50px;
        }
        .auto-style135 {
            width: 71px;
            height: 50px;
        }
        .auto-style136 {
            height: 50px;
            width: 328px;
        }
        .auto-style137 {
            height: 50px;
            width: 326px;
        }
    
    </style>
</head>
<body bgcolor="#ffffff" style="height: 0px">

    <form id="form1" runat="server" class="auto-style11">
        <div>
        </div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" class="auto-style61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" Font-Names="Stencil" Font-Size="XX-Large" ForeColor="#E0AC1B" Text=" Signup" Width="69px"></asp:Label>
                    </td>
                    <td class="auto-style90">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style134">
                        <asp:Label ID="Label2" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style135">
                        <asp:TextBox ID="txtfname" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="233px"></asp:TextBox>
                    </td>
                    <td class="auto-style136">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="This is requiredfield" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style137">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="invalid first name format" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style130">
                        <asp:Label ID="Label3" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style131">
                        <asp:TextBox ID="txtLNAME" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style132">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLNAME" ErrorMessage="This is requiredfield" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style133">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLNAME" ErrorMessage="invalid last name format" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style126">
                        <asp:Label ID="Label10" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="PHONE:"></asp:Label>
                    </td>
                    <td class="auto-style127">
                        <asp:TextBox ID="txtphone" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style128"></td>
                    <td class="auto-style129"></td>
                </tr>
                <tr>
                    <td class="auto-style122">
                        <asp:Label ID="Label11" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="email:"></asp:Label>
                    </td>
                    <td class="auto-style123">
                        <asp:TextBox ID="txtemail" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style124">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="This is requiredfield" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style125">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="invalid  email address format" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style114">
                        <asp:Label ID="Label12" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="gender:"></asp:Label>
                    </td>
                    <td class="auto-style115">
                        <asp:RadioButtonList ID="rblgender" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" RepeatDirection="Horizontal" Width="235px">
                            <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style116"></td>
                    <td class="auto-style117"></td>
                </tr>
                <tr>
                    <td class="auto-style118">
                        <asp:Label ID="Label13" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="country:"></asp:Label>
                    </td>
                    <td class="auto-style119">
                        <asp:DropDownList ID="ddlCountry" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B">
                            <asp:ListItem Selected="True">Egypt</asp:ListItem>
                            <asp:ListItem>Libya</asp:ListItem>
                            <asp:ListItem>Lebanon</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Spain</asp:ListItem>
                            <asp:ListItem>England</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style120"></td>
                    <td class="auto-style121"></td>
                </tr>
                <tr>
                    <td class="auto-style114">
                        <asp:Label ID="Label15" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="username:"></asp:Label>
                    </td>
                    <td class="auto-style115">
                        <asp:TextBox ID="txtusername" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px"></asp:TextBox>
                    </td>
                    <td class="auto-style116">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtusername" ErrorMessage="This is requiredfield" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style117">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtusername" ErrorMessage="should be 8 characters at least" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style110">
                        <asp:Label ID="Label16" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style111">
                        <asp:TextBox ID="txtpassword" runat="server" BorderStyle="Ridge" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="231px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style112">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="This is requiredfield" Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style113">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="should be between  8 and 16 characters " Font-Bold="False" Font-Names="Stencil" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,16}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style106">
                        <asp:Label ID="Label17" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" Text="ADD PHOTO:"></asp:Label>
                    </td>
                    <td class="auto-style107">
                        <asp:FileUpload ID="fupic" runat="server" />
                    </td>
                    <td class="auto-style108"></td>
                    <td class="auto-style109"></td>
                </tr>
                <tr>
                    <td class="auto-style102" colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubmit" runat="server" Font-Names="Stencil" Font-Size="Medium" ForeColor="#E0AC1B" OnClick="btnSubmit_Click" Text="Signup" BackColor="White" Height="38px" Width="346px" />
                    </td>
                    <td class="auto-style103">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style104">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="Stencil" Font-Size="Large" ForeColor="#E0AC1B"></asp:Label>
                    </td>
                    <td class="auto-style105">
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
