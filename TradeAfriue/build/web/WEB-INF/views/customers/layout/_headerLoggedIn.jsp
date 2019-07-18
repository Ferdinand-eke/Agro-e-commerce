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
                                            <a href="${pageContext.request.contextPath}/UserBoard"><img src="${pageContext.request.contextPath}/resources/assets/images/home/main.png" alt=""  height="50" width="50"/></a>
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

                                                <div>

                                                    <ul class="nav navbar-nav navbar-right">
<!--                                                        <li><a href="${pageContext.request.contextPath}/checkout"><i class="fa fa-crosshairs"></i> Checkout</a></li>-->
                                                        
                                                        <li><a href="${pageContext.request.contextPath}/LoggedInCart"><i class="fa fa-shopping-cart"></i> Cart<span class="badge">${shoppingCart.getCartItems().size()}</span></a></li>
                                                        
                                                        <li><a href="" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Hello <span>${logedInUser.firstName}</span></a>
                                                            <ul class="dropdown-menu">
                                                                <div style="width: 300px;">
                                                                    <div class="panel panel-primary">
                                                                        <div class="panel-heading">

                                                                            <a href="${pageContext.request.contextPath}/UserLogout" style="color: white; list-style: none;">Log Out</a>
                                                                            <br>
                                                                            <br>
                                                                            <a href="${pageContext.request.contextPath}/Profile" style="color: white; list-style: none;">User Settings</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </ul>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                        </div>
                </div>
        </div><!--/header-middle-->

        <div class="header-bottom"><!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
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
                                    <li><a href="${pageContext.request.contextPath}/UserBoard"><span class="active glyphicon glyphicon-home"></span>Shop</a></li>

                                </ul>
                                
<!--                                <li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="">Products</a></li>
                                        <li><a href="">Product Details</a></li> 
                                        <li><a href="">Checkout</a></li> 
                                        <li><a href="">Cart</a></li> 
                                        <li><a href="">Login</a></li> 
                                    </ul>
                                </li> 
                                <li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="">Blog List</a></li>
                                        <li><a href="">Blog Single</a></li>
                                    </ul>
                                </li> 
                                <li><a href="">404</a></li>-->
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right">
                            <form action="${pageContext.request.contextPath}/UserBoard" method="post">
                                <input type="text" placeholder="Search"/>
                                <button  class="btn btn-warning" id="search_btn" >Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-bottom-->
</header><!--/header-->