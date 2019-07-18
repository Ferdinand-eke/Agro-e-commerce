<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : shoppingCart
    Created on : May 20, 2019, 11:55:23 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../includes/_shSideMenu.jsp"></jsp:include>



        <div class="col-sm-9">
                    <!-- Where we will put all our new pages to display any logic-->
                    
        <section>

            <div class="container-fluid">
		<div class="row" style="margin-bottom: -100px;">
			<div class="col-xs-8">
				<h2 class="section-headline">
					<h2 class="section-headline">
						<span
							text=" : 'All Books'"></span>
					</h2>
				</h2>
			</div>
			<div class="col-xs-4">
                            <img src="logo" class="img-responsive"  height="100" width="100"/>
			</div>
		</div>
<!--		<hr style="position: absolute; width:85%; height: 6px; background-color: #333; z-index: -1; margin-top: -80px;" />-->
<!--		<img class="img-responsive" src="/image/wood.png"
			style="margin-top: -75px;" />-->

		<div class="row" style="margin-top: 10px;">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-xs-6 text-left">
						<a class="btn btn-warning" href="">Continue
							Shopping</a>
					</div>
					<div class="col-xs-6 text-right">
						<a class="btn btn-primary"
							th:href="@{/checkout(id=${shoppingCart.id})}">Check Out</a>
					</div>
					<br />
<!--					<div  class="alert alert-warning">
						Oops, some of the products don't have enough stock. Please update
						product quantity.</div>
					<div  class="alert alert-warning">Oops,
						your cart is empty. See if you can find what you like in the
						Store and add them to cart.</div>-->

					<br /> <br />
					<div class="row">
						<div class="col-xs-8 ">
							<h4 style="margin-left:70px;">Products</h4>
						</div>
						<div class="col-xs-2">
							<h4>Price</h4>
						</div>
						<div class="col-xs-2">
							<h4>Qty</h4>
						</div>
					</div>

					<!--**************** display products in cart ****************-->

					<div class="row" th:each="cartItem : ${cartItemList}">
						<form th:action="" method="post">
							<hr />
							<div class="col-xs-2">
								<a th:href="@{bookDetail(id=${cartItem.book.id})}"> <img
									style="width:70px;"
									class="img-responsive shelf-book center-block"
                                                                        th:src="../images/product-details/1.jpg" height="100" width="100" />
								</a>
							</div>
							<div class="col-xs-6">
								<div style="margin-left:50px;">
								<a th:href="@{/bookDetail?id=}+${cartItem.book.id}"><h4 th:text="${cartItem.book.title}"></h4></a>
								<p 
									style="color: green;">In Stock</p>
								<p
                                                                	Only <span th:text="${cartItem.book.inStockNumber}"></span> In
									Stock
								</p>
								<p th:if="${cartItem.book.inStockNumber==0}"
									style="color: darkred;">Product Unavailable</p>
								<a th:href="@{/shoppingCart/removeItem?id=}+${cartItem.id}">delete</a>
								</div>
							</div>

							<div class="col-xs-2">
								<h5 style="color: #db3208; font-size: large;">
									$<span th:text="${cartItem.book.ourPrice}"
										th:style="${cartItem.book.inStockNumber}==0? 'text-decoration: line-through' : ''"></span>
								</h5>
							</div>

							<div class="col-xs-2">
								<input hidden="hidden" name="id" th:value="${cartItem.id}" /> 
                                                                <input th:id="${cartItem.id}" th:name="qty" th:disabled="${cartItem.book.inStockNumber==0}" 
                                                                       class="form-control cartItemQty" th:value="${cartItem.qty}" />
								<button style="display: none;"
									th:id="'update-item-'+${cartItem.id}" type="submit"
									class="btn btn-warning btn-xs">Update</button>
							</div>
						</form>
					</div>

					<div class="row">
						<hr />
						<h4 class="col-xs-12 text-right">
							<strong style="font-size: large;">Total Price (<span
								th:text=""></span> items):
							</strong> <span style="color: #db3208; font-szie: large;">$<span
								text=""></span></span>
						</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end of container -->

            

        </section>                    
</div>




    
    
          </div>
        </div>
<jsp:include page="../includes/_footer.jsp"></jsp:include>
