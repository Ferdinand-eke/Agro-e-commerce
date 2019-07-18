/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_users_buyers;

import Utils.MyUtils;
import beans.CartItem;
import beans.Product;
import beans.ShoppingCart;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import dao.CartDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlet_sellers.CreateAdminServlet;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "AddToCartServlet", urlPatterns = {"/AddToCartServlet"})
public class AddToCartServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                                     HttpSession session = request.getSession();
        if(MyUtils.getLoggeIndUser(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/home");
        }
        else{
        
        String strProdId = (String) request.getParameter("prodId");
        String strQty = (String) request.getParameter("quantity");

        String errorString = null;
        String message = null;

        if (strQty == null) {
            errorString = "No quantity available!";
            request.setAttribute("errorString", errorString);
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/sesProductDetails.jsp");
            dispatcher.forward(request, response);
        } else {

            try {
                    Connection conn = getConnection();
//                    HttpSession session = request.getSession();

                    CartItem item = new CartItem();

                    int prodId = Integer.parseInt(strProdId);
                    float qty = Float.parseFloat(strQty);
                    item.setQuantity(qty);
                    Product product = new Product();
                    product.setId(prodId);
                    item.setProduct(product);
                    if (MyUtils.getCartSession(session) == null) {
                        ShoppingCart shoppingcart = new ShoppingCart();
                        long time = System.nanoTime();
//                        System.out.println("id is : " + MyUtils.getLoggeIndUser(session).getId());
                        String cartId = time + "" + MyUtils.getLoggeIndUser(session).getId();
                        shoppingcart.setId(cartId);
                        shoppingcart.setCustomerId(MyUtils.getLoggeIndUser(session).getId());
                        shoppingcart.setStatus("ACTIVE");
                        
                        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
                        String strDate = format.format(new Date());
                        Date date = format.parse(strDate);
                        
                        shoppingcart.setCreated(date);
                        
                        String result = CartDAO.insertShoppingCart(conn, shoppingcart);
                        if (result.equals("SUCCESS")) {
                            item.setCustomerCartId(cartId);

                            result = CartDAO.insertCartItem(conn, item);
                            if (result.equals("SUCCESS")) {
                                message = "product added!";
                                MyUtils.storeCartSession(session, CartDAO.getShoppingCart(conn, cartId));
                               // Store infomation to request attribute, before forward to views.
                               request.setAttribute("message", message);
//                               ConnectionUtils.closeQuietly(conn);
                               //redirect to check out page
                            response.sendRedirect(request.getContextPath() + "/LoggedInCart");
//                            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/cartLoggedIn.jsp");
//                            dispatcher.forward(request, response);
                            } else {
                                errorString = "DB Error!";
                            request.setAttribute("errorString", errorString);
                            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/sesProductDetails.jsp");
                            dispatcher.forward(request, response);
                            }
                            ConnectionUtils.closeQuietly(conn);
                        } else {
                            errorString = "DB Error!";
                            request.setAttribute("errorString", errorString);
                            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/sesProductDetails.jsp");
                            dispatcher.forward(request, response);
                        }
                    } else {
                        ShoppingCart shoppingcart = MyUtils.getCartSession(session);
                        item.setCustomerCartId(shoppingcart.getId());
//                        if(){
//                            

//                        }
//                        else{
//                            
//                        }
                        String result = CartDAO.insertCartItem(conn, item);
//                        ConnectionUtils.closeQuietly(conn);
                        if (result.equals("SUCCESS") ) {
                            
                            message = "product added!";
                            request.setAttribute("message", message);
                            MyUtils.storeCartSession(session, CartDAO.getShoppingCart(conn, shoppingcart.getId()));
                            //check if product has already been added to cart
                            //redirect to check out page
//                            response.sendRedirect(request.getContextPath() + "/LoggedInCart");
                            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/cartLoggedIn.jsp");
                            dispatcher.forward(request, response);
                            
                        } else {
                           errorString = "DB Error!";
                            request.setAttribute("errorString", errorString);
                            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/sesProductDetails.jsp");
                            dispatcher.forward(request, response);
                        }
                    }

                    
                } catch (NumberFormatException | SQLException | ClassNotFoundException  ex) {
                    Logger.getLogger(CreateAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
                    errorString = ex.getMessage();
                } catch (ParseException ex) {
                    Logger.getLogger(AddToCartServlet.class.getName()).log(Level.SEVERE, null, ex);
                    errorString = ex.getMessage();
                } 
//                request.setAttribute("errorString", errorString);
//                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/sesProductDetails.jsp");
//                dispatcher.forward(request, response);
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
