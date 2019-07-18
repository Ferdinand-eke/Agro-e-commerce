/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_sellers;

import Utils.MyUtils;
import beans.Admin;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import dao.AdminDAO;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "CreateAdmin", urlPatterns = {"/CreateAdmin"})
public class CreateAdminServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                          HttpSession session = request.getSession();
        if(MyUtils.getLoginedAdmin(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/admin");
        }
        else{
        
                RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/admin/createAdmin.jsp");
 
        dispatcher.forward(request, response);
        }
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
        //processRequest(request, response);
        
                          HttpSession session = request.getSession();
        if(MyUtils.getLoginedAdmin(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/admin");
        }
        else{
        
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String uname = request.getParameter("username");
            String pword = request.getParameter("password");
            String role="Admin";
            String status="Active";
            
            Admin admin = new Admin(fname,lname,phone,email,uname,pword,role,status);
            String errorString = null;
            String message = null;
            
        if (fname==null || lname==null || phone==null) {
            errorString = "Insert all Fields Please!";
        }
        else{
            
            if(errorString==null){
            try {
                Connection conn = getConnection();
                AdminDAO.insertAdmim(conn, admin);
                message= "Admin inserted successfully!";
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
        request.setAttribute("Admin", admin);
        
         // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/admin/createAdmin.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
                RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/admin/createAdmin.jsp");
                 dispatcher.forward(request, response);      
//            response.sendRedirect(request.getContextPath() + "/admin");
        }
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
