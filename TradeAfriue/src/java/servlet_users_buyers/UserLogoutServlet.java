/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_users_buyers;

import Utils.MyUtils;
import beans.Admin;
import beans.Customer;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "UserLogoutServlet", urlPatterns = {"/UserLogout"})
public class UserLogoutServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
          
        
        
       
        Customer user ;
            HttpSession session = request.getSession();
            
          if(MyUtils.getLoggeIndUser(session) != null ){
              user = MyUtils.getLoggeIndUser(session);
           // MyUtils.storeLoginedAdmin(session, null);
 
            //MyUtils.storeCartSession(session, null);
            // && MyUtils.getCartSession(session) != null
          // MyUtils.storeLoginedAdmin(session, admin);
            
              System.out.println(user.toString());
        // session.removeAttribute("shoppingCart");
         session.removeAttribute(user.toString());
         
         request.getSession(false);
         
         session.setAttribute(user.toString(), null);
         
         session.invalidate();
         
           System.out.println("session after invalidating " + user.toString()); 
          
          }
          
           response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Progma", "no-cache");
            response.setDateHeader("Expires", 0);
            
            response.sendRedirect(request.getContextPath() + "/home");
        
        
    }


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
