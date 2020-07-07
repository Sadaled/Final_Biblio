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
            }
            .flex-column{
                min-height: 39vh;
            }
            .card{
                width: 371px;
                background-color: rgba(0,0,0,.315);
                text-align: center;
                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);
            }
            .card:hover{
                transform: scale(1.02);
                background-color: rgba(0,0,0,.415); 
            }
            .row-title {
                padding: 10px;
                position: absolute;
                width: 100%;
            }
            .cont-title {
                padding: 15px;
                border:15px;
                width: 40%;
            }
            .title{
                font-weight: 600;margin-bottom: 0;
            }
            .card-title{
                padding-top: 20px;padding-bottom:20px; 
            }
            label{
                color:white;font-size:30px;
            }
            .plane{
                width: 314px;height: 253px;padding: 12px;
            }
            .client{
                width: 260px;
            }
        </style>
    </head>
    <body background="imagenes/FondoPres.jpg">
        <br>
        <span style="margin-left: 90%"><a class="boton btn btn-danger btn-sm" method="post" href="menubi.jsp">Atras</a><div class="row-title">
            <div class="col-8 w-100">
                <div class="container text-center">
                    <h1 class="text-white display-4">Discovery Books</h1>
                </div>
            </div>
        </div>
        </span><br><br><br><br><br><br>
        <div class="row" style="margin-left: 11%">
            <div class="flex-column col-12 col-sm-12 col-md-4 col-lg-4 col-xl-3">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="Material_registrar.jsp">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-title">
                                        <img class="cliente" src="imagenes/Prestamo.png" width="65%">
                                    </div>
                                    <label>Registar</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                </div>
            </div>
            <div class="flex-column col-12 col-sm-12 col-md-4 col-lg-4 col-xl-3">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="Material_lista.jsp">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-title">
                                        <img class="cliente" src="imagenes/Reportes.png" width="65%">
                                    </div>
                                    <label>Lista</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>