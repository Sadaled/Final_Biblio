<%-- 
    Document   : Prestamo
    Created on : 15/06/2020, 12:57:44 PM
    Author     : ASUS
--%>

<%@page import="controlador.autentica"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.Tipo_sancion"%>
<%@page import="modelo.Lector"%>
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
                background-image: url(imagenes/fondobiblio.jpg);
            }
            .card{
                background-color: rgba(0,0,0,.315);
                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);
            }
        </style>
        <%
            Tipo_sancion ts = new Tipo_sancion();
            LinkedList<Tipo_sancion> listaTipo_sancion;
            listaTipo_sancion = ts.listaTipo_sancion();
            
            Lector l=new Lector();
            LinkedList<Lector> listaLector;
            listaLector=l.listaLector();
            
        %>
    </head>
    <body><br><br><br><br>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="form-row">
                <div class="card text-white" style="width: 500px" >
                    <form name="form-prestamo" method="post" action="procesa_sancion">
                        <div class="card-header">
                            <h2 style="text-align: center">Registro de Sanciones</h2>
                        </div>
                        <div class="card-body">
                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                  <label>Codigo</label>
                                  <input type="text" class="form-control" placeholder="SA#####" name="Cod_Sancion" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label>Lector</label>
                                    <select class="form-control">
                                      <option value="">Seleccionar</option>
                                      <%for(int i=0;i<listaLector.size();i++){%>
                                          <%if(listaLector.get(i).getStaLector().equals("0")){%>
                                              <option value="<%= listaLector.get(i).getCodLector()%>"><%= listaLector.get(i).getCodLector() %></option>
                                          <%}%>
                                      <%}%>
                                  </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-5 mb-3">
                                    <label>Encargado</label>
                                    <input type="text" class="form-control" value="<%=autentica.Logeado%>" name="CodEncargado" required readonly="readonly" >
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-10 mb-4">
                                    <label>Tipo de sancion:</label>
                                    <select name="CodEsta_mate" class="form-control">
                                        <option value="">Seleccionar</option>
                                            <%for(int i=0;i<listaTipo_sancion.size();i++){%>
                                                <option value="<%= listaTipo_sancion.get(i).getCod_Sanc()%>"><%= listaTipo_sancion.get(i).getDes_Sanc()%></option>
                                            <%}%>
                                        </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-10 mb-4">
                                    <label>Observacion:</label>
                                    <textarea name="Des_Sancion" class="form-control"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="form-row">
                                <div class="col-md-1 mb-4"></div>
                                <div class="col-md-6 mb-4">
                                    <input type="submit" name="agregar_bibliotecario" value="Ingresar"  class="form-control btn btn-success">
                                </div>
                                <div class="col-md-1 mb-4"></div>
                                <div class="col-md-4 mb-4">
                                    <a class="form-control btn btn-danger btn-sm " method="post" href="menuen.jsp">Atras</a>
                                </div>    
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
