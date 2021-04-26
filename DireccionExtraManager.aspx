<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DireccionExtraManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.DireccionExtraManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                <h3><b>Dirección :<asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True"></asp:Label></h3>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Colonia  </div>
                <asp:TextBox ID="txtColonia" runat="server" ViewStateMode="Disabled" CssClass="form-control col-md-6"></asp:TextBox>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Calle  </div>
                <asp:TextBox ID="txtCalle" runat="server"  ViewStateMode="Disabled" CssClass="form-control col-md-6"></asp:TextBox>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Número  </div>
                <asp:TextBox ID="txtNumero" runat="server"  ViewStateMode="Disabled" CssClass="form-control col-md-6"></asp:TextBox>
            </div>
            <div class="text-center">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" ViewStateMode="Disabled" CssClass="btn btn-primary"/>
                    |
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" ViewStateMode="Disabled" CssClass="btn btn-danger"/>
                </div>
            </div>
        </form>
    </div>

</body>
</html>
