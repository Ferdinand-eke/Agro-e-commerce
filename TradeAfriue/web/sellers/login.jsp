<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : login
    Created on : May 19, 2019, 4:17:10 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<body>
	<div class="container">
		<h4 class="center-block">Welcome to Admin Portal for TradeAfrique.</h4>
		<hr />
		

		<div class="row">
                    <div class="col-xs-4">
                        <form class="form-signin" action="" method="post">
                            <h2 class="form-signin-heading">Create New Account</h2>
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label> <input
                                    type="text" class="form-control" placeholder="Username"
                                    name="username" id="username" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label> <input
                                    type="text" class="form-control" placeholder="Username"
                                    name="username" id="username" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label> <input
                                    type="text" class="form-control" placeholder="Username"
                                    name="username" id="username" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label> <input
                                    type="text" class="form-control" placeholder="Username"
                                    name="username" id="username" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="password" class="sr-only">Password</label> <input
                                    type="password" class="form-control" placeholder="Password"
                                    name="password" id="password" required="required" />
                            </div>
                            <button class="btn btn-lg btn-default btn-block" type="submit">Create
                                Account</button>
                        </form>
                    </div>
                    
                    <div class="col-xs-4">
                        <img src="../images/home/main.png" class="img-responsive"
			style="width: 250px;" />
                    </div>
			<div class="col-xs-4">
<!--                            <div class="col-xs-4 col-md-offset-4"></div>-->
				
				<form class="form-signin" action="" method="post">
					<h2 class="form-signin-heading">Please sign in</h2>
					<div class="form-group">
						<label for="username" class="sr-only">Username</label> <input
							type="text" class="form-control" placeholder="Username"
							name="username" id="username" required="required"
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
                &nbsp;
	<jsp:include page="../includes/_footer.jsp"></jsp:include>
        
        </div>

	
</body>



