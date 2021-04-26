<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="UTTT.Ejemplo.Persona.ResetPassword" %>

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
            <h3>Reset Password</h3>
        </div>
    </header>
    <br />
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                Ingresar correo electrónico
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" EnableClientScript="False" ErrorMessage="Correo electronico Invalido " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreo" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="btnReset" runat="server" Text="Enviar" OnClick="btnReset_Click" CssClass="btn btn-primary col-md-2" />
            </div>
        </form>
    </div>
</body>
</html>
