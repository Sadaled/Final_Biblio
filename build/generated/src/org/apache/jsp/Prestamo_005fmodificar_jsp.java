package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Prestamo_005fmodificar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width-device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>Discovery Books</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                font-family: 'Fredoke One',cursive;\n");
      out.write("                background-image: url(imagenes/descarga.png);\n");
      out.write("            }\n");
      out.write("            .card{\n");
      out.write("                width: 371px;\n");
      out.write("                background-color: rgba(0,0,0,.315);\n");
      out.write("                box-shadow: 5px 8px 8px rgba(100,100,100,0.6);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body><br><br><br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-3\"></div>\n");
      out.write("            <div class=\"form-row\">\n");
      out.write("                <div class=\"card text-white\" style=\"width: 1000px\">\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <form name=\"form-prestamom\" method=\"post\" action=\"procesa_prestamo\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-4 mb-3\">\n");
      out.write("                                  <label>Codigo</label>\n");
      out.write("                                  <input type=\"text\" class=\"form-control\" name=\"CodPrestamo\" required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-7 mb-1\"></div>\n");
      out.write("                                <div class=\"col-md-1 mb-1\">\n");
      out.write("                                <a class=\"boton btn btn-danger btn-sm\" method=\"post\" href=\"Prestamo.jsp\">Atras</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-4 mb-3\">\n");
      out.write("                                  <label>Codigo Lector</label>\n");
      out.write("                                  <input type=\"text\" class=\"form-control\" name=\"CodLector\" required>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-6 mb-3\">\n");
      out.write("                                    <label>Fecha de Prestamo</label>\n");
      out.write("                                  <input type=\"date\" class=\"form-control\" name='fecha-Prestamo'  required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-2 mb-1\"></div>\n");
      out.write("                                <div class=\"col-md-3 mb-3\">\n");
      out.write("                                    <label>Fecha de Entrega</label>\n");
      out.write("                                  <input type=\"date\" class=\"form-control\" name='fecha-Entrega' required>\n");
      out.write("                                </div>\n");
      out.write("                            </div><br>\n");
      out.write("                            <input type=\"submit\" name=\"Prestamo\" value=\"Modificar\" style=\"width: 100%\" class=\"form-control btn btn-success text white\"><br><br> \n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
