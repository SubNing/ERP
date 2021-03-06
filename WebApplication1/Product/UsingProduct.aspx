﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingProduct.aspx.cs" Inherits="WebApplication1.Product.UsingProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        关键字：<asp:TextBox ID="txtPro" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" style="height: 21px" />
            <asp:DataList ID="DLProduct" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ProductsID") %></td>
                        <td><%#Eval("ProductsName") %></td>
                        <td>
                            <input type="button" data-id="<%#Eval("ProductsName") %>" data-name="<%#Eval("ProductsID") %>" onclick="pro(this)" value="选择" /></td>
                    </tr>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
    <script src="../Script/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        function pro(i) {
            var id = i.getAttribute("data-id");
            var name = i.getAttribute("data-name");
            window.opener.document.getElementById("txtPro").value = id;
            window.opener.document.getElementById("ProID").value = name;
            window.close();
        }
    </script>
</body>
</html>
