<%-- 
    Document   : Prestamo
    Created on : 15/06/2020, 12:57:44 PM
    Author     : ASUS
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="modelo.Prestamo"%>
<%@page import="modelo.Material_B"%>
<%@page import="java.sql.Date"%>
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
                background-image: url(imagenes/MaterialFondo.jpg);
            }
            .card{
                background-color: rgba(255,255,255,.315);
                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);
            }
        </style>
        <%
            Material_B m=new Material_B();
            LinkedList<Material_B> listaMaterial_B; 
            listaMaterial_B=m.listaMaterial();
            
            Prestamo p=new Prestamo();
            LinkedList<Prestamo> listaPrestamo; 
            listaPrestamo=p.listaPrestamo();
            
            String  CodPrestamo=request.getParameter("CodPrestamo");
            
            String CodMate_biblio="",CodLector="",FePrestamo="",FpPrestamo=null,NomMate_biblio="";
            
            for (int i=0;i<listaPrestamo.size();i++){
                if(listaPrestamo.get(i).getCodLector().equals(CodPrestamo)){
                    CodMate_biblio = listaMaterial_B.get(i).getNomMate_biblio();
                    CodLector = listaPrestamo.get(i).getCodLector();
                    FePrestamo = listaPrestamo.get(i).getFePrestamo();
                    FpPrestamo = listaPrestamo.get(i).getFpPrestamo();
                    for ( int j=0;j<listaMaterial_B.size();j++){
                        if(listaMaterial_B.get(i).getCodMate_biblio().equals(CodMate_biblio)){
                            NomMate_biblio = listaMaterial_B.get(i).getNomMate_biblio();
                        }
                    }
                    
                }
            }
        %>
    </head>
    <body><br><br>
        <div class="container justify-content-xl-center">
        <div class="row-title">
            <div class="col-12 text-center">
                <div class="container cont-title">
                    <h1 class="text-white display-4">Material Bibliografico</h1>
                </div>                
            </div>
            
        </div><br><br>
         <div class="row ">
             <span style="margin-left: 13%"></span>
            <div class="col-sm-1 col-12"></div>
                <div class="card text-white" style="width: 650px; height: 450px">
                    <div class="card-body">
                        <form name="form-material" method="post" action="procesa_material">
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                  <label>Codigo:</label>
                                  <input type="text" class="form-control" value="<%=CodPrestamo%>" name="CodPrestamo" required>
                                </div>
                                <div class="col-md-6 mb-1"></div>
                                <div class="col-md-1 mb-1">
                                <a class="boton btn btn-danger btn-sm" method="post" href="menubi.jsp">Atras</a>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-10 mb-3">
                                  <label>Titulo del libro:</label>
                                  <input type="text" class="form-control" value="<%=NomMate_biblio%>"  required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                    <label>Editorial:</label>
                                  <input type="date" class="form-control" value="<%=FpPrestamo%>" name='FpPrestamo'  required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label>Fecha de Publicacion:</label>
                                  <input type="date" class="form-control" value="<%=FePrestamo%>" name='FePrestamo' required>
                                </div>
                            </div><br>
                            <input type="submit" name="agregar_material" value="Ingresar"  class="form-control btn btn-success text white"><br><br> 
                        </form>
                    </div>
                </div>
            <div class="col-sm-1"></div>
        </div>
        </div>
    </body>
</html>
