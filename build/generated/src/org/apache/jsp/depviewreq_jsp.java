package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.info.model.Problem;
import java.sql.*;

public final class depviewreq_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("    function submitForm(action)\n");
      out.write("    {\n");
      out.write("        document.getElementById('columnarForm').action = action;\n");
      out.write("        document.getElementById('columnarForm').submit();\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            int id = Integer.parseInt(request.getParameter("pid"));
            String problem= request.getParameter("pname");
            String pdescrip=request.getParameter("pdes");
            String pdep=request.getParameter("dep");
            
          Class.forName("com.mysql.jdbc.Driver");
            
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sairam","root","");
           

    
    try{
            
            String qry= "SELECT * FROM problem WHERE Pid =? AND status = ? ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setInt(1,id);
            pst.setInt(2,2);
            
            ResultSet rs = pst.executeQuery();
                while(rs.next()){
            


                
      out.write(" \n");
      out.write("                \n");
      out.write("                <form action=\"postresponse.jsp\" method=\"post\">     \n");
      out.write("                    Request: <input type=\"text\" name=\"pname\" value=\"");
      out.print(rs.getString("Pname"));
      out.write("\"  style=\"width: 60%;\"><br><br>\n");
      out.write("                    Request description: <input type=\"text\" name=\"pdes\" value=\"");
      out.print(rs.getString("Pdescription"));
      out.write("\"  style=\"width: 60%;\"><br><br>\n");
      out.write("                    Department: <input type=\"text\" name=\"dep\" value=\"");
      out.print(rs.getString("Department"));
      out.write("\"  style=\"width: 60%;\"><br><br>\n");
      out.write("                                                      \n");
      out.write("                    <input type=\"hidden\" name=\"id1\" value=\"");
      out.print( id );
      out.write("\">\n");
      out.write("                    <input type=\"hidden\" name=\"pname1\" value=\"");
      out.print( problem );
      out.write("\">\n");
      out.write("                    <input type=\"hidden\" name=\"pdes1\" value=\"");
      out.print( pdescrip );
      out.write("\">\n");
      out.write("                    <input type=\"hidden\" name=\"pdep1\" value=\"");
      out.print( pdep );
      out.write("\">\n");
      out.write("                    \n");
      out.write("                    <input type=\"submit\" name=\"Post Response\" value=\"Post Response\">\n");
      out.write("                   \n");
      out.write("                </form>    \n");
      out.write("                    \n");
      out.write("                                 \n");
      out.write("                  \n");
      out.write("    <div id=\"columnarForm\"></div>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        ");

                  }
            
        }
               
                            
        catch(Exception e){
            
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }
 
        
        
      out.write("\n");
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
