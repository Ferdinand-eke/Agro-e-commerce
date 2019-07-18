/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_users_buyers;

import Utils.MyUtils;
import beans.Admin;
import beans.Customer;
import beans.Product;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import dao.AdminDAO;
import dao.CustomersDAO;
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
import servlet_sellers.LoginServlet;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "UserLogInServlet", urlPatterns = {"/UserLogInServlet"})
public class UserLogInServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

      
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


            String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String rememberMeStr = request.getParameter("rememberMe");
        boolean remember = "Y".equals(rememberMeStr);
 
        Customer user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (userName == null || password == null || userName.length() == 0 || password.length() == 0) {
            hasError = true;
            errorString = "Required username and password!";
        } else {
//            Connection conn = MyUtils.getStoredConnection(request);

            try {
                // Find the user in the DB.
                Connection conn = getConnection();
                user = CustomersDAO.login(conn, userName, password);
                ConnectionUtils.closeQuietly(conn);
 
            if (user == null) {
                hasError = true;
                errorString = "User Name or password invalid";
            }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        // If error, forward to /WEB-INF/views/login.jsp
        if (hasError) {
            user = new Customer();
            user.setUsername(userName);
            user.setPassword(password);
 
            //STILL PULL DATA FROM DB
                    
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
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", user);
 
            // Forward to /WEB-INF/views/login.jsp
                        // Redirect to userInfo page.
//            response.sendRedirect(request.getContextPath() + "/home");
            
           RequestDispatcher dispatcher //
                  = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/index.jsp");
            dispatcher.forward(request, response);
        }
        // If no error
        // Store user information in Session
        // And redirect to userInfo page.
        else {
            HttpSession session = request.getSession();
            MyUtils.storeLoggedInCustomer(session, user);
            
 
            // If user checked "Remember me".
            if (remember) {
               
            }
            // Else delete cookie.
            else {
//                MyUtils.deleteAdminCookie(response);
            }
            
            
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
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", user);
                            // Forward to /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/userSession.jsp");
 
            dispatcher.forward(request, response);
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
