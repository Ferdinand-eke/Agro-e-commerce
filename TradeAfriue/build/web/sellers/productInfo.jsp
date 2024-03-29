<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : productInfo
    Created on : May 19, 2019, 5:40:56 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<jsp:include page="../includes/_shSideMenu.jsp"></jsp:include>

<div class="col-sm-9">
                    <!-- Where we will put all our new pages to display any logic-->
                    
        <section>

            <div class="container">
		<div>
			<ol class="breadcrumb">
				<li><a href="#@{/book/bookList}"><i class="fa fa-long-arrow-left" aria-hidden="true"></i>Go back to list</a></li>
				<li><a href="#@{/book/updateBook?id=}+${book.id}">Edit</a></li>
			</ol>
			
		</div>
		
		<div class="row">
			<div class="col-xs-3">
				<div class="panel panel-default">
				<div class="panel-body">
					<img src="../images/product-details/acer1.jpg" class="img-responsive center-block" />
				</div>
				</div>
			</div>
			<div class="col-xs-9">
				<h3 th:text="${book.title}"></h3>
				<div class="row">
					<div class="col-xs-6">
						<p><strong>Author: </strong><span th:text="${book.author}"></span></p>
						<p><strong>Publisher: </strong><span th:text="${book.publisher}"></span></p>
						<p><strong>Publication Date: </strong><span th:text="${book.publicationDate}"></span></p>
						<p><strong>Language: </strong><span th:text="${book.language}"></span></p>
						<p><strong>Category: </strong><span th:text="${book.category}"></span></p>
						<p><strong>Pages: </strong><span th:text="${book.numberOfPages}"></span></p>
					</div>
					<div class="col-xs-6">
						<p><strong>Format: </strong><span th:text="${book.format}"></span></p>
						<p><strong>ISBN: </strong><span th:text="${book.isbn}"></span></p>
						<p><strong>Shipping Weight: </strong><span th:text="${book.shippingWeight}"></span></p>
						<p><strong>List Price: </strong><span th:text="${book.listPrice}"></span></p>
						<p><strong>Our Price: </strong><span th:text="${book.ourPrice}"></span></p>
						<p><strong>Number in Stock: </strong><span th:text="${book.inStockNumber}"></span></p>
					</div>
				</div>
				
				<p><Strong>Description: </Strong><span utext="${book.description}"></span></p>
			</div>
			
		</div>
	</div>



        </section>                    
</div>
                    
                    <!--// Where we will put all our new pages to display any logic-->
              </div>
        </div>
</section>





<jsp:include page="../includes/_footer.jsp"></jsp:include>