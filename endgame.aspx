<%@ Page Language="C# "%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 1203px;
            background-color: #CC0000;
        }
        .auto-style2 {
            height: 93px;
        }
        .auto-style3 {
            height: 54px;
            width: 1372px;
        }
        .auto-style5 {
            width: 1372px;
        }
        .auto-style6 {
            width: 1372px;
            height: 31px;
        }
        .auto-style7 {
            width: 1372px;
            height: 10px;
        }
        .auto-style8 {
            width: 1372px;
            height: 717px;
        }
        .auto-style9 {
            margin-left: 0px;
            margin-right: 0px;
            width: 1441px;
        }
        .auto-style10 {
            height: 40px;
            width: 1372px;
        }
    </style>
</head>
<body BGCOLOR="#000000">
    <form id="form1" runat="server">
        <div>
            <table cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Names="Stencil" Font-Size="XX-Large" Text="Avengers: End game"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Overview:" Font-Names="Stencil" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Height="76px">
                            &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Stencil" Text="Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- 
                                
                                must figure out a way to bring back their vanquished allies for an epic showdown with Thanos    -- the evil demigod who decimated the planet and the universe."></asp:Label>
                        </asp:Panel>
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Names="Stencil" Text="Rating :8.4/10 IMDB"></asp:Label>
                        <br />
                        <br />
                        <br />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/moviesposters/avengers_endgame_ver3_xlg.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Font-Italic="False" Font-Names="Stencil" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Text="Watch now"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Panel ID="Panel2" runat="server" Width="600px">
                            <iframe height="711" src="https://www.youtube.com/embed/lHw-6AZvZ7I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="auto-style9"></iframe>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
