<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : addProduct
    Created on : May 19, 2019, 4:33:21 AM
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
                        <div class="container">
		<div class="row">
			<form class="form-horizontal" th:action="" method="post"
				enctype="multipart/form-data">
				<fieldset>
					<legend class="center-block">
						New Book Information<span style="font-size: small"> * is a
							required field</span>
					</legend>


					<!-- title -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="title">* Title</label>

						<div class="col-md-8">
							<input type="text" name="title" class="form-control" id="title"
								value="" required="required" placeholder="Title" />
							<span class="help-block">Title of the book</span>
						</div>
					</div>

					<!-- author -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="author">*
							Author</label>
						<div class="col-md-8">
							<input type="text" name="author" class="form-control" id="author"
								value="" required="required"
								placeholder="Author" /> <span class="help-block">Author
								of the book</span>
						</div>
					</div>

					<!-- publisher -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="publisher">Publisher</label>
						<div class="col-md-8">
							<input type="text" name="publisher" class="form-control"
								id="publisher" value=""
								placeholder="Publisher" /> <span class="help-block">Publisher
								of the book</span>
						</div>
					</div>

					<!-- publication date -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="publicationDate">Publication
							Date</label>
						<div class="col-md-8">
							<input type="date" class="form-control" id="publicationDate"
								name="publicationDate" value=""
								placeholder="ublication Date" /> <span class="help-block">Publication
								Date of the book</span>
						</div>
					</div>

					<!-- language -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="language">Language</label>
						<div class="col-md-8">
							<select value="" id="language" name="language"
								class="form-control">
								<option value="english">English</option>
								<option value="spanish">Spanish</option>
							</select>
						</div>
					</div>

					<!-- category -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="category">*
							Category</label>
						<div class="col-md-8">
							<select value="" id="category" name="category"
								class="form-control">
								<option value="" selected="selected" disabled="disabled">Please
									select an option...</option>
								<option value="Management"
									selected="">Management</option>							
							</select>
						</div>
					</div>

					<!-- pages -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="pageNumber">Pages</label>

						<div class="col-md-8">
							<input type="number" name="numberOfPages" class="form-control"
								id="pageNumber" value=""
								placeholder="Page Number" /> <span class="help-block">Number
								of pages of the book</span>
						</div>
					</div>

					<!-- format -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="format">Format</label>
						<div class="col-md-8">
							<select value="" id="format" name="format"
								class="form-control">
								<option value="paperback">Paperback</option>
								<option value="hardcover">Hardcover</option>
							</select>
						</div>
					</div>

					<!-- isbn -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="isbn">ISBN</label>

						<div class="col-md-8">
							<input type="text" name="isbn" class="form-control" id="isbn"
								value="" placeholder="ISBN" /> <span
								class="help-block">ISBN of the book</span>
						</div>
					</div>

					<!-- shipping weight -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="shippingWeight">Shipping
							Weight</label>
						<div class="col-md-8">
							<div class="input-group">
								<input th:value="" type="number" step="0.01"
									name="shippingWeight" class="form-control" id="shippingWeight"
									placeholder="Shipping Weight" /> <span
                                                                        ><select>
                                                                        <option>Ounces</option>
                                                                        <option>Kilogram</option>
                                                                        <option>Tonne</option>
                                                                    </select></span>
<!--									class="input-group-addon">Ounces</span>-->
							</div>
							<span class="help-block">Shipping Weight of the book</span>
						</div>
					</div>

					<!-- list price -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="listPrice">List
							Price</label>
						<div class="col-md-8">
							<div class="input-group">
								<span class="input-group-addon">$</span> <input
									value="" type="number" name="listPrice" step="0.01"
									class="form-control" id="listPrice" placeholder="List Price" />
							</div>
							<span class="help-block">List price of the book</span>
						</div>
					</div>

					<!-- our price -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="ourPrice">Our
							Price</label>
						<div class="col-md-8">
							<div class="input-group">
								<span class="input-group-addon">$</span> <input
									value="" type="number" name="ourPrice" step="0.01"
									class="form-control" id="ourPrice" placeholder="Our Price" />
							</div>
							<span class="help-block">Our price of the book</span>
						</div>
					</div>

					<!-- in stock number -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="inStockNumber">Number
							in stock</label>
						<div class="col-md-8">
							<input th:value="${book.inStockNumber}" type="number"
								name="inStockNumber" class="form-control" id="inStockNumber"
								placeholder="Number of in-stock copies" /> <span
								class="help-block">Number of in-stock copies</span>
						</div>
					</div>

					<!-- status of book -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="status">Status</label>
						<div class="col-md-8">
							<label><input value="true" type="radio" name="active"
								checked="checked" /> Active </label> <label><input
								value="false" type="radio" name="active" />
								Inactive </label> <span class="help-block">Whether the book is
								active or inactive</span>
						</div>
					</div>

					<!-- description -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="description">Description</label>
						<div class="col-md-8">
							<textarea name="description" rows="3" class="form-control"
								id="description" value=""
								placeholder="Description">							
                                                </textarea>
						</div>
					</div>
                                       
					<!-- upload image -->
					<div class="form-group">
						<div class="col-md-2">
							<label for="bookImage">Upload book image</label>
						</div>
						<div class="col-md-8">
							<input id="bookImage" type="file" name="bookImage"
								value="" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<button type="submit" class="btn btn-success">Udate Product</button>
							<a class="btn btn-danger" th:href="@{/}">Cancel</a>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>

</section>                    
                    
                    <!--// Where we will put all our new pages to display any logic-->
              </div>
        </div>
</section>


<br>
<br>

<jsp:include page="../includes/_footer.jsp"></jsp:include>
