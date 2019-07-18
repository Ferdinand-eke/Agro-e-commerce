/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_users_buyers;

import Utils.MyUtils;
import beans.Product;
import static conn.ConnectionUtils.getConnection;
import dao.ProductDAO;
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
import servlet_sellers.UpdateproductServlet;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "productDetailsServlet", urlPatterns = {"/productDetails"})
public class productDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                                     HttpSession session = request.getSession();
        if(MyUtils.getLoggeIndUser(session) == null){
              // Redirect to login page.
              String message = "Please sign in to shop";
              request.setAttribute("message", message);
            response.sendRedirect(request.getContextPath() + "/home");
        }
        else{
        
        
         String id = (String) request.getParameter("id");
        
         System.out.println(id);
        Product product = null;
 
        String errorString = null;
 
        try {
            Connection conn = getConnection();
            product = ProductDAO.getProduct(conn, Integer.parseInt(id.trim()));
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateproductServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
 
        
        System.out.println( "product :" + product);
        // If no error.
        // The product does not exist to edit.
        // Redirect to productList page.
        if (errorString != null && product == null) {
            response.sendRedirect(request.getServletPath() + "/productDetails");
            return;
        }
 
        // Store errorString in request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("product", product);
        System.out.println(product.getName());
            
        
        
//       String page = (String) request.getParameter("page");
       
       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/sesProductDetails.jsp");
 
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
