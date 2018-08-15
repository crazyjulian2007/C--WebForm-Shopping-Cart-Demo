<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmUpload.aspx.cs" Inherits="ASPTest.ASP.WfrmUpload" %>

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
            font-family: 微軟正黑體;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Product Upload</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbASPDemoConnectionString %>" DeleteCommand="DELETE FROM [tProduct] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tProduct] ([fName], [fQty], [fCost], [fPrice], [fPath]) VALUES (@fName, @fQty, @fCost, @fPrice, @fPath)" SelectCommand="SELECT * FROM [tProduct]" UpdateCommand="UPDATE [tProduct] SET [fName] = @fName, [fQty] = @fQty, [fCost] = @fCost, [fPrice] = @fPrice, [fPath] = @fPath WHERE [fId] = @fId">
                        <DeleteParameters>
                            <asp:Parameter Name="fId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="fName" Type="String" />
                            <asp:Parameter Name="fQty" Type="Int32" />
                            <asp:Parameter Name="fCost" Type="Decimal" />
                            <asp:Parameter Name="fPrice" Type="Decimal" />
                            <asp:Parameter Name="fPath" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fName" Type="String" />
                            <asp:Parameter Name="fQty" Type="Int32" />
                            <asp:Parameter Name="fCost" Type="Decimal" />
                            <asp:Parameter Name="fPrice" Type="Decimal" />
                            <asp:Parameter Name="fPath" Type="String" />
                            <asp:Parameter Name="fId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>[<a href="WfProduct.aspx">產品展示</a>]</td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" OnItemInserting="FormView1_ItemInserting">
                        <EditItemTemplate>
                            fId:
                            <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' />
                            <br />
                            fName:
                            <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                            <br />
                            fQty:
                            <asp:TextBox ID="fQtyTextBox" runat="server" Text='<%# Bind("fQty") %>' />
                            <br />
                            fCost:
                            <asp:TextBox ID="fCostTextBox" runat="server" Text='<%# Bind("fCost") %>' />
                            <br />
                            fPrice:
                            <asp:TextBox ID="fPriceTextBox" runat="server" Text='<%# Bind("fPrice") %>' />
                            <br />
                            fPath:
                            <asp:TextBox ID="fPathTextBox" runat="server" Text='<%# Bind("fPath") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>產品名稱</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>產品數量</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fQtyTextBox" runat="server" Text='<%# Bind("fQty") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>產品成本</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fCostTextBox" runat="server" Text='<%# Bind("fCost") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>產品價格</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fPriceTextBox" runat="server" Text='<%# Bind("fPrice") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="上傳" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            fId:
                            <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' />
                            <br />
                            fName:
                            <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
                            <br />
                            fQty:
                            <asp:Label ID="fQtyLabel" runat="server" Text='<%# Bind("fQty") %>' />
                            <br />
                            fCost:
                            <asp:Label ID="fCostLabel" runat="server" Text='<%# Bind("fCost") %>' />
                            <br />
                            fPrice:
                            <asp:Label ID="fPriceLabel" runat="server" Text='<%# Bind("fPrice") %>' />
                            <br />
                            fPath:
                            <asp:Label ID="fPathLabel" runat="server" Text='<%# Bind("fPath") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:FormView>
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
