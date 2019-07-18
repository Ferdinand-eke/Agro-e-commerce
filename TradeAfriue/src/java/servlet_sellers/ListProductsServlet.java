/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_sellers;

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

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "ListProductsServlet", urlPatterns = {"/ListProducts"})
public class ListProductsServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

                    HttpSession session = request.getSession();
        if(MyUtils.getLoginedAdmin(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/admin");
        }
        else{   
 
        String errorString = null;
        String successMsg = null;
        List<Product> list = null;
        try {
            Connection conn = getConnection();
            
            list = ProductDAO.queryProduct(conn);
//            System.out.println("size: "  + list.size());
//            for(Product product: list){
//                System.out.println("id is " + product.getId());
//        }
            request.setAttribute("productList", list);
            ConnectionUtils.closeQuietly(conn);
            
//            System.out.println("step: 2");
                      if (list == null) {
                    
                    errorString = "Product details not found";
                }else{
                      successMsg= "Products currently available";
                      }
                 
        
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ListProductsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        

                    
                    // Store info in request attribute, before forward to views
//                    System.out.println("step: 3");
        request.setAttribute("errorString", errorString);
        request.setAttribute("successMsg", successMsg);
        
         
        // Forward to /WEB-INF/views/listProducts.jsp


//        System.out.println("step: 4");
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/WEB-INF/views/admin/listProducts.jsp");
        dispatcher.forward(request, response);
//        System.out.println("step: 5");
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
