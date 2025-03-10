<%-- 
    Document   : Prestamo
    Created on : 15/06/2020, 12:57:44 PM
    Author     : ASUS
--%>

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
        <%String from=request.getParameter("from");%>
        <div class="row">
            <div class="col-sm-5"></div>
            <div class="form-row">
                <div class="card text-white" style="width: 375px">
                    <div class="card-body">
                        <form name="form-prestamo" method="post" action="procesa_usuario">
                            <h2 style="text-align: center">Registro de Usuario</h2><br><br>
                            <div class="form-row">
                                <div class="col-md-5 mb-3">
                                  <label>Codigo</label>
                                  <input type="text" class="form-control" name="CodUsuario" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-5 mb-3">
                                    <label>Contraseña</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" name="PassUsuario" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                    <label>Tipo</label>
                                    <select type="text" class="form-control" name="TipoUsuario" required>
                                        <option value="">Seleccionar</option>
                                        <option value="LE">Lector</option>
                                        <option value="BI">Bibliotecario</option>
                                        <option value="EN">Encargado</option>
                                    </select>
                                </div>
                            </div><br>
                            <input type="hidden" name="from" value="<%=from%>">
                            <div class="form-row">
                                <input type="submit" name="crear_usuario" value="Ingresar" style="width: 100%" class="form-control btn btn-success text white"><br>
                                <div class="col-md-5 mb-1"></div>
                                <div class="col-md-1 mb-1"><br>
                                    <a class="boton btn btn-danger btn-sm" method="post" href="index.jsp">Atras</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
