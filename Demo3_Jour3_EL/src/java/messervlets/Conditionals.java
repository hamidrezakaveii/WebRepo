package messervlets;

/** Servlet that creates scoped variables that will be used
 *  to illustrate the EL conditional operator (xxx ? xxx : xxx).
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages 2nd Edition
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2003 Marty Hall; may be freely used or adapted.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import mesbeans.SalesBean;

public class Conditionals extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
    SalesBean apples =
      new SalesBean(150.25, -75.25, 22.25, -33.57);
    
    SalesBean oranges =
      new SalesBean(-220.25, -49.57, 138.25, 12.25);
    
    request.setAttribute("apples", apples);
    request.setAttribute("oranges", oranges);
    
    RequestDispatcher dispatcher =
      request.getRequestDispatcher("/conditionals.jsp");
    dispatcher.forward(request, response);
  }
}
