<%-- 
    Document   : TipoVehiculo
    Created on : 13/08/2023, 11:30:31 PM
    Author     : emers
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
       
        <title>Pagina Tipo Vehiculo</title>
    </head>
    <body>
        
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-boody">
                    <form action="" method="">
                        <div class="form-group">
                            <label>Categoria:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label>Descripcion:</label>
                            <input type="text" name="" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn-success">
                    </form>
                </div>
            </div>
            
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>CODIGO</td>
                            <td>CATEGORIA</td>
                            <td>DESCRIPCION</td>
                            <td>ACCIONES</td>
                        </tr>
                    </thead> 
                    <tbody>
                        <c:forEach var="tipoVe" items="${tipoVehiculos}">
                        <tr>
                            <td>${tipoVe.getCodigoTipoVehiculo()} </td>
                            <td>${tipoVe.getCateoria()} </td>
                            <td>${tipoVe.getDescripcion()} </td>
                            
                            <td>
                                <a class="btn-warning" href="">Editar</a>
                                <a class="btn-danger" href="">Eliminar</a>
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
