<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<jsp:include page="layout/_header.jsp"></jsp:include>

    

<%--<jsp:include page="${page_name}" flush="true"/>--%>

<jsp:include page="layout/homeSlider.jsp"></jsp:include>


<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>
<div class="col-sm-offset-0-6">
    <div class="search_box pull-right">
        <input type="text" placeholder="Search"/>
    </div>
</div>
                        <div class="col-sm-9 padding-right">
                                <div class="features_items"><!--features_items-->
                                        <h2 class="title text-center">Features Items</h2>
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/UserListProductServlet" method="get"
                                      enctype="multipart/form-data">
    
                                        
                        <div id="result">
                            <h3>${requestScope["message"]}</h3>
                            <br>
                        </div>
                     
                        <c:forEach items="${productListUSession}" var="product">
                                        <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                        <div class="single-products">
                                                                        <div class="productinfo text-center">
                                                                                <input hidden="hidden" name="id" value="${product.id}" />
                                                                                 <c:if test="${not empty product.filename}">
                                                                                    <img src="${pageContext.request.contextPath}/resources/upload/${product.filename} " />
                                                                                 </c:if>
                                                                                 <c:if test="${empty product.filename}">
                                                                                <img src="${pageContext.request.contextPath}/resources/assets/images/home/carrots.jpg" alt="" />
                                                                                </c:if>
                                                                                <h2>${product.price}</h2>
                                                                                <p>${product.name}</p>
                                                                                <a href="${pageContext.request.contextPath}/productDetails?id=${product.id}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                                        </div>
                                                        </div>
                                                        <div class="choose">
                                                                <ul class="nav nav-pills nav-justified">
                                                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                            </c:forEach>
                        </form>
                               
                                </div><!--features_items-->

                                
                        </div>



<jsp:include page="layout/_shSideMenuDown.jsp"></jsp:include>

<jsp:include page="layout/_footer.jsp"></jsp:include>