package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"registro.css\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1>BELLES | LETRES</h1>\n");
      out.write("        \n");
      out.write("        <div class = \"menu\">\n");
      out.write("            \n");
      out.write("            <form id=\"formLogin\" action=\"Login\" method=\"POST\">\n");
      out.write("                <table border = 0>\n");
      out.write("                    \n");
      out.write("            <tr id=\"tr1\"> \n");
      out.write("             <td class =\"txt\" id = \"txtCat\">Você é: </td>\n");
      out.write("             <td id = \"inputCat\" >\n");
      out.write("                 \n");
      out.write("                 <select name=\"categoria\" id=\"categorias\">\n");
      out.write("                     \n");
      out.write("                 <option value=\"blank\">...</option>    \n");
      out.write("                 <option value=\"cliente\">Cliente</option>\n");
      out.write("                 <option value=\"fornecedor\">Fornecedor</option>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                </select>\n");
      out.write("                 \n");
      out.write("             </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr class = \"resto\" id = \"tr2\">\n");
      out.write("            <td class = \"txt\" id = \"txtLogin\">Teste</td>\n");
      out.write("            <td id = \"inputLogin\" ><input type=\"text\" name=\"login\"/></td>    \n");
      out.write("            </tr>\n");
      out.write("                    \n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            <script>\n");
      out.write("              let limit = document.getElementsByClassName(\"resto\").length - 1;\n");
      out.write("              for(let i = 0; i < limit; i++){\n");
      out.write("              document.getElementsByClassName(\"resto\")[i].style.visibility=\"hidden\";\n");
      out.write("          }\n");
      out.write("            </script> \n");
      out.write("            \n");
      out.write("        </div> \n");
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
