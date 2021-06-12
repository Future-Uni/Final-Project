<%@ Page Language="C#"  %>
<!DOCTYPE html>
<script runat="server">

  
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            height: 36px;
            width: 301px;
        }
        .auto-style9 {
            height: 36px;
            width: 144px;
        }
        .auto-style10 {
            width: 111%;
            height: 16px;
        }
        .auto-style11 {
            height: 36px;
            width: 768px;
        }
        </style>
</head>
<body bgcolor="#ffffff">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Stencil" ForeColor="#e0ac1b" NavigateUrl="~/Homepage.aspx" Target="F5">Home</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Stencil" ForeColor="#e0ac1b" NavigateUrl="~/Movies.aspx" Target="F5">Movies</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Stencil" ForeColor="#e0ac1b" NavigateUrl="~/Signup.aspx" Target="F5">Signup</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Stencil" ForeColor="#CC3300" NavigateUrl="~/Signin.aspx" Target="F5">Signin</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
