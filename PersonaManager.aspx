<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonaManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.PersonaManager" Debug="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agegar Persona</title>
    <link href="Content/bootstrap.min.css" rel="Stylesheet" type="text/css" />

</head>
<script type="text/javascript">
    function VerificarCantidad(sender, args) {
        args.IsValid = (args.Value.length >= 3);
    }
</script>
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
                <h3><b>Persona :</b> <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="true"></asp:Label></h3>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Sexo  </div>
                <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control col-md-6"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RfvSexo" runat="server" ControlToValidate="ddlSexo" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Clave Unica  </div>
                <asp:TextBox ID="txtClaveUnica" runat="server" onsubmit="return validar()" MaxLength="3" ViewStateMode="Disabled" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvClaveunica" runat="server" ControlToValidate="txtClaveUnica" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtClaveUnica" ErrorMessage="Rango invalido" MaximumValue="999" MinimumValue="100"></asp:RangeValidator>

            </div>
            <div class="form-inline form-group">
                <div class="col-md-2">Nombre  </div>
                <asp:TextBox ID="txtNombre" runat="server" onblur="caracteres(this)" ViewStateMode="Disabled" CssClass="form-control col-md-6"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RfvNombre" runat="server" ControlToValidate="txtNombre" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNombre" EnableClientScript="False" ErrorMessage="Campo invalido" ValidationExpression="^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$"></asp:RegularExpressionValidator>

            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">Ap. Paterno </div>
                <asp:TextBox ID="txtAPaterno" runat="server" ViewStateMode="Disabled" MaxLength="15" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvAPaterno" runat="server" ControlToValidate="txtAPaterno" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtAPaterno" EnableClientScript="False" ErrorMessage="Campo invalido" ValidationExpression="^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">Ap. Materno </div>
                <asp:TextBox ID="txtAMaterno" runat="server" ViewStateMode="Disabled" MaxLength="15" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvAMaterno" runat="server" ControlToValidate="txtAMaterno" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtAMaterno" EnableClientScript="False" ErrorMessage="Campo invalido" ValidationExpression="^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">F. Nacimiento </div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:ImageButton ID="ImageBuutton1" runat="server" ImageUrl="~/Images/calend.png" ImageAlign="AbsBottom" OnClick="ImageButton1_Click" />
                <center>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_selectionChanged">
                        <OtherMonthDayStyle ForeColor="LightGray"></OtherMonthDayStyle>

                        <TitleStyle BackColor="Purple"
                            ForeColor="White"></TitleStyle>

                        <DayStyle BackColor="White"></DayStyle>

                        <SelectedDayStyle BackColor="LightGray"
                            Font-Bold="True"></SelectedDayStyle>
                    </asp:Calendar>


                    <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                </center>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">Correo Electronico </div>
                <asp:TextBox ID="txtCorreo" runat="server" MaxLength="50" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreo" EnableClientScript="False" ErrorMessage="Correo electronico Invalido " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreo" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">RFC </div>
                <asp:TextBox ID="txtRfc" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="reRfc" runat="server" ControlToValidate="txtRfc" EnableClientScript="False" ErrorMessage="RFC Invalido " ValidationExpression="^(([A-Z]|[a-z]|\s){1})(([A-Z]|[a-z]){3})([0-9]{6})((([A-Z]|[a-z]|[0-9]){3}))"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRfc" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">Codigo Postal </div>
                <asp:TextBox ID="txtCPostal" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="reCPostal" runat="server" ControlToValidate="txtCPostal" EnableClientScript="False" ErrorMessage="Codigo postal incorrecto" ValidationExpression="^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPostal" EnableClientScript="False" ErrorMessage="Este campo es Obligatorio"></asp:RequiredFieldValidator>
            </div>
            <div class="form-inline form-group">
                <div class="col-md-2 text-left">Estado civil </div>
                <asp:DropDownList ID="ddlEstadoCivil" runat="server" CssClass="form-control col-md-6"></asp:DropDownList>
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

