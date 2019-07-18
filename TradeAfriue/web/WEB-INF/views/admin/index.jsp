<%@page import="Utils.MyUtils"%>
<jsp:include page="layout/_indexHeader.jsp"></jsp:include>
<%-- 
    Document   : index
    Created on : Mar 21, 2019, 11:09:00 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
		<h4 class="center-block">Welcome to Admin Portal for TradeAfrique.</h4>
		<hr />
		

		<div class="row">
                    <div class="col-xs-4">


                    </div>
                    
                    <div class="col-xs-4">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/home/main.png" class="img-responsive"
			style="width: 250px;" />
                    </div>
			<div class="col-xs-4">
<!--                            <div class="col-xs-4 col-md-offset-4"></div>-->
                                <p   style="color: red;"> <strong> ${errorString} </strong>  </p>
				<form class="form-signin" action="${pageContext.request.contextPath}/LoginServlet" method="post">
					<h2 class="form-signin-heading">Please sign in</h2>
					<div class="form-group">
						<label for="userName" class="sr-only">Username</label> <input
							type="text" class="form-control" placeholder="Username"
							name="userName" id="username" required="required"
							autofocus="autofocus" />
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">Password</label> <input
							type="password" class="form-control" placeholder="Password"
							name="password" id="password" required="required" />
					</div>
					<button class="btn btn-lg btn-default btn-block" type="submit">Sign
						In</button>
				</form>
			</div>
                    
		</div>
    </body>
</html>
