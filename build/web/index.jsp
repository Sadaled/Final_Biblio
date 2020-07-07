<%-- 
    Document   : index
    Created on : 20-may-2020, 23:45:45
    Author     : alejandrodb
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
        <title>Login</title>
         <style>
            body {
                background: #006666;
            }
            .login{
                background-color: #74A138;
            }
        </style>
    </head>
    
    <body><br><br><br>
        <div class="row">
            <div class="col-sm-5"></div>
            <div class="col-sm-5">
                <div class="card bg-light text-dark" style="width: 400px">
                    <div class="card-body">
                    <form name="login" method="post" action="autentica">
                        <br>
                        <img src="imagenes/Logo.png" width="100%">
                        <br><br>
                        <h4><b>Usuario:</b></h4>
                        <input type="text" name="usuario" style="width: 100%" class="form-control"><br>
                        <h4><b>Password:</b></h4>
                        <input type="password" name="password" style="width: 100%" class="form-control"><br><br>
                        <div class="form-row">
                            <input type="submit" value="Ingresar" style="width: 100%" class="form-control btn btn-success text white"><br><br>
                            <span style="margin-left:36%"><a class="boton btn btn-primary btn-sm" method="post" href="Lector_registrar.jsp">Crear Usuario</a></span>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </body>
</html>