<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="WebFormProjetoCRUDteste.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container{
            width: 470px;
            margin: 0 auto;
        }
        .container h1{
            text-align:center;
        }
        .campo{
            padding:10px;
        }
        .campo input[type="text"]{

            float:right;
            width:350px;
        }
        .campo input[type="submit"]{
            float:right;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Cadastro FASO web form</h1>
           <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtNome">Nome: </asp:Label>
               <asp:TextBox runat="server" ID="txtNome"></asp:TextBox>
           </div>
            <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtEmail">Email: </asp:Label>
               <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
           </div>
            <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtTel">Telefone: </asp:Label>
               <asp:TextBox runat="server" ID="txtTel"></asp:TextBox>
           </div>
            <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtEnd">Endereço: </asp:Label>
               <asp:TextBox runat="server" ID="txtEnd"></asp:TextBox>
           </div>
            <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtObs">Observações: </asp:Label>
               <asp:TextBox runat="server" ID="txtObs"></asp:TextBox>
           </div>
            <div class="campo">
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" />
                 <asp:Button ID="Button1" runat="server" Text="Atualizar" />
            </div>         
            <p><asp:Literal runat="server" ID="ltMensagem"></asp:Literal></p>
        </div>
    </form>
</body>
</html>
