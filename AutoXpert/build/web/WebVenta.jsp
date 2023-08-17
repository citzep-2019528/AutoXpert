<%-- 
    Document   : WebVenta
    Created on : 14/08/2023, 11:58:20 AM
    Author     : carli
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Pagina ventas</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Venta" method="POST">
                        <div class="form-group">
                            <label>Fecha de Venta: </label>
                            <input type="text" name="" class="form-control">
                        </div >
                        <div class="form-group">
                            <label>Hora de Venta:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Total de Venta:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Estado de Venta:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Codigo de Empleado:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Codigo de Cliente:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <input type="submit" name="" value="Agregar" class="btn btn-success">
                        <input type="submit" name="" value="Actualizar" class="btn btn-warning">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td><strong>CODIGO</strong></td>
                            <td align='center'><strong>FECHA</strong></td>
                            <td><strong>HORA</strong></td>
                            <td><strong>TOTAL</strong></td>
                            <td><strong>ESTADO</strong></td>
                            <td><strong>CODIGO EMPLEADO</strong></td>
                            <td><strong>CODIGO CLIENTE</strong></td>
                            <td align='center'><strong>ACCIONES</strong></td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="Venta" items="${ventas}">
                        <tr>
                            <td align='center'>${Venta.getCodigoVenta()}</td>
                            <td>${Venta.getFechaVenta()}</td>
                            <td>${Venta.getHoraVenta()}</td>
                            <td>${Venta.getTotalVenta()}</td>
                            <td align='center'>${Venta.isEstadoVenta()}</td>
                            <td align='center'>${Venta.getCodigoEmpleado()}</td>
                            <td align='center'>${Venta.getCodigoCliente()}</td>
                            <td>
                                <a class="btn btn-primary" href="">Editar</a>
                                <a class="btn btn-dark" href="">Eliminar</a>
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