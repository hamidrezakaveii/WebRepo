/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package messervlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Toshiba
 */
public class TraiterCommande extends HttpServlet {
   
    /***
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String nomClient =request.getParameter("nom");
        String adr =request.getParameter("adresse");
        String choix =request.getParameter("choix");
        
        String[] ingredients = request.getParameterValues("ingredients");
    
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TraiterCommande</title>");  
            out.println("</head>");
            out.println("<body>");
            out.print("<br> Voici le détail de votre commande:");
            out.println("<br>nom===>"+nomClient);
            out.println("<br>Adresse===>"+adr);
            out.println("<br>Votre choix===>"+choix);
            out.println("<br>Ingrédients en extra:");
           

            String choixing="";
            String chfr,chol,chpv;
            chfr=request.getParameter("fr");
            chol=request.getParameter("ol");
            chpv=request.getParameter("pv");
      
            if (chfr!=null)
                choixing= "<br>"+chfr;
            if (chol!=null)
                choixing+= "<br>"+chol;
            if (chpv!=null)
                choixing+= "<br>"+chpv;
            
            if (choixing=="")
                out.println("<br>aucun ingrédient");
            else
              out.println(choixing);
            out.println("</body>");
            out.println("</html>");
           
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