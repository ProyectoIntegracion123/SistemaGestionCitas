<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CapaPresentacion.Login" %>

<!DOCTYPE html>

<html class="bg-orange"  xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Acceso al Sistema de Clinica</title>
    <link href="//maxcdn.bootstrapcdn.com7bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="//cdnjs.clouflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/AdminLTE.css" rel="stylesheet" type="text/css"  />
   
</head>
<body class="bg-orange">
    
    
    
    <div class="form-box" id="login-box">
    <form id="form1" runat="server">
        <div class="header">Login</div>
        <div class="body bg-gray">
            <div class="form-group">
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese Usuario..." Width="309px"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Ingrese Password..." Width="306px"></asp:TextBox>
            </div>
        </div>
        <div class="footer">
            <asp:Button ID="btnIngresar" runat="server" Text="Iniciar Sesion" CssClass="btn bg-olive btn-block" Width="310px" OnClick="btnIngresar_Click" />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Registrate</asp:LinkButton>
        </div>
    </form>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
