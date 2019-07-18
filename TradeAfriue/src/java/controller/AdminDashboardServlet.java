/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Utils.MyUtils;
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet(name = "AdminDashboardServlet", urlPatterns = { "/admindashboard"})
public class AdminDashboardServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public AdminDashboardServlet() {
       super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
 
       
           HttpSession session = request.getSession();
        if (MyUtils.getLoginedAdmin(session) == null) {
   
            request.getSession(false);
         
         session.setAttribute(MyUtils.getLoginedAdmin(session).toString(), null);
         
         session.invalidate();
            
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Progma", "no-cache");
            response.setDateHeader("Expires", 0);
            // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/admin");
        } else {  
       String page = (String) request.getParameter("page");
       
       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/admin/layout.jsp");
        
      
       
       
       
       if(page !=null){
           request.setAttribute("page_name", page+".jsp");
       }
       else{
           request.setAttribute("page_name", "dashboard.jsp");
       }
       
       
       dispatcher.forward(request, response);
      
        
       // Forward to /WEB-INF/views/homeView.jsp
       // (Users can not access directly into JSP pages placed in WEB-INF)

        }   
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request, response);
   }
 
}