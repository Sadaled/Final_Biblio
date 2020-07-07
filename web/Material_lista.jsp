

<%@page import="java.util.LinkedList"%>
<%@page import="modelo.Prestamo"%>
<%@page import="modelo.Material_B"%>
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
                Material_B m=new Material_B();
                LinkedList<Material_B> listaMaterial_B; 
                listaMaterial_B=m.listaMaterial();
            %>
            <table id="tabla" class="table table-bordered table-light table-striped">
                <thead style="background: black" class="text-white">
                    <tr>
                        <td>Codigo</td>
                        <td>Nombre</td>
                        <td>Editorial</td>
                        <td>Edicion</td>
                        <td>Autor</td>
                        <td>Fecha Publicacion</td>
                        <%if(autentica.Logeado.substring(0,2).equals("BI")){%>
                            <td>Accion</td>
                        <%}%>
                    </tr>
                </thead>
                <tbody style="background: rgba(162,142,168,.75)" class=" bordered">
                    <%
                        for (int i=0;i<listaMaterial_B.size(); i++){%> 
                        <% if(listaMaterial_B.get(i).getCodEsta_mate().equals("EM00000")){ %>
                                <tr>
                                    <td><%=listaMaterial_B.get(i).getCodMate_biblio()%></td>
                                    <td><%=listaMaterial_B.get(i).getNomMate_biblio()%></td>
                                    <td><%=listaMaterial_B.get(i).getEditMate()%></td>
                                    <td><%=listaMaterial_B.get(i).getEdiMate()%></td>
                                    <td><%=listaMaterial_B.get(i).getAutMate()%></td>
                                    <td><%=listaMaterial_B.get(i).getFePMate()%></td>
                                    <%if(autentica.Logeado.substring(0,2).equals("BI")){%>
                                        <td>
                                            <a class="boton btn btn-warning btn-sm" href="Material_modificar.jsp?CodMate_biblio=<%=listaMaterial_B.get(i).getCodMate_biblio()%>">Editar</a>
                                            <a class="boton btn btn-warning btn-sm" href="Material_eliminar.jsp?CodMate_biblio=<%=listaMaterial_B.get(i).getCodMate_biblio()%>">Eliminar</a>
                                        </td>
                                    <%}%>
                                </tr>
                            <% } %>
                        <% } %>
                    <%%>
                </tbody>
            </table>
            <div class="row">
                <span style="margin-left: 45%">
                    <%if(autentica.Logeado.substring(0,2).equals("BI")){%>
                        <a class="btn btn-danger btn-sm" method="post" href="Material.jsp">Atras</a>
                    <%}else{%>
                        <a class="btn btn-danger btn-sm" method="post" href="menule.jsp">Atras</a>
                    <%}%>
                </span>
            </div>
        </div>
    </body>
</html>
