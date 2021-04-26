<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioPrincipal.aspx.cs" Inherits="UTTT.Ejemplo.Persona.UsuarioPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="Stylesheet" type="text/css" />
    <title></title>
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
        <h3>Usuario</h3>
        <form id="form1" runat="server">
            <div class="form-horizontal">
                <div class="row">
                    <div class="col-md-5">
                        Nombre
                    </div>
                    <div class="col-md-3">
                        Estado
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5">
                        <asp:TextBox ID="txtNombre" runat="server" ViewStateMode="Disabled" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlEstado" runat="server" OnTextChanged="ddlEstado_TextChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" ViewStateMode="Disabled" secondary="$secondary," CssClass="btn btn-danger col-md-12"/>
                    </div>
                    <div class="col-md-2 text-right">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" ViewStateMode="Disabled" CssClass="btn btn-success  col-md-12"/>
                    </div>
                </div>
            </div>
            <br />
            <asp:GridView ID="dgvPersonas" runat="server"
                    AllowPaging="True" AutoGenerateColumns="False" DataSourceID="DataSourceUsuario" GridLines="Horizontal" OnRowCommand="dgvPersonas_RowCommand" ViewStateMode="Disabled" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="Usuario" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="estado" HeaderText="Estado" ReadOnly="True" SortExpression="estado" />
                        <asp:BoundField DataField="fechaingreso" HeaderText="Fecha Ingreso" ReadOnly="True" SortExpression="fechaingreso" />
                        <asp:BoundField DataField="Persona.strNombre" HeaderText="Persona" ReadOnly="True" SortExpression="Persona.strNombre" />
                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgEditar" CommandName="Editar" CommandArgument='<%# Bind("id") %>' ImageUrl="~/Images/editrecord_16x16.png" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" Width="50px" />

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar" Visible="True">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgEliminar" CommandName="Eliminar" CommandArgument='<%# Bind("id") %>' ImageUrl="~/Images/delrecord_16x16.png" OnClientClick="javascript:return confirm('¿Está seguro de querer eliminar el registro seleccionado?', 'Mensaje de sistema')" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>

            <asp:LinqDataSource ID="DataSourceUsuario" runat="server"
                ContextTypeName="UTTT.Ejemplo.Linq.Data.Entity.DcGeneralDataContext"
                OnSelecting="DataSourceUsuario_Selecting"
                Select="new (id, Persona, username, estado, fechaingreso)"
                TableName="Usuario" EntityTypeName="">
            </asp:LinqDataSource>
        </form>
    </div>
</body>
</html>
