package servletscookies;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/** Servlet that says "Welcome aboard" to first-time
 *  visitors and "Welcome back" to repeat visitors.
 *  Also see RepeatVisitor2 for variation that uses
 *  cookie utilities from later in this chapter.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages 2nd Edition
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2003 Marty Hall; may be freely used or adapted.
 */

public class TestDomaine extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
  String title="test cookies";
    Cookie[] cookies = request.getCookies();
     response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String docType =
      "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
      "Transitional//EN\">\n";
    out.println(docType +
                "<HTML>\n" +
                "<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
                "<BODY BGCOLOR=\"#FDF5E6\">\n");
    if (cookies != null) {
      for(int i=0; i<cookies.length; i++) {
        Cookie c = cookies[i];
        out.println
          ("<br>" +c.getName() + "\t" + c.getValue());
        }
      }
    out.println("\n</BODY></HTML>");
    }


  }

