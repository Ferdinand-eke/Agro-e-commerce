

<jsp:include page="layout/_headerLoggedIn.jsp"></jsp:include>

    

    
<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include> 

    
   
    
 <section>
    
    <div class="product-details"><!--product-details-->
        
    
            <c:forEach items="${productList}" var="product"> 
        <div class="col-sm-5">
                <div class="view-product">
                    <c:if test="${not empty product.filename}">
                    <img src="${pageContext.request.contextPath}/resources/upload/${product.filename} " />
                    </c:if>
            
<!--                        <img src="${pageContext.request.contextPath}/resources/assets/images/home/carrots.jpg" alt="" />-->

                </div>
        </div>



        <div class="col-sm-7">
                <div class="product-information"><!--/product-information-->
                        <img src="${pageContext.request.contextPath}/resources/assets/images/product-details/new.jpg" class="newarrival" alt="" />
                        <h2><span>${product.name}</span></h2>
                        <p>Web ID: ${product.id}</p>
                        
                        <span>
                            <form  class="form-horizontal" action="${pageContext.request.contextPath}/AddToCartServlet" method="post">
                                <span>N ${product.price}</span>
                                
                                <label>Quantity:In ${product.shippingWeightUnit} 
                                    <input type="number" name="quantity" step="0.01"
                                    class="form-control" value="${product.shippingWeight}"
                                    id="listPrice" style="width: 95px" />
                                </label>

                            
                                <input type="hidden" name="prodId" value="${product.id}">
                                <button type="submit" class="btn btn-fefault cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Add to cart
                                </button>
                            </form>
                        </span>
                                <p><strong>N</strong> <b><span style="text-decoration: line-through #CE3C2D">${product.listpPrice}</span></p>
                        <p><b>Availability:</b> ${product.inStockNumber} <span>${product.shippingWeightUnit}</p>
                        <p><b>Producer</b> ${product.producer}</p>
                        <p><b>Company :</b> ${product.publisherCompany}</p>


                </div><!--/product-information-->
        </div>
                       
                        
</div><!--/product-details-->

<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li  class="active"><a href="#details" data-toggle="tab">Description</a></li>
								<li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
								<li><a href="#tag" data-toggle="tab">Tag</a></li>
								<li><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade active in" id="details" >
                                                            <p>${product.description}</p>
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
							
							<div class="tab-pane fade " id="reviews" >
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
        </c:forEach>
        
</section>
                         
                    
                  
                    <!--// Where we will put all our new pages to display any logic-->
<jsp:include page="layout/_shSideMenuDown.jsp"></jsp:include>

<jsp:include page="layout/_footer.jsp"></jsp:include>

