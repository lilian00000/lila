<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="UTTT.Ejemplo.Persona.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <header class="card-header bg-dark">
        <div class="container text-white">
            <h3>Change Password</h3>
        </div>
    </header>
    <br />
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-inline form-group">
                <div class="col-md-2">Contraseña</div>
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfcPassword" runat="server" ControlToValidate="password" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Confirmar Contraseña</div>
                <asp:TextBox ID="passwordConfirm" runat="server" TextMode="Password" CssClass="form-control col-md-6" > </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordConfirm" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="btnChange" runat="server" Text="Enviar" OnClick="btnChange_Click" CssClass="btn btn-primary col-md-2" />
            </div>
        </form>
    </div>
</body>
</html>
