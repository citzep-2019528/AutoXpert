<%-- 
    Document   : Sucursal_has_Compra
    Created on : 14/08/2023, 04:03:04 PM
    Author     : Manuel Eduardo González Avalos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Página Sucursales y Compras</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=" method="">
                        <div>
                            <label>Código Sucursal:</label>
                            <input type="text" name="" class="form-group">
                        </div>
                        <div>
                            <label>Código Compra:</label>
                            <input type="text" name="" class="form-group">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CÓDIGO SUCURSAL Y COMPRA</td>
                            <td>CÓDIGO SUCURSAL</td>
                            <td>CÓDIGO COMPRA</td>
                            <td>ACCIONES</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="succom" items="${sucursales_has_compras}">
                            <tr>
                                <td>${succom.getSucursal_codigoSucursal()}</td>
                                <td>${succom.getCodigoSucursal()}</td>
                                <td>${succom.getCodigoCompra()}</td>
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
    </body>
</html>
