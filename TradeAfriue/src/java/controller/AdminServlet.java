/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(name = "AdminServlet", urlPatterns = { "/admin"})
public class AdminServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public AdminServlet() {
       super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
 
       String page = (String) request.getParameter("page");
       
       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/admin/index.jsp");
        
       
       
       if(page !=null){
           request.setAttribute("page_name", page+".jsp");
       }
       else{
           request.setAttribute("page_name", "index.jsp");
       }
       
       
       dispatcher.forward(request, response);
      
        
       // Forward to /WEB-INF/views/homeView.jsp
       // (Users can not access directly into JSP pages placed in WEB-INF)

        
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request, response);
   }
 
}