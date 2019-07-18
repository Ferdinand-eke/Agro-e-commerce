<jsp:include page="../includes/_header.jsp"></jsp:include>


<%-- 
    Document   : _sideMenu
    Created on : May 19, 2019, 1:58:35 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<section>
        <div class="container">
                <div class="row">
                        <div class="col-sm-3">
                                <div class="left-sidebar">
                                        <h2>Category</h2>
                                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                        <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                                                Sportswear
                                                                        </a>
                                                                </h4>
                                                        </div>
                                                        <div id="sportswear" class="panel-collapse collapse">
                                                                <div class="panel-body">
                                                                        <ul>
                                                                                <li><a href="#">Nike </a></li>
                                                                                <li><a href="#">Under Armour </a></li>
                                                                                <li><a href="#">Adidas </a></li>
                                                                                <li><a href="#">Puma</a></li>
                                                                                <li><a href="#">ASICS </a></li>
                                                                        </ul>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                        <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                                                Mens
                                                                        </a>
                                                                </h4>
                                                        </div>
                                                        <div id="mens" class="panel-collapse collapse">
                                                                <div class="panel-body">
                                                                        <ul>
                                                                                <li><a href="#">Fendi</a></li>
                                                                                <li><a href="#">Guess</a></li>
                                                                                <li><a href="#">Valentino</a></li>
                                                                                <li><a href="#">Dior</a></li>
                                                                                <li><a href="#">Versace</a></li>
                                                                                <li><a href="#">Armani</a></li>
                                                                                <li><a href="#">Prada</a></li>
                                                                                <li><a href="#">Dolce and Gabbana</a></li>
                                                                                <li><a href="#">Chanel</a></li>
                                                                                <li><a href="#">Gucci</a></li>
                                                                        </ul>
                                                                </div>
                                                        </div>
                                                </div>

                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                        <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                                                Womens
                                                                        </a>
                                                                </h4>
                                                        </div>
                                                        <div id="womens" class="panel-collapse collapse">
                                                                <div class="panel-body">
                                                                        <ul>
                                                                                <li><a href="#">Fendi</a></li>
                                                                                <li><a href="#">Guess</a></li>
                                                                                <li><a href="#">Valentino</a></li>
                                                                                <li><a href="#">Dior</a></li>
                                                                                <li><a href="#">Versace</a></li>
                                                                        </ul>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Kids</a></h4>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Fashion</a></h4>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Households</a></h4>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Interiors</a></h4>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Clothing</a></h4>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Bags</a></h4>
                                                        </div>
                                                </div>
                                                <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                                <h4 class="panel-title"><a href="#">Shoes</a></h4>
                                                        </div>
                                                </div>
                                        </div><!--/category-products-->

                                        
                                        <div class="shipping text-center"><!--shipping-->
                                                <img src="../images/home/shipping.jpg" alt="" />
                                        </div><!--/shipping-->

                                </div>
                        </div>
                    <!-- Where we will put all our new pages to display any logic-->
                    
                    
 <section>
    <div class="product-details"><!--product-details-->
        <div class="col-sm-5">
                <div class="view-product">
                        <img src="../images/product-details/1.jpg" alt="" />

                </div>
        </div>



        <div class="col-sm-7">
                <div class="product-information"><!--/product-information-->
                        <img src="../images/product-details/new.jpg" class="newarrival" alt="" />
                        <h2>Anne Klein Sleeveless Colorblock Scuba</h2>
                        <p>Web ID: 1089772</p>

                        <span>
                                <span>US $59</span>
                                <label>Quantity:</label>
                                <input type="text" value="3" />
                                <button type="button" class="btn btn-fefault cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Add to cart
                                </button>
                        </span>
                        <p><b>Availability:</b> In Stock</p>
                        <p><b>Condition:</b> New</p>
                        <p><b>Brand:</b> E-SHOPPER</p>

                </div><!--/product-information-->
        </div>
</div><!--/product-details-->

<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Description</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
								<li><a href="#tag" data-toggle="tab">Tag</a></li>
								<li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
                                                            <p>More and more about the products</p>
							</div>
							
							<div class="tab-pane fade" id="companyprofile" >
                                                            <p>About the company with id of product related to the company that has the product</p>
							</div>
							
							<div class="tab-pane fade" id="tag" >
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
									</ul>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
									<p><b>Write Your Review</b></p>
									
									<form action="#">
										<span>
											<input type="text" placeholder="Your Name"/>
											<input type="email" placeholder="Email Address"/>
										</span>
										<textarea name="" ></textarea>
										<b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
										<button type="button" class="btn btn-default pull-right">
											Submit
										</button>
									</form>
								</div>
							</div>
							
						</div>
					</div><!--/category-tab-->
</section>
                    
                    
                    <!--// Where we will put all our new pages to display any logic-->
              </div>
        </div>
</section>



 <jsp:include page="../includes/_footer.jsp"></jsp:include>