<%-- 
    Document   : Menu
    Created on : 13/06/2020, 09:33:42 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>Discovery Books</title>
        <style>
            body{
                font-family: 'Fredoke One',cursive;
                min-height: 98%;
                
            }
            .flex-column{
                min-height: 35vh;
            }
            .card{
                width: 371px;
                background-color: rgba(0,0,0,.315);
                text-align: center;
                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);
            }
            .cardc{
                width: 371px;
                background-color: rgba(200,54,54,.315);
                text-align: center;
                box-shadow: 5px 8px 8px rgba(200,100,100,0.6);
            }
            .cardc:hover{
                transform: scale(1.02);
                background-color: rgba(200,54,54,.415);
            }
            .card:hover{
                transform: scale(1.02);
                background-color: rgba(0,0,0,.415); 
            }
            .row-title {
                padding: 30px;
                width: 100%;z-index: 2;
            }
            .cont-title {
                padding: 30px;
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
    <body background="imagenes/fondobiblio.jpg">
        <div class="row-title">
            <div class="col-12 text-center">
                <div class="container cont-title">
                    <h1 class="text-white display-4">Discovery Books</h1>
                </div>                
            </div>
        </div>
        <div class="row">
            <div class="d-flex flex-column col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="#">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-title">
                                        <img class="cliente" src="imagenes/Reportes.png" width="65%">
                                    </div>
                                    <label>Reportes</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                </div>
            </div>
            <div class="d-flex flex-column col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="Sanciones.jsp">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-title">
                                        <img class="cliente" src="imagenes/Sanciones.png" width="50%">
                                    </div>
                                    <label>Sanciones</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                </div>
            </div>
            <div class="d-flex flex-column col-md-4 col-lg-4 col-xl-4">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="Bibliotecario.jsp">
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-title">
                                        <img class="cliente" src="imagenes/Usuario.png" width="35%">
                                    </div>
                                    <label>Bibliotecario</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                </div>
            </div>
        </div><br><br>
        <div class="row">
            <div class="col-sm-4"></div>
            <span style="margin-left: 6.3%">
                <div class="col-sm-2">
                    <a href="index.jsp">
                        <div class="cardc rounded">
                            <div class="card-body">
                                <label>Cerrar sesión</label>
                            </div>
                        </div>
                    </a>
                </div>
            </span>
        </div>
    </body>
</html>
