<%-- 
    Document   : Prestamo
    Created on : 15/06/2020, 12:57:44 PM
    Author     : ASUS
--%>

<%@page import="controlador.autentica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>Discovery Books</title>
        <style>
            body{
                font-family: 'Fredoke One',cursive;
                background-image: url(imagenes/FondoLector2.jpg);
            }
            .card{
                width: 371px;
                background-color: rgba(0,0,0,.315);
                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);
            }
        </style>
    </head>
    <body><br><br><br><br>
        
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="form-row">
                <div class="card text-white" style="width: 1000px">
                    <div class="card-body">
                        <form name="form-lector" method="post" action="procesa_lector">
                            <div class="form-row"><input name="StaUsuario" type="hidden" value="0">
                                <div class="col-md-3 mb-3">
                                  <label>Codigo</label>
                                  <input type="text" class="form-control" placeholder="LE#####" name="CodUsuario" required>
                                </div>
                                <div class="col-md-1 mb-1"></div>
                                <div class="col-md-3 mb-3">
                                  <label>Contraseña</label>
                                  <input type="text" class="form-control" name="PassUsuario" required>
                                </div>
                                <div class="col-md-4 mb-1"></div>
                                <div class="col-md-1 mb-1">
                                    <% if(autentica.Logeado!=null){
                                        if(autentica.Logeado.substring(0,2).equals("EN")){%>
                                        <a class="boton btn btn-danger btn-sm" method="post" href="menuen.jsp">Atras</a><%}%>
                                    <% if(autentica.Logeado.substring(0,2).equals("BI")){%>
                                        <a class="boton btn btn-danger btn-sm" method="post" href="menubi.jsp">Atras</a><%}%>
                                    <% }else{%><a class="boton btn btn-danger btn-sm" method="post" href="index.jsp">Atras</a><%}%>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-3 mb-4">
                                    <label>DNI</label>
                                    <input type="text" class="form-control" name="DniLector" required>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" name="NomLector" required>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Apellido</label>
                                    <input type="text" class="form-control" name="ApeLector" required>
                                    <div class="valid-tooltip">
                                      Looks good!
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Telefono</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="TelLector" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-7 mb-3">
                                    <label>Direccion</label>
                                    <input type="text" class="form-control" name="DirLector" required>
                                </div>
                                <div class="col-md-1 mb-4"></div>
                                <div class="col-md-3 mb-3">
                                    <label>Fecha de nacimiento</label>
                                    <input type="date" class="form-control" name="EdadLector" required>
                                    <div class="valid-tooltip">
                                      Looks good!
                                    </div>
                                </div>
                            </div><br>
                            <input type="submit" name="agregar_lector" value="Registrar" style="width: 100%" class="form-control btn btn-success text white"><br><br> 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
