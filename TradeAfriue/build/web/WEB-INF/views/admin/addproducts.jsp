

<jsp:include page="layout/_header.jsp"></jsp:include>

<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>
    <!-- Where we will put all our add product page elements to display any logic-->

            <section>
                <div class="container-fluid">
		<div class="row">
                    <p style="color: red;">${errorMssg}</p>
                <h1 style="color: greenyellow;"> <strong>${successMsg} </strong></h1>
			<form class="form-horizontal" action="${pageContext.request.contextPath}/AddAgroProductsServlet" method="post"
				enctype="multipart/form-data">
				<fieldset>
					<legend class="center-block">
						New Product Information<span style="font-size: small"> * is a
							required field</span>
					</legend>


					<!-- title -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="title">* Product Name</label>

						<div class="col-md-8">
							<input type="text" name="title" class="form-control" id="title"
								value="" required="required" placeholder="Title" />
							<span class="help-block">Title of the Product</span>
						</div>
					</div>
                                        
                                        		<!-- category -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="category">*
							Category</label>
						<div class="col-md-8">
<!--							<select value="" id="category" name="category"
								class="form-control">
								<option value="category" selected="selected" disabled="disabled">Please
									select an option...</option>
								<option>Tubers</option>
                                                                <option>Grains</option>
							</select>-->
                                                        <select value="" id="category" name="category"
                                                                class="form-control">
                                                            <option>Tubers</option>
                                                            <option>Grains</option>
                                                            <option>Spices</option>
                                                            <option>Fruits</option>
                                                        </select>
						</div>
					</div>

					<!-- author -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="author">*
							Author/Producer</label>
						<div class="col-md-8">
							<input type="text" name="author" class="form-control" id="author"
								value="" required="required"
								placeholder="Author" /> <span class="help-block">Producer
								of the Product</span>
						</div>
					</div>

					<!-- shipping weight -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="shippingWeight">Shipping
							Weight</label>
						<div class="col-md-8">
							<div class="input-group">
								<input value="" type="number" step="0.01"
									name="shippingWeight" class="form-control" id="shippingWeight"
									placeholder="Shipping Weight" /> <span
                                                                        ><select value="" id="shippingWUnit" name="shippingWUnit"
								class="form-control">
                                                                        <option>Ounces</option>
                                                                        <option>Kilogram</option>
                                                                        <option>Tonne</option>
                                                                    </select></span>
<!--									class="input-group-addon">Ounces</span>-->
							</div>
							<span class="help-block">Shipping Weight of the product</span>
						</div>
					</div>

					<!-- list price -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="listPrice">List
							Price</label>
						<div class="col-md-8">
							<div class="input-group">
								<span class="input-group-addon">N</span> <input
									type="number" name="listPrice" step="0.01"
									class="form-control" id="listPrice" placeholder="List Price" />
							</div>
							<span class="help-block">List price of the product</span>
						</div>
					</div>

					<!-- our price -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="ourPrice">Our
							Price</label>
						<div class="col-md-8">
							<div class="input-group">
								<span class="input-group-addon">N</span> <input
									value="" type="number" name="ourPrice" step="0.01"
									class="form-control" id="ourPrice" placeholder="Our Price" />
							</div>
							<span class="help-block">Our price of the product</span>
						</div>
					</div>

					<!-- in stock number -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="inStockNumber">Number
							in stock</label>
						<div class="col-md-8">
							<input value="" type="number"
								name="inStockNumber" class="form-control" id="inStockNumber"
								placeholder="Number of in-stock copies" /> <span
								class="help-block">Number of product in-stock </span>
						</div>
					</div>

					<!-- status of product -->
                                        
<!--                                        	<div class="form-group">
						<label class="col-md-2 control-label" for="status">*
							Status</label>
						<div class="col-md-8">
							<select value="" id="category" name="status"
								class="form-control">
								<option value="status" selected="selected" disabled="disabled">Please
									select an option...</option>
								<option value="" selected="">Active</option>
                                                                <option value="" selected="">Inactive</option>
							</select>
						</div>
					</div>-->
                                        
					<div class="form-group">
						<label class="col-md-2 control-label" for="status">Status</label>
						<div class="col-md-8">
							<label><input value="Active" type="radio" name="status"
								checked="checked" /> Active </label> <label><input
								value="Inactive" type="radio" name="status" />
								Inactive </label> <span class="help-block">Whether the Product is
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
							<label for="productImage">Upload product image</label>
						</div>
						<div class="col-md-8">
							<input id="bookImage" type="file" name="productImage"
								value="" />
						</div>
					</div>
                                        
                                        
					<!-- publisher -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="publisher">Publisher Company Name</label>
						<div class="col-md-8">
							<input type="text" name="publisher" class="form-control"
								id="publisher" value=""
								placeholder="Publisher" /> <span class="help-block">Publisher
								of the product</span>
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
								Date of the product</span>
						</div>
					</div>
                                                        <!-- country of product origin -->
					<div class="form-group">
						<label class="col-md-2 control-label" for="country origin">*
							Product Origin</label>
						<div class="col-md-8">
<!--							<select value="Origin" id="origin" name="origin"
								class="form-control">
								<option value="" selected="selected" disabled="disabled">Please
									select an option...</option>
								<option value="" selected="">Ahbu Dhabi</option>
                                                                <option value="" selected="">Australia</option>
							</select>-->
                                                        <select value="" id="origin" name="origin"
                                                                class="form-control">
                                                            <option>Ahbu Dhabi</option>
                                                            <option>Australia</option>
                                                            <option>Argentina</option>
                                                            <option>Nigeria</option>
                                                        </select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<button type="submit" class="btn btn-success">Add Product</button>
							<a class="btn btn-danger" href="${pageContext.request.contextPath}/addproduct">Cancel</a>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
     

</section>
    
    <!--// Where we will put all our add product page elements to display any logic-->
<jsp:include page="layout/_shSideMenuDown.jsp" flush="true"></jsp:include>

<jsp:include page="layout/_footer.jsp" flush="true"></jsp:include>