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
        <link rel="stylesheet" href="css/vistas.css"></link>
        <title>Vehiculos</title>
    </head>
    <body style="background: currentColor;">

        <div class="d-flex">

            <div class="card col-sm-4" style=" background-color: currentColor; ">
                <div class="card-body" style=" background-color: currentColor; ">
                    <form class="dark-form" action="Controlador?menu=Vehiculo" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label style="color: #FFF">Código:</label>
                            <input type="text" value="${vehiculo.getCodigoVehiculo()}" name="txtCodigoVehiculo" class="form-control" readonly/>
                        </div>
                        <div class="form-group">
                            <label style="color: #FFF">Marca:</label>
                            <input type="text" value="${vehiculo.getMarca()}" name="txtMarcaVehiculo" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: #FFF">Modelo:</label>
                            <input type="text" value="${vehiculo.getModelo()}" name="txtModeloVehiculo" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: #FFF">Color:</label>
                            <input type="text" value="${vehiculo.getColor()}" name="txtColorVehiculo" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color:#FFF">Precio:</label>
                            <input type="number" value="${vehiculo.getPrecio()}" step="0.01" name="numberPrecio" placeholder="Q.00.00" required class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #FFF">Stock:</label>
                            <input type="number" value="${vehiculo.getCantidadPuertas()}" name="txtStockVehiculo" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: #FFF">Puertas:</label><br>
                            <select class="form-select" aria-label="Cantidad de puertas" name="cmbCantPuertas">
                                <option value="0" <c:if test="${vehiculo.getCantidadPuertas() == 0}">selected</c:if>>Cantidad de puertas</option>
                                <option value="2" <c:if test="${vehiculo.getCantidadPuertas() == 2}">selected</c:if>>2</option>
                                <option value="4" <c:if test="${vehiculo.getCantidadPuertas() == 4}">selected</c:if>>4</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label style="color: #FFF">Disponible</label><br>
                                <select class="form-select" aria-label="Disponibilidad" name="cmbDisponible">
                                    <option value="1" <c:if test="${vehiculo.isEstadoVehiculo()}">selected</c:if>>Disponible</option>
                                <option value="0" <c:if test="${!vehiculo.isEstadoVehiculo()}">selected</c:if>>No Disponible</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label style="color: #FFF">Tipo Vehiculo:</label><br>
                                <select class="form-select" aria-label="Selecciona una opción" name="cmbTipoVehiculo">
                                <c:forEach var="t" items="${listaTipoVehiculo}">
                                    <option value="${t.getCodigoTipoVehiculo() != null ? t.getCodigoTipoVehiculo() : 0}" 
                                            <c:if test="${t.getCodigoTipoVehiculo() == vehiculo.getCodigoTipoVehiculo()}">
                                                selected
                                            </c:if>>
                                        ${t}
                                    </option>
                                </c:forEach> 
                            </select>
                        </div>
                        <div class="form-group" style="color:#FFF;">
                            <label>Foto Vehiculo:</label><br>
                            <input type="file" name="imagenVehiculo" accept=".jpg, .jpeg, .png">
                        </div>
                        <br>
                        <input type="hidden" name="codigoVehiculo" value="${vehiculo.getCodigoVehiculo()}">
                        <input type="submit" name="accion" value="Agregar" class="btn  btn-custom-agregar"/>
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-custom-actualizar"/>
                    </form>
                </div>
            </div>


            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr style="color: #FFF">
                            <td><b>CÓDIGO</td>
                            <td><b>MARCA</td>
                            <td><b>MODELO</td>
                            <td><b>COLOR</td>
                            <td><b>CANT. PUERTAS</td>
                            <td><b>IMAGEN</b></td>
                            <td><b>PRECIO</b></td>
                            <td><b>STOCK</td>
                            <td><b>DISPONIBILIDAD</td>
                            <td><b>TIPO VEHÍCULO</td>
                        </tr>
                    </thead>

                    <tbody style="background: currentColor;">
                        <c:forEach var="vehiculo" items="${vehiculos}">
                            <tr style="color: #FFF">

                                <td>${vehiculo.getCodigoVehiculo()}</td>
                                <td>${vehiculo.getMarca()}</td>
                                <td>${vehiculo.getModelo()}</td>
                                <td>${vehiculo.getColor()}</td>
                                <td style="text-align: center">${vehiculo.getCantidadPuertas()}</td>
                                <td style="color: #fff" align="center">
                                    <c:choose>
                                        <c:when test="${not empty vehiculo.getImagen()}">
                                            <img src="ControladorFoto?vehiculo=Vehiculo&codigoVehiculo=${vehiculo.getCodigoVehiculo()}" width="100" height="80">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="img/vehiculonotfound.jpg" width="100" height="80">
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td style="text-align: center">Q.${vehiculo.getPrecio()}0</td>
                                <td style="text-align: center">${vehiculo.getStock()}</td>
                                <td style="text-align: center">${vehiculo.isEstadoVehiculo()}</td>
                                <td style="text-align: center">${vehiculo.getCodigoTipoVehiculo()}</td>

                                <td>
                                    <a class="btn btn-custom-editar" href="Controlador?menu=Vehiculo&accion=Editar&codigoVehiculo=${vehiculo.getCodigoVehiculo()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Vehiculo&accion=Eliminar&codigoVehiculo=${vehiculo.getCodigoVehiculo()}">Eliminar</a>
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
