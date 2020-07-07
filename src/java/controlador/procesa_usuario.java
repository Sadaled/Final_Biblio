/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.Lector;
import modelo.Bibliotecario;
import modelo.Encargado;
/**
 *
 * @author alejandrodb
 */
@WebServlet(name = "procesa_usuario", urlPatterns = {"/procesa_usuario"})
public class procesa_usuario extends HttpServlet {

   
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String CodUsuario=request.getParameter("CodUsuario");
            String PassUsuario=request.getParameter("PassUsuario");
            String DniLector =request.getParameter("DniLector");
            String NomLector =request.getParameter("NomLector");
            String ApeLector =request.getParameter("ApeLector");
            String TelLector =request.getParameter("TelLector");
            String DirLector =request.getParameter("DirLector");
            String EdadLector =request.getParameter("EdadLector");
            String StaUsuario =request.getParameter("StaUsuario");
            Usuario u=new Usuario();
            Lector l=new Lector();
            
            if(request.getParameter("agregar_lector")!=null){
                u.agregarUsuario(CodUsuario,PassUsuario, StaUsuario);
                l.agregarLector(CodUsuario,DniLector,NomLector,ApeLector,TelLector,DirLector,EdadLector,StaUsuario);
                if(autentica.Logeado.substring(0,2).equals("EN")){request.getRequestDispatcher("menuen.jsp").forward(request, response);}
                if(autentica.Logeado.substring(0,2).equals("BI")){request.getRequestDispatcher("menubi.jsp").forward(request, response);}
                else{ request.getRequestDispatcher("index.jsp").forward(request, response);}
            }
            if(request.getParameter("editar_lector")!=null)
            {
                u.agregarUsuario(CodUsuario, PassUsuario,StaUsuario);
                l.editarLector(CodUsuario, DniLector, NomLector,ApeLector,TelLector,DirLector,EdadLector,StaUsuario);
                request.getRequestDispatcher("menibi.jsp").forward(request, response);
            }
            if(request.getParameter("eliminar_lector")!=null)
            {   
                u.eliminarUsuario(CodUsuario, PassUsuario,StaUsuario);
                l.eliminarLector(CodUsuario);
                request.getRequestDispatcher("menibi.jsp").forward(request, response);
            }
        }
    }
    }

