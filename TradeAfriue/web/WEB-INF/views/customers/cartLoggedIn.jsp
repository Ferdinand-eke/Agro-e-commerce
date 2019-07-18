<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="layout/_headerLoggedIn.jsp"></jsp:include>

<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>  

    <div class="col-sm-9">
        <!-- Where we will put all our new pages to display any logic-->

        <section>

            <div class="container-fluid">
                <div class="row" style="margin-bottom: -100px;">
                    <div class="col-xs-8">
                        <h2 class="section-headline">
                            <h2 class="section-headline">
                                <span
                                    text=" : 'All Products'"></span>
                            </h2>
                        </h2>
                    </div>
                    <div class="col-xs-4">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/home/main.png" class="img-responsive"  height="100" width="100"/>
                    </div>
                </div>
                <div class="row" style="margin-top: 10px;">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-6 text-left">
                                <a class="btn btn-warning" href="${pageContext.request.contextPath}/UserBoard">Continue
                                    Shopping</a>
                            </div>
                            <div class="col-xs-6 text-right">
                                <a class="btn btn-warning"
                                   href="${pageContext.request.contextPath}/checkout">Check Out</a>
                        </div>
                        <br />
         
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
                        <c:set var="total" value="${0}"/>
                        
                        <c:forEach items="${shoppingCart.getCartItems()}" var="item">
                            
                        <div class="row">
                            <form action="" method="post">
                                <hr />
                                <div class="col-xs-2">
                                    <a href=""> <img
                                            style="width:70px;"
                                            class="img-responsive shelf-book center-block"
                                            src="${pageContext.request.contextPath}/resources/upload/${item.product.filename}" height="100" width="100" />
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <div style="margin-left:50px;">
                                        <a href="${pageContext.request.contextPath}/GetProduct?id=+${item.product.id}"><h4>${item.product.name}</h4></a>
                                        <p 
                                            style="color: green;">In Stock</p>
                                        <p
                                            Only <span> ${item.product.inStockNumber}</span> In
                                            Stock
                                        </p>
                                        <c:if test="${item.product.inStockNumber == 0}">
                                            <p style="color: darkred;">Product Unavailable</p>
                                        </c:if>
                                        <a href="${pageContext.request.contextPath}/ReoveItem?id=+${item.id}">delete</a>
                                    </div>
                                </div>
                                      <div class="col-xs-2">
                                          <div class="col-sm-6">
                                              <div class="col-xs-6 text-right">
                                              <a class="btn btn-warning"
                                             href="#">Update</a>
                                            </div>
                                          </div>
                                           <div class="col-sm-6">
                                              <div class="col-xs-6 text-right">
                                              <a class="btn btn-warning"
                                             href="#">Edit</a>
                                            </div>
                                          </div>
<!--                                    <a href=""> <img
                                            style="width:70px;"
                                            class="img-responsive shelf-book center-block"
                                            src="${pageContext.request.contextPath}/resources/upload/${item.product.filename}" height="100" width="100" />
                                    </a>-->
                                </div>

                                <div class="col-xs-2">
                                    <h5 style="color: #db3208; font-size: large;">
                                        $<span>${item.product.price}</span>
                                    </h5>
                                </div>

                                <div class="col-xs-2">
                                    <input hidden="hidden" name="id" value="${item.id}" /> 
                                    
                                    
                                    <input id="${item.id}" name="qty" disabled="${item.product.inStockNumber == 0 ? 'true' : 'false'}" 
                                           
                                           class="form-control cartItemQty" value="${item.product.shippingWeight}" />
                                    <p>
                                            Only <span>${ item.product.price}</span> Sub Total
<!--                                            item.product.shippingWeight *-->
                                        </p>
                                    
                                    <button style="display: none;"
                                            id="'update-item-'+${item.id}" type="submit"
                                            class="btn btn-warning btn-xs">Update</button>
                                </div>
                            </form>
                        </div>
                                            <c:set var="total" value="${total + ( item.product.price) }"/>
<!--                                            item.product.shippingWeight *-->
                      </c:forEach>
                        <div class="row">
                            <hr />
                            <h4 class="col-xs-12 text-right">
                                <strong style="font-size: large;">Total Price :  (<span
                                        >${total}</span> items):
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



<jsp:include page="layout/_shSideMenuDown.jsp"></jsp:include>

<jsp:include page="layout/_footer.jsp"></jsp:include>

