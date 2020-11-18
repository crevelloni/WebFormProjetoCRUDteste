<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaCadastro.aspx.cs" Inherits="WebFormProjetoCRUDteste.ListaCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1{ text-align: center; }
        .container {
            width: 1500px;
            margin: 20px auto;
        }

    </style>
</head>
<body>
    <h1>Cadastro FASO</h1>
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr class="tabela">
                    <th class="tabela">Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Observações</th>
                </tr>
                <asp:ListView runat="server" ID="listaCadastro">
                    <ItemTemplate>
                        <tr>
                            <td><%# DataBinder.Eval(Container.DataItem, "Nome")%></td>
                            <td><%# DataBinder.Eval(Container.DataItem, "Email")%></td>
                            <td><%# DataBinder.Eval(Container.DataItem, "Telefone")%></td>
                            <td><%# DataBinder.Eval(Container.DataItem, "Endereco")%></td>
                            <td><%# DataBinder.Eval(Container.DataItem, "Obs")%></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </form>
</body>
</html>
