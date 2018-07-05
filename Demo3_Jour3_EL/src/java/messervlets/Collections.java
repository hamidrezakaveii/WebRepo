package messervlets;

import java.util.*;

/** Servlet that creates some collections whose elements will
 *  be displayed with the JSP 2.0 expression language.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages 2nd Edition
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2003 Marty Hall; may be freely used or adapted.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Collections extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
    String[] firstNames = { "Bill", "Scott", "Larry" };
    
    ArrayList lastNames = new ArrayList();
    
    lastNames.add("Ellison");
    lastNames.add("Gates");
    lastNames.add("McNealy");
    
    HashMap companyNames = new HashMap();
    companyNames.put("Ellison", "Sun");
    companyNames.put("Gates", "Oracle");
    companyNames.put("McNealy", "Microsoft");
    
    request.setAttribute("first", firstNames); 
    request.setAttribute("last", lastNames);
    
    request.setAttribute("company", companyNames);
    
    RequestDispatcher dispatcher =
      request.getRequestDispatcher("/collections.jsp");
    dispatcher.forward(request, response);
  }
}
