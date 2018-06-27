/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import DAO.DAO_Temp2;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HAMIDREZA
 */
public class DaoAccess extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DaoAccess</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DaoAccess at " + DAO.DAO_Temp2.afficher() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("this is servlet");

//          int employeeId=Integer.parseInt(request.getParameter("id").trim());
//          String employeeName=request.getParameter("name").trim();
//          int salary=Integer.parseInt(request.getParameter("salary").trim());
        //DAO_Temp2 dao=new DAO_Temp2(); 
        //boolean b=dao.saveDetails(employeeId, employeeName, salary);
        String result = DAO_Temp2.afficher();
        //System.out.println( DriverManager.getDriver("jdbc:derby:"). getClass());
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet DaoAccess</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Record: " + result + "</h1>");
        out.println("</body>");
        out.println("</html>");

        /*if(b==true)
         {
           out.println("<h1>Employee details sucessfully saved.</h1>");
            
         }
          
         else
         {
             out.println("<h1>Employee details already existed.</h1>"); 
         }*/
        out.println("");
        out.close();
    }

}
