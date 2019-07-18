<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<jsp:include page="layout/_header.jsp"></jsp:include>

<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>
    <!-- Where we will put all our new pages to display any logic-->

    <section>

            <div class="container">
		
		
		<div class="row">
                    
			<div class="col-xs-3">
				<div class="panel panel-default">
				<div class="panel-body">
					<img src="${pageContext.request.contextPath}/resources/assets/images/home/apples.jpg" class="img-responsive center-block" />
				</div>
				</div>
			</div>
			<div class="col-xs-9">
                            <div>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/admindashboard?page=listProducts"><i class="fa fa-long-arrow-left" aria-hidden="true"></i>Go back to list</a></li>
				<li><a href="${pageContext.request.contextPath}/admindashboard?page=updateProduct">Edit</a></li>
			</ol>
			
		</div>
				<h3 th:text="${book.title}"></h3>
				<div class="row">
					<div class="col-xs-6">
						<p><strong>Author: </strong><span text="${book.author}"></span></p>
						<p><strong>Publisher: </strong><span text="${book.publisher}"></span></p>
						<p><strong>Publication Date: </strong><span th:text="${book.publicationDate}"></span></p>
						<p><strong>Language: </strong><span text="${book.language}"></span></p>
						<p><strong>Category: </strong><span text="${book.category}"></span></p>
						<p><strong>Pages: </strong><span text="${book.numberOfPages}"></span></p>
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

<jsp:include page="layout/_shSideMenuDown.jsp" flush="true"></jsp:include>

<jsp:include page="layout/_footer.jsp" flush="true"></jsp:include>