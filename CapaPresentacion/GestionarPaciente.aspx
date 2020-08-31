<%@ Page Title="" Language="C#" MasterPageFile="~/Hall.Master" AutoEventWireup="true" CodeBehind="GestionarPaciente.aspx.cs" Inherits="CapaPresentacion.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <section class="content-header">
     <h1 style="text-align:center">REGISTRO DE PACIENTES</h1>
 </section>
 <section class="content">
     <div class="row">
         <div class="col-md-6">
             <div class="box box-primary">
                 <div class="box-body">
                     <div class="form-group">
                         <label>DOCUMENTO DE IDENTIDAD</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtNroDocumento" runat="server" Text="" CssClass="form-control" Width="239px"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <label>NOMBRES</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtNombres" runat="server" Text="" CssClass="form-control" Width="235px"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <label>APELLIDO PATERNO</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtApPaterno" runat="server" Text="" CssClass="form-control" Width="232px"></asp:TextBox>
                     </div>
                     
                     <div class="form-group">
                         <label>APELLIDO MATERNO</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtApMaterno" runat="server" Text="" CssClass="form-control" Width="228px"></asp:TextBox>
                     </div>
                 </div>
             </div>
         </div>
         <div class="col-md-6">
             <div class="box box-primary">
                 <div class="box-body">
                     <div class="form-group">
                         <label>SEXO</label>
                     </div>
                     <div class="form-group">
                         <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control" Width="138px">
                          <asp:ListItem>Masculino</asp:ListItem>
                          <asp:ListItem>Femenino</asp:ListItem>
                             </asp:DropDownList>
                     </div>
                     <div class="form-group">
                         <label>EDAD</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtEdad" runat="server" Text="" CssClass="form-control" Width="89px"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <label>TELEFONO</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtTelefono" runat="server" Text="" CssClass="form-control" Width="212px"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <label>DIRECCION</label>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="txtDireccion" runat="server" Text="" CssClass="form-control" Width="212px"></asp:TextBox>
                     </div>
                    
                 </div>
             </div>
         </div>
     </div>
     
         <div align="center">
             <table>
                 <tr>
                    <td>
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Width="200px" Text="Registrar" OnClick="btnRegistrar_Click" Height="38px"/>
                    </td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Width="200px" Text="Cancelar" Height="44px" OnClick="btnCancelar_Click"/>
                    </td>
                 </tr>
             </table>
         </div>
 </section>
</asp:Content>
