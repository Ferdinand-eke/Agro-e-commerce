<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : Error404
    Created on : May 20, 2019, 1:54:30 PM
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
					<span>User Account</span>
				</h2>
			</div>
			<div class="col-xs-4">
				<img src="/image/logo.png" class="img-responsive" />
			</div>
		</div>
	

		<div class="row" style="margin-top: 10px;">
			<div class="col-xs-12">
				<div class="alert alert-success">
					<h3>
						<i class="fa fa-check" aria-hidden="true"
							style="color: limegreen;"></i> Thank you, your order has been
						placed.
					</h3>
					<h4>
						The estimated delivery date is <span
							th:text="${estimatedDeliveryDate}"></span>
					</h4>
				</div>

				<h3>List of Items</h3>
				<div class="row" th:each="cartItem : ${cartItemList}">
					<hr />
					<div class="col-xs-2"></div>
					<div class="col-xs-2">

						<a th:href="@{/bookDetail(id=${cartItem.book.id})}"> <img
							class="img-responsive shelf-book"
							th:src="+@{/image/book/}+${cartItem.book.id}+'.png'"
							style="width: 70px;" />
						</a>
					</div>
					<div class="col-xs-6">
						<div style="margin-left: 50px;">
							<a th:href="@{/bookDetail?id=}+${cartItem.book.id}"><h4
									th:text="${cartItem.book.title}"></h4></a>
						</div>
					</div>

					<div class="col-xs-2">
						<h5 style="color: #db3208; font-size: large;">
							$<span th:text="${cartItem.book.ourPrice}"
								th:style="${cartItem.book.inStockNumber}==0? 'text-decoration: line-through' : ''"></span>
						</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end of container -->


	

            

        </section>     
                      <!-- /Where we will put all our new pages to display any logic ends here-->
</div>







</div>
</div>
<jsp:include page="../includes/_footer.jsp"></jsp:include>