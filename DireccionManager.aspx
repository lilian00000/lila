<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DireccionManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.DireccionManager" %>

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
            <div class="form-inline form-group">
                <h3><b>Persona :</b>
                    <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True"></asp:Label>
                </h3>
            </div>
            <div class="col-form-label">
                <asp:Label ID="lblPersona" runat="server" Text="Persona:"></asp:Label>
                <asp:Label ID="txtPersona" runat="server" Text="Persona"></asp:Label>
            </div>
            <div class="form-group text-right">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar Nuevo" OnClick="btnAgregar_Click" ViewStateMode="Disabled" CssClass="btn btn-success" />

            </div>
            <div>

                <asp:GridView ID="dgvDireccion" runat="server" AutoGenerateColumns="False"
                    DataSourceID="LinqDataSourceDireccion" GridLines="Horizontal" OnRowCommand="dgvDireccion_RowCommand" CssClass="table">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True"
                            SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="strColonia" HeaderText="Colonia" ReadOnly="True"
                            SortExpression="strColonia" />
                        <asp:BoundField DataField="strCalle" HeaderText="Calle" ReadOnly="True"
                            SortExpression="strCalle" />
                        <asp:BoundField DataField="strNumero" HeaderText="Número" ReadOnly="True"
                            SortExpression="strNumero" />
                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgEditar" CommandName="Editar" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/editrecord_16x16.png" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" Width="50px" />

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar" Visible="True">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgEliminar" CommandName="Eliminar" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/delrecord_16x16.png" OnClientClick="javascript:return confirm('¿Está seguro de querer eliminar el registro seleccionado?', 'Mensaje de sistema')" />
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
            <div>

                <asp:LinqDataSource ID="LinqDataSourceDireccion" runat="server"
                    ContextTypeName="UTTT.Ejemplo.Linq.Data.Entity.DcGeneralDataContext"
                    EntityTypeName="" Select="new (id, strCalle, strNumero, strColonia)"
                    TableName="Direccion" OnSelecting="LinqDataSourceDireccion_Selecting">
                </asp:LinqDataSource>

            </div>
        </form>
    </div>
</body>
</html>
