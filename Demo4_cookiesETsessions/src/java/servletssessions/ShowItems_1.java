package servletssessions;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

/** Servlet that displays a list of items being ordered.
 *  Accumulates them in an ArrayList with no attempt at
 *  detecting repeated items. Used to demonstrate basic
 *  session tracking. Updated to Java 5.
 *  <P>
 *  Taken from Core Servlets and JavaServer Pages 2nd Edition
 *  from Prentice Hall and Sun Microsystems Press,
 *  http://www.coreservlets.com/.
 *  &copy; 2003 Marty Hall; may be freely used or adapted.
 */


public class ShowItems_1 extends HttpServlet {
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession session = request.getSession();
    ArrayList<String> previousItems =
      (ArrayList<String>)session.getAttribute("previousItems");
    if (previousItems == null) {
      previousItems = new ArrayList<String>();
    session.setAttribute("previousItems", previousItems);
    }

    //cet exemple ne vérifie pas si l'article a dejà été commandé
    String newItem = request.getParameter("newItem");
    if ((newItem != null) &&
        (!newItem.trim().equals(""))) {
      previousItems.add(newItem);
    }
     session.setAttribute("previousItems", previousItems);

String destination ="/afficherPanier.jsp";
RequestDispatcher dispatcher = request.getRequestDispatcher(destination);
   dispatcher.forward( request, response );
  }
}
