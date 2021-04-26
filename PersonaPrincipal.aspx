<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonaPrincipal.aspx.cs" Inherits="UTTT.Ejemplo.Persona.PersonaPrincipal" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Persona</title>
    <link href="Content/bootstrap.min.css" rel="Stylesheet" type="text/css" />
    <script src="Scripts/jquery-3.0.0.slim.js" type="text/javascript"></script>
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
        <h3>Persona</h3>
        <form id="form1" runat="server">
            <div class="form-horizontal">
                <div class="row">
                    <div class="col-md-4">
                        Nombre
                    </div>
                    <div class="col-md-4">
                        Sexo
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:TextBox ID="txtNombre" runat="server" ViewStateMode="Disabled" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlSexo" OnTextChanged="ddlSexo_TextChanged" runat="server" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
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
            <div>
                <asp:GridView ID="dgvPersonas" runat="server"
                    AllowPaging="True" AutoGenerateColumns="False" DataSourceID="DataSourcePersona" GridLines="Horizontal" OnRowCommand="dgvPersonas_RowCommand" ViewStateMode="Disabled" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="strClaveUnica" HeaderText="Clave Unica"
                            ReadOnly="True" SortExpression="strClaveUnica" />
                        <asp:BoundField DataField="strNombre" HeaderText="Nombre" ReadOnly="True"
                            SortExpression="strNombre" />
                        <asp:BoundField DataField="strAPaterno" HeaderText="APaterno" ReadOnly="True"
                            SortExpression="strAPaterno" />
                        <asp:BoundField DataField="strAMaterno" HeaderText="AMaterno" ReadOnly="True"
                            SortExpression="strAMaterno" />
                        <asp:BoundField DataField="CatSexo" HeaderText="Sexo"
                            SortExpression="CatSexo" />
                        <asp:BoundField DataField="strEstadoCivil" HeaderText="Estado Civil" SortExpression="strEstadoCivil" />
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

                        <asp:TemplateField HeaderText="Direccion">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgDireccion" CommandName="Direccion" CommandArgument='<%# Bind("id") %>' ImageUrl="~/Images/editrecord_16x16.png" />
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

            </div>
            <asp:LinqDataSource ID="DataSourcePersona" runat="server"
                ContextTypeName="UTTT.Ejemplo.Linq.Data.Entity.DcGeneralDataContext"
                OnSelecting="DataSourcePersona_Selecting"
                Select="new (strNombre, strAPaterno, strAMaterno, CatSexo, strEstadoCivil, strClaveUnica,id)"
                TableName="Persona" EntityTypeName="">
            </asp:LinqDataSource>
        </form>
    </div>
    
</body>
</html>
