<%-- 
    Document   : Principal
    Created on : 13/08/2023, 06:57:07 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"></link>
        <link rel="stylesheet" href="css/style.css"></link>
        <link rel="shortcut icon" href="img/Logo.png" type="image/x-icon">
        <title>Principal</title>
    </head>
    <body>
        <nav class="navbar">
            <a href="Home.jsp" target="myFrame">
                <img src="img/logosinFondo.png" alt="Logo" width="100px" height="auto" class="">
                <!-- <h2>AutoXpert</h2>-->
            </a> 
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Vehiculos
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Vehiculo&accion=Listar" target="myFrame">Vehiculos</a>
                     </li>
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=TipoVehiculo&accion=Listar" target="myFrame">Tipo Vehiculo</a>
                     </li>
                </div>
            </div>
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Sucursales
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Sucursal&accion=Listar" target="myFrame">Sucursales</a>
                     </li>
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Sucursal_has_Compra&accion=Listar" target="myFrame">Sucursales has Compra</a>
                     </li>
                </div>
            </div>
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Empleados
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleados</a>
                     </li>
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=TipoEmpleado&accion=Listar" target="myFrame">Tipo Empleado</a>
                     </li>
                </div>
            </div>
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Clientes
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Clientes</a>
                     </li>
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=TipoCliente&accion=Listar" target="myFrame">TipoCliente</a>
                     </li>
                </div>
            </div>
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Proveedores
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Proveedor&accion=Listar" target="myFrame">Proveedor</a>
                     </li>
                </div>
            </div>
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Compras
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Compra&accion=Listar" target="myFrame">Compras</a>
                     </li>
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=DetalleCompra&accion=Listar" target="myFrame">Detalle Compras</a>
                     </li>
                </div>
            </div>
            <div class="dropdown">
                <button style="border: none; color:#fff;" class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    Ventas
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=Venta&accion=Listar" target="myFrame">Ventas</a>
                     </li>
                     <li class="nav-item">
                            <a style="margin-left: 10px; border: none" class="btn btn-outline" href="Controlador?menu=DetalleVenta&accion=Listar" target="myFrame">Detalle de Venta</a>
                     </li>
                </div>
            </div>
            <div class="dropleft">
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"arial-haspopup="true" aria-expanded="false">
                    ${usuario.getPrimerNombre()}
                </button>
                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                    <div class="div-user">
                        <a class="dropdown-item" href="#">
                            <img src="img/usuario.png" alt="60" width="10"/>
                        </a>
                    </div>
                    <a class="dropdown-item" href="#">
                        ${usuario.getUsuario()}
                    </a>
                    <a class="dropdown-item" href="#">
                        ${usuario.getUsuario()}@gmail.com
                    </a>
                    <div class="dropdown-divider">
                    </div>
                    <form action="Validar" method="POST">
                        <button name="accion" name="Salir" class="dropdown-item">Salir</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="m-4" style="height: 610px; ">
            <br><br><br><br>
            <iframe name="myFrame" src="Home.jsp" style="height: 100%; width: 100%; border:0;"></iframe>
        </div>
        <div>
            <img src="img/fondo1.png" alt="">
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>

