<%@ Page Language="C#"  %>

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
        .auto-style3 {
            height: 54px;
            width: 1089px;
        }
        .auto-style2 {
            height: 93px;
        }
        .auto-style6 {
            width: 1089px;
            height: 31px;
        }
        .auto-style7 {
            width: 1089px;
            height: 10px;
        }
        .auto-style8 {
            width: 1089px;
            height: 717px;
        }
        .auto-style10 {
            height: 40px;
            width: 1089px;
        }
        .auto-style5 {
            width: 1089px;
        }
        .auto-style13 {
            margin-right: 0px;
        }
        .auto-style14 {
            width: 1404px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Names="Stencil" Font-Size="XX-Large" Text="THE green mile"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Overview:" Font-Names="Stencil" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Height="76px">
                            &nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Stencil" Text="Paul Edgecomb (Tom Hanks) walked the mile with a variety of cons. He had never encountered someone like John Coffey (Michael Clarke Duncan), a massive black man convicted of brutally killing a pair of young sisters. Coffey had the size and strength to kill anyone, but not the demeanor. Beyond his simple, naive nature and a deathly fear of the dark, Coffey seemed to possess a prodigious, supernatural gift. Paul began to question whether Coffey was truly guilty of murdering the two girls."></asp:Label>
                        </asp:Panel>
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Names="Stencil" Text="Rating :8.6/10 IMDB"></asp:Label>
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
                        <asp:Image ID="Image1" runat="server" CssClass="auto-style13" ImageUrl="~/moviesposters/HS900432_poster_1920_1080.jpg" Height="700px" Width="1401px" />
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
                           <iframe height="711" src="https://www.youtube.com/embed/Ki4haFrqSrw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="auto-style14"></iframe>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </body>
</html>
