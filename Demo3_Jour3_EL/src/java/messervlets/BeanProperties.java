package messervlets;

/** Servlet that creates some beans whose properties will
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
import mesbeans.*;

public class BeanProperties extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {

    NameBean name = new NameBean("Marty", "Hall");
    
    CompanyBean company =
      new CompanyBean("coreservlets.com", 
                      "J2EE Training and Consulting");

    EmployeeBean employee = new EmployeeBean(name, company);

    request.setAttribute("employee", employee);

    RequestDispatcher dispatcher =
      request.getRequestDispatcher("/bean-properties.jsp");
    dispatcher.forward(request, response);
  }
}
