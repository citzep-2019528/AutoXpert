<%-- 
    Document   : Empleado
    Created on : 15/08/2023, 04:29:09 PM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="css/vistas.css"></link>
        <title>Página Empleado</title>
    </head>
    <body style="background: currentColor;">
        <div class="d-flex" style=" background-color: ">
            <div class="card col-sm-4"  style=" background-color: currentColor; ">
                <div class="card-body" style=" background-color: currentColor; ">
                    <form class="dark-form" action="Controlador?menu=Empleado" method="POST">
                        <div class="form-group">
                            <label style="color: #fff">DPI:</label>
                            <input type="text" value="${empleado.getDPIEmpleado()}" name="txtDPIEmpleado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Primer Nombre:</label>
                            <input type="text" value="${empleado.getPrimerNombre()}" name="txtPrimerNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Otros Nombres</label>
                            <input type="text" value="${empleado.getOtrosNombres()}" name="txtOtrosNombres" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Apellidos</label>
                            <input type="text" value="${empleado.getApellidos()}" name="txtApellidos" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Telefono:</label>
                            <input type="text" value="${empleado.getTelefonoEmpleado()}" name="txtTelefono" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Direccion</label>
                            <input type="text" value="${empleado.getDireccionEmpleado()}" name="txtDireccion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Estado:</label>
                            <input type="text" value="${empleado.getEstadoEmpleado()}" name="txtEstado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Usuario:</label>
                            <input type="text" value="${empleado.getUsuario()}" name="txtUsuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Sucursal</label>
                            <select id="Sucursal" name="cmbSucursal">
                                <option disabled selected value="">Selecciona una opción</option>
                                <c:forEach var="sucursal" items="${sucursales}">
                                    <option value="${sucursal.getCodigoSucursal()}"> ${sucursal.getCodigoSucursal()}. ${sucursal.getNombreSucursal()}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label style="color: #fff">Tipo Empleado</label>
                            <select id="TipoEm" name="cmbTipoEm">   
                                <option disabled selected value="">Selecciona una opción</option>
                                <c:forEach var="tipoEm" items="${tipoempleado}">
                                    <option value="${tipoEm.getCodigoTipoEmpleado()}"> ${tipoEm.getCodigoTipoEmpleado()}. ${tipoEm.getDescripcion()}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-custom-agregar">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-custom-actualizar">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr style="color: #fff">
                            <td><strong>CODIGO</strong></td>
                            <td><strong>DPI</strong></td>
                            <td><strong>PRIMER NOMBRE</strong></td>
                            <td><strong>OTROS NOMBRES</strong></td>
                            <td><strong>APELLIDOS</strong></td>
                            <td><strong>TELEFONO</strong></td>
                            <td><strong>DIRECCION</strong></td>
                            <td><strong>ESTADO</strong></td>
                            <td><strong>USUARIO</strong></td>
                            <td><strong>SUCURSAL</strong></td>
                            <td><strong>TIPO EMPLEADO</strong></td>
                            <td><strong>ACCIONES</strong></td>
                        </tr>
                    </thead>
                    <tbody style="background: currentColor;">
                        <c:forEach var="empleado" items="${empleados}">
                            <tr>
                                <td style="color: #fff" align="center">${empleado.getCodigoEmpleado()}</td>
                                <td style="color: #fff" align="center">${empleado.getDPIEmpleado()}</td>
                                <td style="color: #fff" align="center">${empleado.getPrimerNombre()}</td>
                                <td style="color: #fff" align="center">${empleado.getOtrosNombres()}</td>
                                <td style="color: #fff" align="center">${empleado.getApellidos()}</td>
                                <td style="color: #fff" align="center">${empleado.getTelefonoEmpleado()}</td>
                                <td style="color: #fff" align="center">${empleado.getDireccionEmpleado()}</td>
                                <td style="color: #fff" align="center">${empleado.getEstadoEmpleado()}</td>
                                <td style="color: #fff" align="center">${empleado.getUsuario()}</td>
                                <td style="color: #fff" align="center">${empleado.getCodigoSucursal()}</td>
                                <td style="color: #fff" align="center">${empleado.getCodigoTipoEmpleado()}</td>
                                <td style="color: #fff" align="center">
                                   <a class="btn btn-custom-editar" href="Controlador?menu=Empleado&accion=Editar&codigoEmpleado=${empleado.getCodigoEmpleado()}">Editar</a>
                                   <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&codigoEmpleado=${empleado.getCodigoEmpleado()}">Eliminar</a>
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
