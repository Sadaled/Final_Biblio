package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandrodb
 */
@WebServlet(name = "procesa", urlPatterns = {"/procesa"})
public class procesa extends HttpServlet {
    public static String Logeado;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        if(request.getParameter("rusuario")!=null)
            {
                request.getRequestDispatcher("usuario_lista.jsp").forward(request, response);

            }
        
        if(request.getParameter("rcliente")!=null)
            {
                request.getRequestDispatcher("cliente_lista.jsp").forward(request, response);

            }
        
        if(request.getParameter("rvuelo")!=null)
            {
                request.getRequestDispatcher("aerolinea_lista.jsp").forward(request, response);

            }
        
    }


}
