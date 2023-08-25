<%-- 
    Document   : TipoEmpleado
    Created on : 16/08/2023, 07:35:30 PM
    Author     : Santiago
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <!-- Titulo de la vista -->
          <title>Tipo Empleado</title>
    </head>
    <body>
       <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <!-- Colocar el método y action -->
                    <form action="Controlador?menu=TipoEmpleado" method="POST">
                     
                        <!-- División donde se colocan los datos -->
                        <div class="form-group">
                            
                            <label>código Tipo Empleado</label>
                            <input type="text" name="" class="form-control">
                            
                        </div>
                        
                        <div class="form-group" class="form-control">
                             <label>Descripción:</label>
                              <input type="text" name="">
                              
                        </div>
                        <div class="form-group" class="form-control">
                             <label>Sueldo Base</label>
                              <input type="text" name="">
                              
                        </div>
                        <div class="form-group" class="form-control">
                             <label>Bonificación</label>
                              <input type="text" name="">
                              
                        </div>
                        <div class="form-group" class="form-control">
                             <label>Bonificación Empresa</label>
                              <input type="text" name="">
                              
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn-btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success"> 
                    </form>
                </div>
            </div>
           
           
            
            <div class="col-sm-8">
                <!-- División de la cabecera de las tablas -->
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CODIGO TIPO EMPLEADO</td>
                            <td>DESCRIPCIÓN</td>
                            <td>SUELDO BASE</td>
                            <td>BONIFICACIÓN</td>
                            <td>BONIFICACION EMPRESA</td>
                            
                            <td>ACCIONES</td>
                            
                        </tr>                        
                    </thead>
                    <tbody>
                        
                        <!-- Parte de los "get" en Java -->
                        <!--Necesito el item del controlador -->
                        <c:forEach var="tipoem" items="${tipoempleado}">
                        <tr>
                            <td>${tipoem.getCodigoTipoEmpleado()}</td>
                            <td>${tipoem.getDescripcion()}</td>
                            <td>${tipoem.getSueldoBase()}</td>      
                            <td>${tipoem.getBonificacion()}</td>
                            <td>${tipoem.getBonificacionEmpresa()}</td>                            
                                                 
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
