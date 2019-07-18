/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_sellers;

import Utils.MyUtils;
import beans.Admin;
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
@WebServlet(name = "LogOutServlet", urlPatterns = {"/LogOut"})
public class LogOutServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        System.out.println("Step 1");
            Admin admin= null ;
            HttpSession session = request.getSession();
            
          if(MyUtils.getLoginedAdmin(session) != null ){
              
              System.out.println("session 1 : " + MyUtils.getLoginedAdmin(session));
              admin = MyUtils.getLoginedAdmin(session);
           // MyUtils.storeLoginedAdmin(session, null);
 
           System.out.println("session 2 : " + admin);
            //MyUtils.storeCartSession(session, null);
            // && MyUtils.getCartSession(session) != null
          // MyUtils.storeLoginedAdmin(session, admin);
            //LogOut?session=${loginedAdmin}
            
              System.out.println(admin.toString());
        // session.removeAttribute("shoppingCart");
         session.removeAttribute(admin.toString());
         
         
         request.getSession(false);
         
         session.setAttribute(admin.toString(), null);
         
         session.invalidate();
         
           System.out.println("session after invalidating " + admin.toString()); 
          
          }
          
          response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Progma", "no-cache");
            response.setDateHeader("Expires", 0);
            
            System.out.println("step 2");
            
            response.sendRedirect(request.getContextPath() + "/admin");
      
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
