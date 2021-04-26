<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.UsuarioManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <header class="card-header bg-dark">
        <div class="container">
            <div class="form-inline form-group ">
                <h5 class="col-md-2"><a class="text-white" href="Home.aspx">Home</a></h5>
                <h5 class="col-md-2"><a class="text-white" href="UsuarioPrincipal.aspx">Usuarios </a></h5>
                <h5 class="col-md-2"><a class="text-white" href="PersonaPrincipal.aspx">Personas</a></h5>   
                <h5 class="col-md-6 text-right"><a class="text-white" href="Login.aspx">Cerrar sesión</a></h5> 
            </div>
        </div>
    </header>
    <br />
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-inline form-group col-md-12">
                <h3><b>Usuario :</b>
                    <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="true"></asp:Label></h3>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Nombre de usuario</div>
                <asp:TextBox ID="username" runat="server" MinLength="3" ViewStateMode="Disabled" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="username" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            
            
            <% 
            if (this.lblAccion.Text.Equals("AGREGAR"))
            {
            %>
            <div class="form-inline form-group">
                <div class="col-md-2">Confirmar Contraseña</div>
                <asp:TextBox ID="password1" runat="server" TextMode="Password" CssClass="form-control col-md-6"></asp:TextBox>
             </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Contraseña</div>
                <asp:TextBox ID="passwordConfirm1" runat="server" TextMode="Password" CssClass="form-control col-md-6"></asp:TextBox>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Contraseña</div>
                <asp:TextBox ID="fechaingreso" runat="server" type="date" CssClass="form-control col-md-6"></asp:TextBox>
            </div>
            <% 
            }
            else
            {
            %>
            <div class="form-inline form-group">
                <div class="col-md-2">Contraseña</div>
                <asp:TextBox ID="password" runat="server" CssClass="form-control col-md-6" type="Password"></asp:TextBox>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Confirmar Contraseña</div>
                <asp:TextBox ID="passwordConfirm" runat="server" CssClass="form-control col-md-6" type="Password"></asp:TextBox>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">Estado</div>
                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control col-md-6"></asp:DropDownList>
            </div>
            <% 
            }
            %>            
            <div class="form-inline form-group">
                <div class="col-md-2">Persona</div>
                <asp:DropDownList ID="ddlPersona" runat="server" CssClass="form-control col-md-6"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvPersona" runat="server" ControlToValidate="ddlPersona" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="text-center">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" ViewStateMode="Disabled" CssClass="btn btn-primary" />
                    |
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" ViewStateMode="Disabled" CssClass="btn btn-danger" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
