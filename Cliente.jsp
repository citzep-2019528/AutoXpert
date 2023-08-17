<%-- 
    Document   : Cliente
    Created on : 14/08/2023, 11:48:33 AM
    Author     : Hans
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Página Cliente</title>
    </head>
    <body>
        <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=cliente"method="POST">
                        <div class="form-group">
                            <label>Nombres:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Apellidos:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>NIT:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Telefono Cliente:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Dirección Cliente:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Correo Cliente</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Estado Cliente</label>
                            <input type="text" name="" class="form-control">
                        </div>
                         <div class="form-group">
                            <label>Codigo de TipoCliente:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <input type="submit" name="" value="Agregar" class="btn btn-warning">
                        <input type="submit" name="" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                        <td><strong>CODIGO</strong></td>
                        <td><strong>NOMBRES</strong></td>
                        <td><strong>APELLIDOS</strong></td>
                        <td><strong>NIT</strong></td>
                        <td><strong>TELÉFONO</strong></td>
                        <td><strong>DIRRECCIÓN</strong></td>
                        <td><strong>CORREO</strong></td>
                        <td><strong>ESTADO</strong></td>
                        <td align='center'><strong>CODIGO TIPOCLIENTE</strong></td>
                        <td align='center'><strong>ACCIONES</strong></td>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cliente" items="${clientes}">
                        <tr>
                        <td>${cliente.getCodigoCliente()}</td>
                        <td>${cliente.getNombres()}</td>
                        <td>${cliente.getApellidos()}</td>
                        <td>${cliente.getNit()}</td>
                        <td>${cliente.getTelefonoCliente()}</td>
                        <td>${cliente.getDireccionCliente()}</td>
                        <td>${cliente.getCorreoCliente()}</td>
                        <td>${cliente.EstadoCliente()}</td>
                        <td>${cliente.getCodigoTipoCliente()}</td>
                        <td>
                          <a class="btn btn-warning" href="">Editar</a>
                          <a class="btn btn-danger" href="">Eliminar</a>
                        </td>
                        </tr> 
                       </c:forEach>  
                    </tbody>
                </table>
            </div>

        </div>
        
         
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
