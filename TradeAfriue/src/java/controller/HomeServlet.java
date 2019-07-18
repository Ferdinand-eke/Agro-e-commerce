/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.Product;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import dao.ProductDAO;
import java.io.IOException;
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
import servlet_sellers.ListProductsServlet;
import servlet_users_buyers.UserLogInServlet;
 
@WebServlet(name = "HomeServlet", urlPatterns = { "/home"})
public class HomeServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public HomeServlet() {
       super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
 

       
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
                
       
       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/index.jsp");
 
       dispatcher.forward(request, response);
      
       
       //========================================
 
        
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request, response);
   }
 
}