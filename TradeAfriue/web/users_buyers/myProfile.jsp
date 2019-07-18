<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : myProfile
    Created on : May 20, 2019, 1:04:00 PM
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
						<span th:text="${#strings.toUpperCase(user.username)}"></span>
					</h2>
				</h2>
			</div>
			<div class="col-xs-4">
				<img src="../images/home/main.png" class="img-responsive" height="50" width="50" />
			</div>
		</div>
	
		<div class="row" style="margin-top: 60px;">
			<div class="col-xs-9 col-xs-offset-3">

				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li th:classappend="${classActiveEdit}? 'active'"><a
						href="#tab-1" data-toggle="tab"><span style="color: red;">Edit</span></a></li>
					<li th:classappend="${classActiveOrders}? 'active'"><a
						href="#tab-2" data-toggle="tab"><span style="color: red;">Orders</span></a></li>
					<li th:classappend="${classActiveBilling}? 'active'"><a
						href="#tab-3" data-toggle="tab"><span style="color: red;">Billing</span></a></li>
					<li th:classappend="${classActiveShipping}? 'active'"><a
						href="#tab-4" data-toggle="tab"><span style="color: red;">Shipping</span></a></li>
				</ul>

				<!-- Tab panels -->
				<div class="tab-content">

					<!-- Edit user information -->
					<div class="tab-pane fade" id="tab-1"
						th:classappend="${classActiveEdit}? 'in active'">
						<div class="panel-group">
							<div class="panel panel-default" style="border: none;">
								<div class="panel-body"
									style="background-color: #ededed; margin-top: 20px;">

									<div class="alert alert-danger" th:if="${incorrectPassword}">
										<strong>Incorrect Password!</strong> Pleae enter the correct
										password for the current user.
									</div>

									<div class="alert alert-succss" th:if="${updateSuccess}">
										<strong>Update Success!</strong>
									</div>

									<form th:action="@{/updateUserInfo}" method="post">
										<input type="hidden" name="id" th:value="${user.id}" />

										<div class="bg-info" th:if="${updateUserInfo}">User info
											updated.</div>

										<div class="form-group">
											<div class="row">
												<div class="col-xs-6">
													<label for="firstName">First Name</label> <input
														type="text" class="form-control" id="firstName"
														name="firstName" th:value="${user.firstName}" />
												</div>
												<div class="col-xs-6">
													<label for="lastName">Last Name</label> <input type="text"
														class="form-control" id="lastName" name="lastName"
														th:value="${user.lastName}" />
												</div>
											</div>
										</div>

										<div class="form-group">
											<label for="userName">Username</label> ' <input type="text"
												class="form-control" id="userName" name="username"
												th:value="${user.username}" />
										</div>
										<div class="form-group">
											<label for="currentPassword">Current Password</label> ' <input
												type="password" class="form-control" id="currentPassword"
												name="password" th:value="${currentPassword}" />
										</div>
										<p style="color: #828282">Enter your current password to
											change the email address or password.</p>

										<div class="form-group">
											<label for="email">* Email Address</label> ' <input
												type="text" class="form-control" id="email" name="email"
												th:value="${user.email}" />
										</div>
										<p style="color: #828282">A valid email address. All
											emails from the system withll be sent to this address. The
											email address is not made public and will only be used if you
											wish to receive a new password or wish to receive certain
											notification.</p>

										<div class="form-group">
											<label for="txtNewPassword">Password</label>&nbsp;<span
												id="checkPasswordMatch" style="color: red;"></span> <input
												type="password" class="form-control" id="txtNewPassword"
												name="newPassword" />
										</div>

										<div class="form-group">
											<label for="txtConfirmPassword">Confirm Password</label> ' <input
												type="password" class="form-control" id="txtConfirmPassword" />
										</div>
										<p style="color: #828282">To change the current user
											password, enter the new password in both fields.</p>

										<button id="updateUserInfoButton" type="submit"
											class="btn btn-primary">Save All</button>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- Order Information -->
					<div class="tab-pane fade" id="tab-2"
						th:classappend="${classActiveOrders}? 'in active'">
						<div class="panel-group">
							<div class="panel panel-default" style="border: none;">
								<div class="panel-body"
									style="background-color: #ededed; margin-top: 20px;">

									<table class="table table-sm table-inverse">
										<thead>
											<tr>
												<th>Order Date</th>
												<th>Order Number</th>
												<th>Total</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<tr th:each="order : ${orderList}">
												<td><a th:href="@{/orderDetail(id=${order.id})}"><span
														th:text="${order.orderDate}"></span></a></td>
												<td data-th-text="${order.id}"></td>
												<td data-th-text="${order.orderTotal}"></td>
												<td data-th-text="${order.orderStatus}"></td>
											</tr>
										</tbody>
									</table>

									<div th:if="${displayOrderDetail}">
										<div class="row">
											<div class="col-xs-12">
												<div class="text-center">
													<h2>
														Order Detail for Purchase #<span th:text="${order.id}"></span>
													</h2>
												</div>
												<hr />

												<div class="row">
													<div class="col-xs-4">
														<div class="panel panel-default height">
															<div class="panel-heading">
																<strong>Billing Details</strong>
															</div>
															<div class="panel-body">
																<span
																	th:text="${order.billingAddress.billingAddressName}"></span><br />
																<span
																	th:text="${order.billingAddress.billingAddressStreet1}+' '+${order.billingAddress.billingAddressStreet2}"></span><br />
																<span
																	th:text="${order.billingAddress.billingAddressCity}"></span><br />
																<span
																	th:text="${order.billingAddress.billingAddressState}"></span><br />
																<span
																	th:text="${order.billingAddress.billingAddressZipcode}"></span><br />
															</div>
														</div>
													</div>
													<div class="col-xs-4">
														<div class="panel panel-default height">
															<div class="panel-heading">
																<strong>Payment Information</strong>
															</div>
															<div class="panel-body">
																<span th:text="${order.payment.holderName}">Card
																	Name</span><br /> <span th:text="${order.payment.cardNumber}">Card
																	Number</span><br /> <span>Exp Date:</span><span
																	th:text="${order.payment.expiryMonth}"></span>/<span
																	th:text="${order.payment.expiryYear}"></span><br />
															</div>
														</div>
													</div>
													<div class="col-xs-4">
														<div class="panel panel-default height">
															<div class="panel-heading">
																<strong>Billing Details</strong>
															</div>
															<div class="panel-body">
																<span
																	th:text="${order.shippingAddress.shippingAddressName}"></span><br />
																<span
																	th:text="${order.shippingAddress.shippingAddressStreet1}+' '+${order.shippingAddress.shippingAddressStreet2}"></span><br />
																<span
																	th:text="${order.shippingAddress.shippingAddressCity}"></span><br />
																<span
																	th:text="${order.shippingAddress.shippingAddressState}"></span><br />
																<span
																	th:text="${order.shippingAddress.shippingAddressZipcode}"></span><br />
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<div class="panel-heading">
													<h3 class="text-center">
														<strong>Order Summary</strong>
													</h3>
												</div>
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-condensed">
															<thead>
																<tr>
																	<td><strong>Item Name</strong></td>
																	<td class="text-center"><strong>Item
																			Price</strong></td>
																	<td class="text-center"><strong>Item
																			Quantity</strong></td>
																	<td class="text-right"><strong>Total</strong></td>
																</tr>
															</thead>
															<tbody>
																<tr th:each="cartItem : ${cartItemList}">
																	<td data-th-text="${cartItem.book.title}"></td>
																	<td class="text-center"
																		data-th-text="${cartItem.book.ourPrice}"></td>
																	<td class="text-center" data-th-text="${cartItem.qty}"></td>
																	<td class="text-center"
																		data-th-text="${cartItem.subtotal}"></td>
																</tr>
																<tr>
																	<td class="highrow"></td>
																	<td class="highrow"></td>
																	<td class="highrow text-center"><strong>Subtotal</strong></td>
																	<td class="highrow text-right"
																		data-th-text="${order.orderTotal}"></td>
																</tr>
																<tr>
																	<td class="emptyrow"></td>
																	<td class="emptyrow"></td>
																	<td class="emptyrow text-center"><strong>Tax</strong></td>
																	<td class="emptyrow text-right"
																		data-th-text="${#numbers.formatDecimal(order.orderTotal*0.06,0,2)}"></td>
																</tr>
																<tr>
																	<td class="emptyrow"><i
																		class="fa fa-barcode iconbig"></i></td>
																	<td class="emptyrow"></td>
																	<td class="emptyrow text-center"><strong>Total</strong></td>
																	<td
																		th:with="total=${order.orderTotal+order.orderTotal*0.06}"
																		data-th-text="${#numbers.formatDecimal(total, 0, 2)}"
																		class="emptyrow text-right"></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Billing Information -->
					<div class="tab-pane fade" id="tab-3"
						th:classappend="${classActiveBilling}? 'in active'">
						<div class="panel-group">
							<div class="panel panel-default" style="border: none;">
								<div class="panel-body"
									style="background-color: #ededed; margin-top: 20px;">
									<ol class="breadcrumb">
										<li class="breadcrumb-item active"><a
											th:href="@{/listOfCreditCards}"
											th:style="${listOfCreditCards}? 'color:red'">List of
												Credit Cards</a></li>
										<li class="breadcrumb-item active"><a
											th:href="@{/addNewCreditCard}"
											th:style="${addNewCreditCard}? 'color:red'">Add(Update)
												Credit Card</a></li>
									</ol>

									<div th:if="${listOfCreditCards}">
										<form th:action="@{/setDefaultPayment}" method="post">
											<table class="table">
												<thead>
													<tr>
														<th>Default</th>
														<th>Credit Card</th>
														<th>Operations</th>
													</tr>
												</thead>
												<tbody>
													<tr th:each="userPayment : ${userPaymentList}">
														<td><input type="radio" name="defaultUserPaymentId"
															th:value="${userPayment.id}"
															th:checked="${userPayment.defaultPayment}" /></td>
														<td th:text="${userPayment.cardName}"></td>
														<td><a
															th:href="@{/updateCreditCard(id=${userPayment.id})}"><i
																class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
															th:href="@{/removeCreditCard(id=${userPayment.id})}"><i
																class="fa fa-times"></i></a></td>
													</tr>
												</tbody>
											</table>
											<button class="btn btn-primary" type="submit">Save</button>
										</form>
									</div>

									<div th:if="${addNewCreditCard}">
										<form th:action="@{addNewCreditCard}" method="post">
											<div class="bg-info" th:if="${updateUserPaymentInfo}">User
												info updated.</div>

											<input hidden="hidden" name="id" th:value="${userPayment.id}" />

											<div class="form-group">
												<h5>* Give a name for your card:</h5>
												<input type="text" class="form-control" id="cardName"
													placeholder="Card Name" th:name="cardName"
													required="required" th:value="${userPayment.cardName}" />
											</div>

											<!-- Billing Address -->
											<hr />
											<div class="form-group">
												<h4>Billing Address</h4>
											</div>
											<div class="form-group">
												<label for="billingName">* Name</label> <input type="text"
													class="form-control" id="billingName"
													placeholder="Receiver Name" th:name="userBillingName"
													required="required"
													th:value="${userBilling.userBillingName}" />
											</div>
											<div class="form-group">
												<label for="billingAddress">* Street Address</label> <input
													type="text" class="form-control" id="billingAddress"
													placeholder="Street Address 1" th:name="userBillingStreet1"
													required="required"
													th:value="${userBilling.userBillingStreet1}" /> <input
													type="text" class="form-control" id="billingAddress"
													placeholder="Street Address 2" th:name="userBillingStreet2"
													th:value="${userBilling.userBillingStreet2}" />
											</div>

											<div class="row">
												<div class="col-xs-4">
													<div class="form-group">
														<label for="billingCity">* City</label> <input type="text"
															class="form-control" id="billingCity"
															placeholder="Billing city" th:name="userBillingCity"
															required="required"
															th:value="${userBilling.userBillingCity}" />
													</div>
												</div>
												<div class="col-xs-4">
													<div class="form-group">
														<label for="billingState">* State</label> <select
															id="billingState" class="form-control"
															th:name="userBillingState"
															th:value="${userBilling.userBillingState}"
															required="required">
															<option value="" disabled="disabled">Please
																select an option</option>
															<option th:each="state : ${stateList}" th:text="${state}"
																th:selected="(${userBilling.userBillingState}==${state})"></option>
														</select>
													</div>
												</div>
												<div class="col-xs-4">
													<div class="form-group">
														<label for="billingZipcode">* Zipcode</label> <input
															type="text" class="form-control" id="billingZipcode"
															placeholder="Billing Zipcode"
															th:name="userBillingZipcode" required="required"
															th:value="${userBilling.userBillingZipcode}" />
													</div>
												</div>
											</div>

											<!-- Credit Card Information -->
											<hr />
											<div class="form-group">
												<h4>Credit Card Information</h4>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<img src="/image/creditcard.png" class="img-responsive" /><br />
													<div class="form-group">
														<label for="cardType">* Select Card Type:</label> <select
															class="form-control" id="cardType" th:name="type"
															th:value="${userPayment.type}">
															<option value="visa">Visa</option>
															<option value="mastercard">Mastercard</option>
															<option value="discover">Discover</option>
															<option value="amex">American Express</option>
														</select>
													</div>
													<div class="form-group">
														<label for="cardHolder">* Card Holder Name:</label> <input
															type="text" class="form-control" id="cardHolder"
															required="required" placeHolder="Card Holder Name"
															th:name="holderName" th:value="${userPayment.holderName}" />
													</div>
													<div class="form-group">
														<label for="cardNumber">* Card Number:</label>
														<div class="input-group">
															<input type="tel" class="form-control" id="cardNumber"
																required="required" placeHolder="Valid Card Number"
																th:name="cardNumber"
																th:value="${userPayment.cardNumber}" /> <span
																class="input-group-addon"><i
																class="fa fa-credit-card" aria-hidden="true"></i></span>
														</div>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-xs-7">
													<div class="form-group">
														<label>* Expiration Date</label>
														<div class="row">
															<div class="col-xs-6">
																<select class="form-control" name="expiryMonth"
																	required="required"
																	th:value="${userPayment.expiryMonth}">
																	<option disabled="disabled">-- Month --</option>
																	<option value="01">Jan (01)</option>
																	<option value="02">Feb (02)</option>
																	<option value="03">Mar (03)</option>
																	<option value="04">Apr (04)</option>
																	<option value="05">May (05)</option>
																	<option value="06">June (06)</option>
																	<option value="07">July (07)</option>
																	<option value="08">Aug (08)</option>
																	<option value="09">Sep (09)</option>
																	<option value="10">Oct (10)</option>
																	<option value="11">Nov (11)</option>
																	<option value="12">Dec (12)</option>
																</select>
															</div>
															<div class="col-xs-6">
																<select class="form-control" name="expiryYear"
																	th:value="${userPayment.expiryYear}">
																	<option disabled="disabled">-- Year --</option>
																	<option value="2017">2017</option>
																	<option value="2018">2018</option>
																	<option value="19">2019</option>
																	<option value="20">2020</option>
																	<option value="21">2021</option>
																	<option value="22">2022</option>
																	<option value="23">2023</option>
																	<option value="23">2024</option>
																	<option value="23">2025</option>
																	<option value="23">2026</option>
																	<option value="23">2027</option>
																	<option value="23">2028</option>
																	<option value="23">2029</option>
																</select>
															</div>
														</div>
													</div>
												</div>
												<div class="col-xs-5">
													<div class="form-group">
														<label for="cardCVC">CV Code</label> <input id="cardCVC"
															type="tel" class="form-control" name="cvc"
															placeholder="CVC" th:name="cvc"
															th:value="${userPayment.cvc}" />
													</div>
												</div>
											</div>
											<hr />
											<button type="submit" class="btn btn-primary btn-lg">Save
												All</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Shipping Information -->
					<div class="tab-pane fade" id="tab-4"
						th:classappend="${classActiveShipping}? 'in active'">
						<div class="panel-group">
							<div class="panel panel-default" style="border: none;">
								<div class="panel-body"
									style="background-color: #ededed; margin-top: 20px;">

									<ol class="breadcrumb">
										<li class="breadcrumb-item active"><a
											th:href="@{/listOfShippingAddresses}"
											th:style="${listOfShippingAddresses}? 'color:red'">List
												of Shipping Addresses</a></li>
										<li class="breadcrumb-item active"><a
											th:href="@{/addNewShippingAddress}"
											th:style="${addNewShippingAddress}? 'color:red'">Add(Update)
												Shipping Address</a></li>
									</ol>

									<div th:if="${listOfShippingAddresses}">
										<form th:action="@{/setDefaultShippingAddress}" method="post">
											<table class="table">
												<thead>
													<tr>
														<th>Default</th>
														<th>Shipping Address</th>
														<th>Operations</th>
													</tr>
												</thead>
												<tbody>
													<tr th:each="userShipping : ${userShippingList}">
														<td><input type="radio"
															name="defaultShippingAddressId"
															th:value="${userShipping.id}"
															th:checked="${userShipping.userShippingDefault}" /><span>default</span></td>
														<td
															th:text="${userShipping.userShippingStreet1}+', '+
														${userShipping.userShippingCity}+', '+${userShipping.userShippingState}"></td>
														<td><a
															th:href="@{/updateUserShipping(id=${userShipping.id})}"><i
																class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
															th:href="@{/removeUserShipping(id=${userShipping.id})}"><i
																class="fa fa-times"></i></a></td>
													</tr>
												</tbody>
											</table>
											<button class="btn btn-primary" type="submit">Save</button>
										</form>
									</div>

									<div th:if="${addNewShippingAddress}">
										<form th:action="@{/addNewShippingAddress}" method="post">
											<div class="bg-info" th:if="${updateUserShippingInfo}">User
												info updated.</div>

											<input hidden="hidden" name="id"
												th:value="${userShipping.id}" />

											<!-- Shipping Address -->
											<hr />
											<div class="form-group">
												<h4>Shipping Address</h4>
											</div>
											<div class="form-group">
												<label for="shippingName">* Name</label> <input type="text"
													class="form-control" id="shippingName"
													placeholder="Receiver Name" th:name="userShippingName"
													required="required"
													th:value="${userShipping.userShippingName}" />
											</div>
											<div class="form-group">
												<label for="shippingAddress">* Street Address</label> <input
													type="text" class="form-control" id="shippingAddress"
													placeholder="Street Address 1"
													th:name="userShippingStreet1" required="required"
													th:value="${userShipping.userShippingStreet1}" /> <input
													type="text" class="form-control"
													placeholder="Street Address 2" th:name="userShppingStreet2"
													th:value="${userShipping.userShippingStreet2}" />
											</div>

											<div class="row">
												<div class="col-xs-4">
													<div class="form-group">
														<label for="shippingCity">* City</label> <input
															type="text" class="form-control" id="shippingCity"
															placeholder="Shipping City" th:name="userShippingCity"
															required="required"
															th:value="${userShipping.userShippingCity}" />
													</div>
												</div>
												<div class="col-xs-4">
													<div class="form-group">
														<label for="shippingState">* State</label> <select
															id="shippingState" class="form-control"
															th:name="userShippingState"
															th:value="${userShipping.userShippingState}"
															required="required">
															<option value="" disabled="disabled">Please
																select an option</option>
															<option th:each="state : ${stateList}" th:text="${state}"
																th:selected="(${userShipping.userShippingState}==${state})"></option>
														</select>
													</div>
												</div>
												<div class="col-xs-4">
													<div class="form-group">
														<label for="shippingZipcode">* Zipcode</label> <input
															type="text" class="form-control" id="shippingZipcode"
															placeholder="Shipping Zipcode"
															th:name="userShippingZipcode" required="required"
															th:value="${userShipping.userShippingZipcode}" />
													</div>
												</div>
											</div>

											<hr />
											<button type="submit" class="btn btn-primary btn-lg">Save
												All</button>
										</form>
									</div>
								</div>
							</div>
						</div>
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
<br>
<br>
<jsp:include page="../includes/_footer.jsp"></jsp:include>