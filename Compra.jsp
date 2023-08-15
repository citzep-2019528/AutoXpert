<%-- 
    Document   : Compra
    Created on : 14/08/2023, 04:02:32 PM
    Author     : Manuel Eduardo González Avalos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Página Compra</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=" method="POST">
                        <div class="form-group">
                            <label>Número de compra:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Fecha de Compra:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Total de Compra:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Código del Proveedor:</label>
                            <input type="text" name="" class="form-control">
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
                            <td>CÓDIGO</td>
                            <td>NÚMERO COMPRA</td>
                            <td>FECHA COMPRA</td>
                            <td>TOTAL COMPRA</td>
                            <td>CÓDIGO PROVEEDOR</td>
                            <td>ACCIONES</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="compra" items="${compras}">
                            <tr>
                                <td>${compra.getCodigoCompra()}</td>
                                <td>${compra.getNumeroCompra()}</td>
                                <td>${compra.getFechaCompra()}</td>
                                <td>${compra.getTotalCompra()}</td>
                                <td>${compra.getCodigoProveedor()}</td>
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
