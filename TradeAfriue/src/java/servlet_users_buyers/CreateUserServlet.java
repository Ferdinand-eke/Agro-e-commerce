/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_users_buyers;

import beans.Admin;
import beans.Customer;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import dao.AdminDAO;
import dao.CustomersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import servlet_sellers.CreateAdminServlet;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "CreateUserServlet", urlPatterns = {"/CreateUserServlet"})
public class CreateUserServlet extends HttpServlet {

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
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet CreateUserServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet CreateUserServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
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
//        processRequest(request, response);


             String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String uname = request.getParameter("username");
            String pword = request.getParameter("password");
            String role="User";
            String status="Active";
            
//            Admin admin = new Admin(fname,lname,phone,email,uname,pword,role,status);
                Customer user = new Customer(fname,lname,phone,email,uname,pword,role,status);
            String errorString = null;
            String message = null;
            
        if (fname==null || lname==null || phone==null) {
            errorString = "Insert all Fields Please!";
        }
        else{
            
            if(errorString==null){
            try {
                Connection conn = getConnection();
                CustomersDAO.insertCustomer(conn, user);
                message= "User inserted successfully, please sign in!";
                ConnectionUtils.closeQuietly(conn);
            } catch (SQLException ex) {
                Logger.getLogger(CreateAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                errorString=ex.getMessage();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(CreateAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                errorString=ex.getMessage();
            }
            
            }
            
             // Store infomation to request attribute, before forward to views.
        request.setAttribute("message", message);
        request.setAttribute("errorString", errorString);
        request.setAttribute("Customer", user);
        
         // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/customers/index.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
//                RequestDispatcher dispatcher = request.getServletContext()
//                    .getRequestDispatcher("/WEB-INF/views/customers/index.jsp");
//                 dispatcher.forward(request, response);    
            request.setAttribute("message", message);
            response.sendRedirect(request.getContextPath() + "/home");
        }
    }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
