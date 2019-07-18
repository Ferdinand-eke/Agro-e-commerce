/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_users_buyers;

import Utils.MyUtils;
import beans.Order;
import beans.OrderBillingAddress;
import beans.OrderPaymentInfo;
import beans.OrderShippingAddress;
import beans.ShoppingCart;
import static conn.ConnectionUtils.getConnection;
import dao.CheckOutDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "CheckOutServlet", urlPatterns = {"/checkout"})
public class CheckOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                                    HttpSession session = request.getSession();
        if(MyUtils.getLoggeIndUser(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/home");
        }
        else{ 
        
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/checkOut.jsp");
        
      
        dispatcher.forward(request, response);
    }
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

//      Data for order beans
        String shpMethod = (String) request.getParameter("shippingMethod");
        String orderTotal = (String) request.getParameter("total");
        
//      Data for OrderShippingAddress beans 
//=============================================
        String shpAddName = (String) request.getParameter("shippingAddressName");
        String shpAdd1 = (String) request.getParameter("shippingAddressStreet1");
        String shpAdd2 = (String) request.getParameter("shippingAddressStreet2");

        String shpAddCity = (String) request.getParameter("shippingAddressCity");
        String shpAddCountry = (String) request.getParameter("shippingAddressState");
        String shpAddZipCode = (String) request.getParameter("shippingAddressZipcode");

//================================================

//    Data for OrderPaymentInfo beans  
//================================================
        String cardType = (String) request.getParameter("type");
        String cardHolderName = (String) request.getParameter("holderName");
        String cardNumber = (String) request.getParameter("cardNumber");

        String exiryMonth = (String) request.getParameter("expiryMonth");
        String expiryYear = (String) request.getParameter("expiryYear");
        String cardCVC = (String) request.getParameter("cvc");
//================================================

//      Data for OrderBillingAddress beans
//================================================

        String blAddName = (String) request.getParameter("billingAddressName");
        String blAdd1 = (String) request.getParameter("billingAddressStreet1");
        String blAdd2 = (String) request.getParameter("billingAddressStreet2");

        String blAddCity = (String) request.getParameter("billingAddressCity");
        String blAddCountry = (String) request.getParameter("billingAddressState");
        String blAddZipCode = (String) request.getParameter("billingAddressZipcode");

//================================================
        
        String errorString = null;
        String message = null;
        
        //HttpSession session = request.getSession();
        
        
        
        try {
            
            
            
                       
            
            if (MyUtils.getCartSession(session) != null){
                System.out.println("step 0");
                
                
                //ORDER DML    
                String OrderId = MyUtils.getCartSession(session).getId();
                //System.out.println(id);
                
                //int OrderId = 123; //Integer.parseInt(id);
                double oderTtal = Double.parseDouble(orderTotal);
                 System.out.println("ceck 1");      
                Order od = new Order();
                od.setId(OrderId);
                
                        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
                        String strDate = format.format(new Date());
                        Date date = format.parse(strDate);
                od.setOrderDate(date);
                od.setOrderStatus("PENDING");
                od.setOrderTotal(oderTtal);
                od.setShippingMethod(shpMethod);
                od.setUserId((MyUtils.getLoggeIndUser(session).getId()));
                
                 //OREDR SHIPPING ADDRESS DML
                OrderShippingAddress osa = new OrderShippingAddress();
                    osa.setOrderid(OrderId);
                    osa.setOrderShippingName(shpAddName);
                    osa.setOrderShippingStreet1(shpAdd1);
                    osa.setOrderShippingStreet2(shpAdd2);
                    osa.setOrderShippingCity(shpAddCity);
                    osa.setOrderShippingCountry(shpAddCountry);
                    osa.setOrderShippingZipCode(shpAddZipCode);
   
                //OREDR Payment Info DML
                OrderPaymentInfo op = new OrderPaymentInfo();

                    op.setCardType(cardType);
                    op.setCardName(cardHolderName);
                    op.setCardNumber(cardNumber);

                    int expmnth = Integer.parseInt(exiryMonth);
                    int expYr = Integer.parseInt(expiryYear);
                    int cvc = Integer.parseInt(cardCVC);

                    op.setExpiryMonth(expmnth);
                    op.setExpiryYear(expYr);
                    op.setCvc(cvc);
                    
                //OREDR BILLING ADDRESS  DML
                OrderBillingAddress oba = new OrderBillingAddress();
                oba.setOrderBillingName(blAddName);
                oba.setOrderBillingStreet1(blAdd1);
                oba.setOrderBillingStreet2(blAdd2);
                oba.setOrderBillingCity(blAddCity);
                oba.setOrderBillingCountry(blAddCountry);
                oba.setOrderBillingZipCode(blAddZipCode);
                
                System.out.println("step 3:");
                
                //Shopping cart  DML
               ShoppingCart cart = new ShoppingCart();
               cart.setStatus("CHECKEDOUT");
                cart.setId(MyUtils.getCartSession(session).getId());
                
//                //, cart
                
                Connection conn = getConnection();
                
                String result = CheckOutDAO.checkOut(conn, od, osa, op, oba);
                
                System.out.println("step 4");
                
                    if(result.equals("SUCCESS")){
                        
//                        MyUtils.storeLoginedAdmin(session, null);
                        MyUtils.storeCartSession(session, null);
                        MyUtils.getCartSession(session).setCartItems(null);
                        
                        System.out.println(MyUtils.getCartSession(session));
                        
                         session.removeAttribute("shoppingCart");
                         
                         session.setAttribute("shoppingCart", null);
                        //System.out.println(MyUtils.getCartSession(session));
                         System.out.println("step 5");
                         message= "Your order has been placed. Thank you for shopping at TradeAfrique";
                        request.setAttribute("message", message);
                        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/success.jsp");
                        dispatcher.forward(request, response);
                    }
            }else{
                errorString= "You do not have products availble in your cart";
                request.setAttribute("errorString", errorString);
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/customers/cartLoggedIn.jsp");
                dispatcher.forward(request, response);
            }
           
            
            
        } catch (Exception e ) {
            errorString = e.getMessage();
            
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
