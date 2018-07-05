package messervlets;

/** Servlet that creates some scoped variables (objects stored
 *  as attributes in one of the standard locations). Forwards
 *  to a JSP page that uses the expression language to
 *  display the values.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages 2nd Edition
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2003 Marty Hall; may be freely used or adapted.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ScopedVars extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
      
      

    request.setAttribute("attribute1", "First Value");
    //acceder de la session
    HttpSession session = request.getSession();
    
    session.setAttribute("attribute2", "Second Value");

    ServletContext application = getServletContext();
    
    //application definition
    application.setAttribute("attribute3",
                             new java.util.Date());

    
    request.setAttribute("repeated", "Request");
    
    session.setAttribute("repeated", "Session");
    
    application.setAttribute("repeated", "Application");

    RequestDispatcher dispatcher =
      request.getRequestDispatcher("/scoped-vars.jsp");
    dispatcher.forward(request, response);
  }
}
