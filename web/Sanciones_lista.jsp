

<%@page import="java.util.LinkedList"%>
<%@page import="modelo.Sanciones"%>
<%@page import="controlador.autentica"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width-device-width, initial-scale=1">

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script> 

	<!-- Jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Datatables -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

	<script>
        	$(document).ready(function() {
            $('#tabla').DataTable();
	} );
            
	</script>

        <style>
            body{
                font-family: 'Fredoke One',cursive;
                background-image: url(imagenes/fondo-borroso-libros.jpg);
            }
            .table{
                background-color: rgba(0,0,0,.315);
                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);
            }
	</style>
        <title>Discovery Books</title>
    </head>
    <body><br><br><br>
        <div class="container">
            <%
                Sanciones s=new Sanciones();
                LinkedList<Sanciones> listaSanciones; 
                listaSanciones=s.listaSanciones();
            %>
            <table id="tabla" class="table table-bordered table-light table-striped">
                <thead style="background: black" class="text-white">
                    <tr>
                    <%if(autentica.Logeado.substring(0,2).equals("LE")){%>
                        <td>Codigo</td>
                        <td>Tipo</td>
                        <td>Encargado</td>
                    <%}else{%>
                        <td>Codigo</td>
                        <td>Lector</td>
                        <td>Tipo</td>
                        <td>Encargado</td>
                    <%}%>
                    </tr>
                </thead>
                <tbody style="background: rgba(162,142,168,.75)" class=" bordered">
                    <%if(autentica.Logeado.substring(0,2).equals("LE")){
                        for (int i=0;i<listaSanciones.size(); i++){%> 
                        <% if(listaSanciones.get(i).getCodLector().equals(autentica.Logeado)){ %>
                                <tr>
                                    <td><%=listaSanciones.get(i).getCod_Sancion()%></td>
                                    <td><%=listaSanciones.get(i).getCod_Sanc()%></td>
                                    <td><%=listaSanciones.get(i).getCodEncargado()%></td>
                                </tr>
                            <% } %>
                        <% } %>
                    <%}else{%>
                    <%for (int i=0;i<listaSanciones.size(); i++){%> 
                            <tr>
                                <td><%=listaSanciones.get(i).getCod_Sancion()%></td>
                                <td><%=listaSanciones.get(i).getCodLector()%></td>
                                <td><%=listaSanciones.get(i).getCod_Sanc()%></td>
                                <td><%=listaSanciones.get(i).getCodEncargado()%></td>
                            </tr>
                        <%}%>
                    <%}%>
                </tbody>
            </table>
            <div class="row">
                <span style="margin-left: 45%">
                    <%if(autentica.Logeado.substring(0,2).equals("EN")){%>
                        <a class="btn btn-danger btn-sm" method="post" href="Sanciones.jsp">Atras</a>
                    <%}else{%>
                        <a class="btn btn-danger btn-sm" method="post" href="menule.jsp">Atras</a>
                    <%}%>
                </span>
            </div>
        </div>
    </body>
</html>
