﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="GestionarAlumno.aspx.cs" Inherits="CapaPresentacion.GestionarAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="content-header">

     <h1 style="text-align:center">REGISTRO DE ALUMNOS</h1>
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
                        <asp:Button ID="btnRegistrar" runat="server" CssClass="btn btn-primary" Width="200px" Text="Registrar"  Height="38px" OnClick="btnRegistrar_Click"/>
                    </td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" Width="200px" Text="Cancelar" Height="44px" OnClick="btnCancelar_Click" />
                    </td>
                 </tr>
             </table>
         </div>
       <br />
     <!-- Datatable Part -->
           <div class="row">
               <div class="col-xs-12">
               <div class="box box-primary">
                   <div class="box-header">
                       <h3 class="box-title">Lista de Alumnos</h3>
                    </div>
             <div class="box-body table-responsive">
               <table id="tb1_alumnos" class="table table-bordered table-hover text-center">
                 <thead>
                  <tr>
                    <th>Código</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Sexo</th>
                    <th>Edad</th>
                    <th>Direccion</th>
                    <th>Estado</th>
                </tr>
                </thead>
            <tbody id ="tbl_body_table">
                <!-- DATA POR MEDIO DE AJAX-->
            </tbody>
         </table>
     </div>
     </div>
     </div>
     </div>
     <!-- End Datatable -->
 </section>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
     <script src="js/paciente.js" type="text/javascript">

     </script>

</asp:Content>