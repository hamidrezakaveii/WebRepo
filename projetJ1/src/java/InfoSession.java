/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package messervlets;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Toshiba
 */
public class InfoSession extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        HttpSession session =request.getSession();
        
        session.setAttribute("MaxInactiveInterval", request);
        session.setMaxInactiveInterval(20);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InfoSession</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InfoSession at " + request.getContextPath () + "</h1>");

            out.println("<H2>Info session:</H2>");
            out.println("<br>heure de création"+new Date(session.getCreationTime()));
            out.println("<br>ID de Session: "+session.getId());
            out.println("<br>délai d'inactivité"+session.getMaxInactiveInterval()/60);
            /*Enumeration infoses = session.getAttributeNames();
            while (infoses.hasMoreElements())
            {
                String nom=(String)infoses.nextElement();
                out.println(nom + ": " + session.getAttribute(nom) + "<BR>");

            }*/
            
            //session.invalidate();
            session.setAttribute("prenom","Marc");
            out.println("<br>Le nom niv app est "+getServletContext().getAttribute("nom"));
            out.println("<br>Le prenom niv session est "+session.getAttribute("prenom"));

            out.println("</body>");
            out.println("</html>");
            
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
