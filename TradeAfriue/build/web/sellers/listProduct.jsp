<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : listProduct
    Created on : May 19, 2019, 5:27:45 AM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../includes/_shSideMenu.jsp"></jsp:include>

<div class="col-sm-9">
                    <!-- Where we will put all our new pages to display any logic-->
                    
        <section>

            
<div class="container-fluid">
		<div class="table-responsive">
			<table id="bookListTable" class="table table-bordered table-hover table-striped">
				<thead>
					<tr>
						<th><input th:id="selectAllBooks" type="checkbox" /></th>
						<th>Title</th>
						<th>Author</th>
						<th>Category</th>
						<th>List Price</th>
						<th>Our Price</th>
						<th>Active?</th>
						<th>Operation</th>
					</tr>
				</thead>
				<tbody>
					<tr data-th-each="book : ${bookList}">
						<td>
						<input hidden="hidden" name="id" th:value="${book.id}" />
						<input th:id="'selected'+${book.id}" class="checkboxBook" type="checkbox" />
						</td>
						<td><a th:href=""><span th:text=""></span></a></td>
						<td th:text=""></td>
						<td th:text=""></td>
						<td th:text=""></td>
						<td th:text=""></td>
						<td th:text=""></td>
						<td>
							<input hidden="hidden" name="id" th:value="${book.id}" />
							<button id="oneBook" class="btn btn-danger btn-xs delete-book" type="submit" value="delete" >
							<span class="fa fa-times"></span>Delete</button>
                                                        <button id="oneBook" class="btn btn-primary btn-xs delete-book" type="submit" value="Edit" >
							<span class="fa fa-times"></span>Edit</button>
                                                 
						</td>
					</tr>
				</tbody>
			</table>
		</div>
<!--	<button th:id="deleteSelected" class="btn btn-danger ">Delete Selected</button>-->
	</div>

        </section>                    
</div>
                    
                    <!--// Where we will put all our new pages to display any logic-->
              </div>
        </div>
</section>




<br><br>
<jsp:include page="../includes/_footer.jsp"></jsp:include>