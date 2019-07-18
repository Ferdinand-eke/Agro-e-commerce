<%@page import="Utils.MyUtils"%>
<jsp:include page="layout/_headerLoggedIn.jsp"></jsp:include>
<%-- 
    Document   : index
    Created on : Mar 21, 2019, 11:09:00 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

                                  
        if(MyUtils.getLoggeIndUser(session) == null){
              // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/home");
        }
        else{
        MyUtils.getLoggeIndUser(session).toString();
        }

    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
		<h4 class="center-block">Are you sure of logging out.</h4>
		<hr />
		

		<div class="row">
                    <div class="col-xs-4">


                    </div>
                    
                    <div class="col-xs-4">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/home/main.png" class="img-responsive"
			style="width: 250px;" />
                    </div>
			<div class="col-xs-4">
                            <%
                                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                                response.setHeader("Progma", "no-cache");
                                response.setDateHeader("Expires", 0);
                            %>
                            <a href="${pageContext.request.contextPath}/UserBoard"><button type="submit">No Logout</button></a>
                            <a href="${pageContext.request.contextPath}/UserLogout"><button type="submit">Logout</button></a>
			</div>
                    
		</div>
    </body>
</html>
