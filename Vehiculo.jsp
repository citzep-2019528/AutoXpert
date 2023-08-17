<%-- 
    Document   : Vehiculo
    Created on : 15/08/2023, 09:52:11 AM
    Author     : isaac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Vehiculos</title>
    </head>
    <body>

        <div class="d-flex">

            <div class="card col-sm-4">
                <div class="card-body">
                    <form>
                        <div>
                            <label>Código:</label>
                            <input type="text" name="" class="form-control"/>
                        </div>
                        <div>
                            <label>Marca:</label>
                            <input type="text" name="" class="form-control"/>
                        </div>
                        <div>
                            <label>Modelo:</label>
                            <input type="text" name="" class="form-control"/>
                        </div>
                        <div>
                            <label>Color:</label>
                            <input type="text" name="" class="form-control"/>
                        </div>
                        <div>
                            <label>Puertas:</label><br>
                            <select class="form-select" aria-label="Cantidad de puertas">
                                <option selected>Cantidad de puertas</option>
                                <option value="opcion1">2</option>
                                <option value="opcion2">4</option>
                            </select>
                        </div>
                        <div>
                            <label>Stock:</label>
                            <input type="text" name="" class="form-control"/>
                        </div>
                        <div>
                            <label>Disponible</label>
                            <input type="text" name="" class="form-control"/>
                        </div>
                        <div>
                            <label>Tipo Vehiculo:</label><br>
                            <select class="form-select" aria-label="Selecciona una opción">
                                <option selected>Selecciona una opción</option>
                                <option value="opcion1">Opción 1</option>
                                <option value="opcion2">Opción 2</option>
                                <option value="opcion3">Opción 3</option>
                            </select>
                        </div>

                    </form>
                </div>
            </div>


            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td><b>CÓDIGO</td>
                            <td><b>MARCA</td>
                            <td><b>MODELO</td>
                            <td><b>COLOR</td>
                            <td><b>CANT. PUERTAS</td>
                            <td><b>STOCK</td>
                            <td><b>DISPONIBILIDAD</td>
                            <td><b>TIPO VEHÍCULO</td>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="vehiculo" items="${vehiculos}">
                            <tr>

                                <td>${vehiculo.getCodigoVehiculo()}</td>
                                <td>${vehiculo.getMarca()}</td>
                                <td>${vehiculo.getModelo()}</td>
                                <td>${vehiculo.getColor()}</td>
                                <td>${vehiculo.getCantidadPuertas()}</td>
                                <td>${vehiculo.getStock()}</td>
                                <td>${vehiculo.isEstadoVehiculo()}</td>
                                <td>${vehiculo.getCodigoTipoVehiculo()}</td>
                                
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
