<%-- 
    Document   : productDetails
    Created on : May 19, 2019, 1:29:09 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>TradeAfrique</title>
        <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/prettyPhoto.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/price-range.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/animate.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/main.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/assets/css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> +234 803 5868983</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> eke.benedictwitto@gmail.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/resources/assets/images/home/main.png" alt=""  height="50" width="50"/></a>
                            </div>
                            <div class="btn-group pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        Nigeria
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">SA</a></li>
                                        <li><a href="#">Egypt</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        Naira
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">DOLLAR</a></li>
                                        <li><a href="#">Canadian Dollar</a></li>
                                        <li><a href="#">Pound</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                                                        <div class="shop-menu pull-right">
                                                            <ul class="nav navbar-nav">
                            
                                                  
                                                                <li><a href="${pageContext.request.contextPath}/Cart"><i class="fa fa-shopping-cart"></i> Cart<span class="badge">0</span></a></li>
                                                                <li  data-toggle="modal" data-target="#myModal"><a href=""><span class="glyphicon glyphicon-user" ></span>SignUp</a></li>
<!--                                                                <li class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModal"><a href=""><i class="fa fa-lock"></i> Login:Register</a></li>-->
                                                            </ul>
                                                        </div>
                            <div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row input-group-sm">
                        <div class="col-sm-6">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <ul class="nav navbar-nav">
                                        <li><a href="${pageContext.request.contextPath}/home" class="active"><span class="glyphicon glyphicon-home"></span>Shop</a></li>
                                    </ul>
                                    <li><a href="#">Contact</a></li>
                                    
                                </ul>
                            </div>
                        </div>
                                <div class="col-sm-6">
                                    <p style="color: greenyellow;">${message}</p>
                        <div class="mainmenu pull-rigt" style="padding: -30px">
                            <form action="${pageContext.request.contextPath}/UserLogInServlet" method="post" style="inline-box-align: 10;" class="mainmenu pull-rigt"> 
                            <p   style="color: red;"> <strong> ${errorString} </strong>  </p>
<!--                            <span>-->
                                <div class="col-sm-5">


                                    <div class="input-sm">
                                        <div class="form-group" inline>
                                            <input
                                                type="text" class="form-control" placeholder="Username"
                                                name="userName" id="username" required="required"
                                                autofocus="autofocus"/>
                                        </div>
                                    </div> 


                                </div>
<!--                            </span>-->
<!--                            <span style="padding-top: 100px;">                  -->
                                <div class="col-sm-5" style="inline-box-align: 2;">
                                    <div class="input-sm ">
                                        <div class="form-group" inline>
                                            
                                            
                                            <input
                                                type="password" class="form-control" placeholder="Password"
                                                name="password" id="password" required="required"
                                                autofocus="autofocus"/>
                                        </div>
                                    </div>
                                </div>
<!--                            </span>-->
                            <div class="col-sm-2" >
                                <div class="form-group" inline>
                                    <button class="btn btn-sm btn-warning " type="submit" s>Sign In</button>		
                                </div>
                            </div>
                        </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->

            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Account</h4>
                        </div>
                        <div class="modal-body">
                            <div class="category-tab shop-details-tab"><!--category-tab-->
                                <div class="col-sm-12">
                                    <ul class="nav nav-tabs">

                                        <li class="active"><a href="#register" data-toggle="tab">Register</a></li>
<!--                                        <li ><a href="#login" data-toggle="tab">Login</a></li>-->
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <!--                                    create a new account if you have none-->

                                    <div class="tab-pane fade active in " id="register" >
                                        <h2>Create a User Account</h2>

                                        <form class="form-signin" action="${pageContext.request.contextPath}/CreateUserServlet" method="post">
                                            <!--                                            <h2 class="form-signin-heading">Create New Account</h2>-->
                                            <div class="form-group">
                                                <label for="First Name" class="sr-only">First Name</label> <input
                                                    type="text" class="form-control" placeholder="First Name"
                                                    name="fname" id="fname" required="required"
                                                    autofocus="autofocus" />
                                            </div>
                                            <div class="form-group">
                                                <label for="username" class="sr-only">Last Name</label> <input
                                                    type="text" class="form-control" placeholder="Last Name"
                                                    name="lname" id="lname" required="required"
                                                    autofocus="autofocus" />
                                            </div>
                                            <div class="form-group">
                                                <label for="phone" class="sr-only">Phone</label> <input
                                                    type="text" class="form-control" placeholder="Phone"
                                                    name="phone" id="phone" required="required" />
                                            </div>
                                            <div class="form-group">
                                                <label for="email" class="sr-only">E-mail</label> <input
                                                    type="email" class="form-control" placeholder="E-mail"
                                                    name="email" id="email" required="required"
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
                                                    name="password" id="password" required="required"
                                                    autofocus="autofocus" />
                                            </div>

                                            <button class="btn btn-lg btn-warning btn-block" type="submit">Create
                                                Account</button>
                                        </form>
                                    </div>

                                    <!--                                            login into user account-->

                                    <div class="tab-pane " id="login" >
                                        <div class="col-sm-12">
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

                                </div>
                            </div><!--/category-tab-->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

        </header><!--/header-->