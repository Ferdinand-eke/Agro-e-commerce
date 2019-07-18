/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Utils.MyUtils;
import beans.Product;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlet_users_buyers.UserLogInServlet;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "UserBoardServlet", urlPatterns = {"/UserBoard"})
public class UserBoardServlet extends HttpServlet {

 
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

                             HttpSession session = request.getSession();
        if(MyUtils.getLoggeIndUser(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/home");
        }
        else{
            
        //String page = (String) request.getParameter("page");
       
       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/userSession.jsp");
        
       
       
//       if(page !=null){
//           request.setAttribute("page_name", page+".jsp");
//       }
//       else{
//           request.setAttribute("page_name", "index.jsp");
//       }
       
       
//       dispatcher.forward(request, response);


        List<Product> list = null;
            Connection conn;
                try {
                    conn = getConnection();
                     list = ProductDAO.UserqueryProduct(conn);
                     
                      request.setAttribute("productListUSession", list);
            ConnectionUtils.closeQuietly(conn);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserLogInServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserLogInServlet.class.getName()).log(Level.SEVERE, null, ex);
                }

                            // Store information in request attribute, before forward.
//            request.setAttribute("errorString", errorString);
//            request.setAttribute("user", user);
                            // Forward to /WEB-INF/views/login.jsp
             dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/userSession.jsp");
 
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
