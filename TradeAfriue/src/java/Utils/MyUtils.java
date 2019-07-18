/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author Zinachi Computer
 */
import beans.Admin;
import java.sql.Connection;
 
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import beans.Admin;
import beans.Customer;
import beans.ShoppingCart;
 
public class MyUtils {
 
    public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
 
    private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";
 
    // Store Connection in request attribute.
    // (Information stored only exist during requests)
    public static void storeConnection(ServletRequest request, Connection conn) {
        request.setAttribute(ATT_NAME_CONNECTION, conn);
    }
 
    // Get the Connection object has been stored in attribute of the request.
    public static Connection getStoredConnection(ServletRequest request) {
        Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
        return conn;
    }
 
    // Store user info in Session.
    public static void storeLoginedAdmin(HttpSession session, Admin loginedAdmin) {
        // On the JSP can access via ${loginedUser}
        session.setAttribute("loginedAdmin", loginedAdmin);
    }
 
    // Get the user information stored in the session.
    public static Admin getLoginedAdmin(HttpSession session) {
        Admin loginedUser = (Admin) session.getAttribute("loginedAdmin");
        return loginedUser;
    }
 
    //===================================  SESSION FROM CUSTOMER LOGIN: START  ====================================================
//    SESSION FROM CUSTOMER LOGIN          
        public static void storeLoggedInCustomer(HttpSession session, Customer loggedInUser) {
        // On the JSP can access via ${loginedUser}
        session.setAttribute("logedInUser", loggedInUser);
    }
    
        public static Customer getLoggeIndUser(HttpSession session) {
        Customer loggedInUser = (Customer) session.getAttribute("logedInUser");
        return loggedInUser;
    }


     //===================================//  SESSION FROM CUSTOMER LOGIN: END  ====================================================
        
//===================================  SESSION FROM CART SESSION: START  ====================================================
//    SESSION FROM CART SESSION          
        public static void storeCartSession(HttpSession session, ShoppingCart item) {
        // On the JSP can access via ${loginedUser}
        session.setAttribute("shoppingCart", item);
    }
    
        public static ShoppingCart getCartSession(HttpSession session) {
        ShoppingCart item = (ShoppingCart) session.getAttribute("shoppingCart");
        return item;
    }
    
//=================================== // SESSION FROM CART SESSION: END  ====================================================
    
    // Store info in Cookie
    public static void storeAdminCookie(HttpServletResponse response, Admin admin) {
        System.out.println("Store user cookie");
        Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, admin.getUsername());
        // 1 day (Converted to seconds)
        cookieUserName.setMaxAge(24 * 60 * 60);
        response.addCookie(cookieUserName);
    }
 
    public static String getUserNameInCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
 
    // Delete cookie.
    public static void deleteAdminCookie(HttpServletResponse response) {
        Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, null);
        // 0 seconds (This cookie will expire immediately)
        cookieUserName.setMaxAge(0);
        response.addCookie(cookieUserName);
    }
 
}
