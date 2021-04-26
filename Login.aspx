<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <header class="card-header bg-dark">
        <div class="container text-white">
            <h3>Login</h3>
        </div>
    </header>
    <br />
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                Nombre de usuario
                <asp:TextBox ID="username" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="username" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                Contraseña
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control col-md-6" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="password" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <a href="ResetPassword.aspx">Olvidé mi contraseña</a>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesion" OnClick="btnLogin_Click" CssClass="btn btn-primary col-md-2" />
            </div>
        </form>
    </div>
</body>
</html>
