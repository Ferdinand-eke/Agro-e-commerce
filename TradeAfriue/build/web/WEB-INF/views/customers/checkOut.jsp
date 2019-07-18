<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="layout/_headerLoggedIn.jsp"></jsp:include>



<%--<jsp:include page="${page_name}" flush="true"/>--%>




<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>

    <div class="col-sm-9">
        <!-- Where we will put all our new pages to display any logic-->

        <section>

            <div class="container-fluid">

                <div class="row" style="margin-top: 10px;">

                    <form action="${pageContext.request.contextPath}/PlaceOrderServlet" method="post">

                        
                           
                    <!-- Checkout Info -->
                    <div class="col-xs-8">
<!--                        <div th:if="${missingRequiredField}">
                            <h5 class="alert alert-warning">There are some fields
                                missing. Field with * is required.</h5>
                        </div>-->

                        <div class="panel-group" id="accordion">

                            <!-- 1. Shipping Address -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#shippingInfo"> 1. Shipping Address </a>
                                    </h4>
                                </div>
                                <div id="shippingInfo" class="panel-collapse collapse"
                                     classappend="${classActiveShipping}? 'in'">
                                    <div class="panel-body">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Available Shipping Address</th>
                                                    <th>Operations</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td></td>
                                                    <td> <a href="">use this address</a> </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <div class="form-group">
                                            <label for="shippingName">* Name</label> 
                                            <input type="text"
                                            class="form-control" id="shippingName"
                                            placeholder="Receiver Name" name="shippingAddressName"
                                            value="" />
                                        </div>

                                        <div class="form-group">
                                            <label for="shippingStreet">* Street Address</label> <input
                                                type="text" class="form-control" id="shippingStreet"
                                                placeholder="Street Address 1" name="shippingAddressStreet1"
                                                value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"
                                                   placeholder="Street Address 2" name="shippingAddressStreet2"
                                                   value="" />
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-4">
                                                <div class="form-group">
                                                    <label for="shippingCity">* City</label> 
                                                    <input type="text"
                                                    class="form-control" id="shippingCity"
                                                    placeholder="Shipping City" name="shippingAddressCity"
                                                    required="required"
                                                    value="" />
                                                </div>
                                            </div>
                                            <div class="col-xs-4">
                                                <div class="form-group">
                                                    <label for="shippingState">* Country</label> <select
                                                        id="shippingState" class="form-control"
                                                        name="shippingAddressState"
                                                        value=""
                                                        required="required">
                                                        <option value="" disabled="disabled">Please select
                                                            an option</option>
                                                        <option>USA</option>
                                                        <option selected="">NIGERIA</option>
                                                        <option selected="">EGYPT</option>
                                                        <option selected="">SOUTH AFRICA</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-4">
                                                <div class="form-group">
                                                    <label for="shippingZipcode">* Zipcode</label> <input
                                                        type="text" class="form-control" id="shippingZipcode"
                                                        placeholder="Shipping Zipcode"
                                                        name="shippingAddressZipcode" required="required"
                                                        value="" />
                                                </div>
                                            </div>
                                        </div>
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           class="btn btn-warning pull-right" href="#paymentInfo">Next</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Payment Information -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#paymentInfo"> 2. Payment Information </a>
                                    </h4>
                                </div>

                                <div id="paymentInfo" class="panel-collapse collapse"
                                     classappend="${classActivePayment}? 'in'">
                                    <div class="panel-body">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Available Credit Card</th>
                                                    <th>Operations</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td ></td>
                                                    <td><a href="@{/setPaymentMethod(userPaymentId=${userPayment.id})}">use
                                                         this payment</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <!-- Credit Card Information -->
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <img th:src="{/image/creditcard.png}" class="img-responsive" /><br />
                                                <div class="form-group">
                                                    <label for="cardType">* Select Card Type: </label> <select
                                                        class="form-control" id="cardType" name="type"
                                                        value="">
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
                                                        name="holderName" value="" />
                                                </div>
                                                <div class="form-group">
                                                    <label for="cardNumber">* Card Number:</label>
                                                    <div class="input-group">
                                                        <input type="tel" class="form-control" id="cardNumber"
                                                               required="required" placeHolder="Valid Card Number"
                                                               name="cardNumber" th:value="" />
                                                        <span class="input-group-addon"><i
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
                                                                    required="required" value="">
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
                                                                    value="">
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
                                                    <label for="cardCVC">CV Code</label> 
                                                    <input id="cardCVC"
                                                    type="tel" class="form-control"
                                                    placeholder="CVC" name="cvc"
                                                   value="" />
                                                </div>
                                            </div>
                                        </div>


                                        <!-- Billing Address -->
                                        <div class="checkbox">
                                            <label> <input id="theSameAsShippingAddress"
                                                           type="checkbox" name="billingSameAsShipping" value="true" />
                                                The same as shipping address
                                            </label>
                                        </div>

                                        <div class="form-group">
                                            <label for="billingName">* Name</label> 
                                            <input type="text"
                                            class="form-control billingAddress" id="billingName"
                                            placeholder="Receiver Name" name="billingAddressName"
                                            required="required" value="" />
                                        </div>
                                        <div class="form-group">
                                            <label for="billingAddress">* Street Address</label> <input
                                                type="text" class="form-control billingAddress" id="billingAddress"
                                                placeholder="Street Address 1"
                                                name="billingAddressStreet1" required="required"
                                                value="" /> <input
                                                type="text" class="form-control billingAddress" id="billingAddress"
                                                placeholder="Street Address 2"
                                                name="billingAddressStreet2"
                                                value="" />
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-4">
                                                <div class="form-group">
                                                    <label for="billingCity">* City</label> 
                                                    <input type="text"
                                                     class="form-control billingAddress" id="billingCity"
                                                     placeholder="Billing city" name="billingAddressCity"
                                                     required="required"
                                                     value="" />
                                                </div>
                                            </div>
                                            <div class="col-xs-4">
                                                <div class="form-group">
                                                    <label for="billingState">* Country</label> 
                                                    <select
                                                        id="billingState" class="form-control billingAddress"
                                                        name="billingAddressState" value="" required="required">
                                                        <option value="" disabled="disabled">Please select
                                                            an option</option>
                                                        <option selected="">USA</option>
                                                        <option selected="">NIGERIA</option>
                                                        <option selected="">EGYPT</option>
                                                        <option selected="">SOUTH AFRICA</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xs-4">
                                                <div class="form-group">
                                                    <label for="billingZipcode">* Zipcode</label> <input
                                                        type="text" class="form-control billingAddress" id="billingZipcode"
                                                        placeholder="Billing Zipcode"
                                                        name="billingAddressZipcode" required="required"
                                                        value="" />
                                                </div>
                                            </div>
                                        </div>

                                        <a data-toggle="collapse" data-parent="#accordion"
                                           class="btn btn-warning pull-right" href="#reviewItems">Next</a>
                                    </div>
                                </div>
                            </div>

                            <!-- 3. Review Items and Shipping -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion"
                                           href="#reviewItems"> 3. Review Items and Shipping </a>
                                    </h4>
                                </div>
                                <div id="reviewItems" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <h4>Choose your shipping method:</h4>
                                        <div class="radio">
                                            <label> <input type="radio" name="shippingMethod"
                                                           value="groundShipping" checked="checked" /> Ground Shipping
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label> <input type="radio" name="shippingMethod"
                                                           value="premiumShipping" /> Premium Shipping
                                            </label>
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-8">
                                                <h4>Products</h4>
                                            </div>
                                            <div class="col-xs-2">
                                                <h4>Price</h4>
                                            </div>
                                            <div class="col-xs-2">
                                                <h4>Qty</h4>
                                            </div>
                                        </div>

                                        <!-- display products in cart -->
                                        <c:set var="total" value="${0}"/>
                                       <c:set var="tax" value="${0.03}"/>
                                       <c:set var="oderTotal" value=""/>
                                        <c:forEach items="${shoppingCart.getCartItems()}" var="item">
                                            <div class="row">
                                                <hr />
                                                <div class="col-xs-2">
                                                    <a th:href="@{/bookDetail(id=${cartItem.book.id})}"> 
                                                        <img
                                            style="width:70px;"
                                            class="img-responsive shelf-book center-block"
                                            src="${pageContext.request.contextPath}/resources/upload/${item.product.filename}" height="100" width="100" />
<!--                                                        <img
                                                            class="img-responsive shelf-book"
                                                            th:src="+@{/image/book/}+${cartItem.book.id}+'.png'"
                                                            style="width: 70px;" />-->
                                                    </a>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div style="margin-left: 50px;">
                                                        <a href="${pageContext.request.contextPath}/ProductDetail?id=+${item.product.id}">
                                                            <h4>${item.product.name}</h4></a>
                                                        <c:if test="${item.product.inStockNumber > 0}">
                                                        <p
                                                            style="color: green;">
                                                            Only <span >${item.product.inStockNumber}</span>
                                                            In Stock
                                                        </p>
                                                        </c:if>
                                                         <c:if test="${item.product.inStockNumber == 0}">
                                                        <p style="color: darkred;">Product Unavailable</p>
                                                        <a href="${pageContext.request.contextPath}/ReoveItem?id=+${item.product.id}">delete</a>
                                                        </c:if>
                                                        
                                                    </div>
                                                </div>

                                                <div class="col-xs-2">
                                                    <h5 style="color: #db3208; font-size: large;">
                                                        $<span>${item.product.price}</span>
                                                    </h5>
                                                   
                                                </div>

                                                <div class="col-xs-2">
                                                    <h5 style="font-size: large;" >${item.product.shippingWeight}</h5>
                                                </div>

                                            </div>
                                                <c:set var="total" value="${total + (item.product.shippingWeight * item.product.price) }"/>
                                                <c:set var="oderTotal" value="${oderTotal = total + (total * tax)}"/>
                                        </c:forEach>

                                        <hr />
                                        <p class="col-xs-12 text-right" style="padding-top: -70px">
                                            <strong style="font-size: small;">Order Total Before Tax (<span> ${total}</span> N):
                                            </strong> 
                                        </p>
                                            <p class="col-xs-12 text-right" style="padding-top: -70px">
                                            <strong style="font-size: small;"> Tax (<span>3</span> % ${total} N):
                                            </strong>
                                        </p>
                                        <h4 class="col-xs-12 text-right" style="padding-top: -70px">
                                            <strong style="font-size: large;">Order Total (<span>${oderTotal} </span> items):
                                            </strong> <span style="color: #db3208; font-szie: large;">$<span
                                                    text=""></span></span>
                                        </h4>
                                        <br />
                                        <br />
                                        <input
                                            type="hidden" class="form-control billingAddress" 
                                            name="total" required="required"
                                            value="${oderTotal}" />
                                        <button type="submit" class="btn btn-warning btn-block">Place
                                            your order</button>
                                        <p style="font-size: smaller;">
                                            By placing your order, you agree to TradeAfrique's <a href="#">privacy</a>
                                            notice and <a href="#">conditions</a> of use.
                                        </p>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                                        
                    <!-- Left Panel -->
                        <div class="col-xs-4">
                            <c:set var="Ftotal" value="${total}"/>
                        
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <button type="submit" class="btn btn-warning btn-block">Place
                                        your order</button>
                                    <p style="font-size: smaller;">
                                        By placing your order, you agree to Trade-Afrique's <a href="#">privacy</a>
                                        notice and <a href="#">conditions</a> of use.
                                    </p>
                                    <hr />
                                    <h3>Order Summary</h3>
                                    <div class="row">
                                        <div class="col-xs-7 text-left">Total before tax:</div>
                                        <div class="col-xs-5 text-right">
                                            $<span> ${Ftotal}</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7 text-left">Estimated tax:</div>
                                    <div class="col-xs-5 text-right">
                                        <span>3</span> % ${total}N 
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-5 text-left">
                                        <h3 style="color: darkred;">
                                            <strong>Order Total:  </strong>
                                        </h3>
                                    </div>
                                    <div class="col-xs-7 text-right">
                                        <h3>
                                            <strong style="color: darkred;">N<span>${oderTotal}</span></strong>
                                        </h3>
                                    </div>
                                </div>
                                <div class="panel-footer">Shipping and handling haven't
                                    applied.</div>
                            </div>
                        </div>
                              
                    </div>

                </form>
            </div>
        </div>
        <!-- end of container -->



    </section>  
    <!--/ Where we will put all our new pages to display any logic ends here-->
</div>



<jsp:include page="layout/_shSideMenuDown.jsp"></jsp:include>

<jsp:include page="layout/_footer.jsp"></jsp:include>