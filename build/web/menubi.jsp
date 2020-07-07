<html><head>
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
    <body background="imagenes/fondo-borroso-libros.jpg" data-gr-c-s-loaded="true"><br>
        <div class="row-title">
            <div class="text-center">
                <div class="container">
                    <h1 class="text-white display-4">Discovery Books</h1>
                </div>                
            </div>
            
        </div><br><br>
        <div class="row">
        <span style="margin-left: 6.5%"></span>
            <div class="col-sm-2">
                    <div class="container-fluid">
                        <a href="Prestamo.jsp">
                            <div class="card">
                                <div class="card-body">
                                        <img class="cliente" src="imagenes/Prestamo.png" width="64%">
                                </div>
                                <div class="card-footer">
                                        <label>Prestamos</label><br>
                                </div>
                            </div>
                        </a>
                        
                    </div>
            </div>
        <span style="margin-left: 5%"></span>
            <div class="col-sm-2">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="Devolucion.jsp">
                            <div class="card">
                                <div class="card-body">
                                        <img class="cliente" src="imagenes/Devolucion.png" width="50%">
                                </div>
                                <div class="card-footer">
                                    <label>Devoluciones</label><br>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        <span style="margin-left: 5%"></span>
            <div class="col-sm-2">
                <div class="m-auto">
                    <div class="container-fluid">
                        <a href="Lector.jsp?from=bi">
                            <div class="card">
                                <div class="card-body">
                                    <img class="cliente" src="imagenes/Usuario.png" width="39%">
                                </div>
                                <div class="card-footer">
                                    <label>Lectores</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
                </div>
            </div>
        <span style="margin-left: 5%"></span>
            <div class="col-sm-2">
                    <div class="container-fluid">
                        <a href="Material.jsp?from=bi">
                            <div class="card">
                                <div class="card-body">
                                    <img class="cliente" src="imagenes/Material.png" width="40%">
                                </div>
                                <div class="card-footer">
                                    <label>Material</label>
                                </div>
                            </div>
                        </a>
                        
                    </div>
            </div>
        </div>
<br><br>
        <div class="row">
    <div class="container-fluid col-sm-2">
        <a href="index.jsp">
            <div class="cardc rounded">
                <div class="card-body">
                    <label>Cerrar sesión</label>
                </div>
            </div>
        </a>
    </div>
</div>
    

</body></html>