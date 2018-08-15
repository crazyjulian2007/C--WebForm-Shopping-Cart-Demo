<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfProduct.aspx.cs" Inherits="ASPTest.ASP.WfProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-family: 微軟正黑體;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Product</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>[<a href="WfShoppingCart.aspx">Shopping Cart</a>]</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbASPDemoConnectionString %>" SelectCommand="SELECT * FROM [tProduct]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="fId" DataSourceID="SqlDataSource1" Height="150px" RepeatColumns="5" RepeatDirection="Horizontal" Width="600px">
                        <ItemTemplate>
                            <div class="auto-style3">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("fName") %>'></asp:Label>
                                <br class="auto-style4" />
                                <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="100px" ImageUrl='<%# Eval("fPath") %>' Width="100px" />
                                <br class="auto-style4" />
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text='<%# Eval("fPrice") %>'></asp:Label>
                                <br class="auto-style4" />
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style4" NavigateUrl='<%# Eval("fId", "WfAddtoCart.aspx?pid={0}") %>'>加入</asp:HyperLink>
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
