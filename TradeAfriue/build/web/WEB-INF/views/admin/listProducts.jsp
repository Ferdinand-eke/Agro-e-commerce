<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<jsp:include page="layout/_header.jsp"></jsp:include>

<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>
    <!-- Where we will put all our new pages to display any logic-->

    <section>
        <div class="container-fluid">
            <div class="row">
<!--                <p style="color: red;">${errorMssg}</p>
            <p style="color: greenyellow;">${successMsg}</p>-->

            <form class="form-horizontal" action="${pageContext.request.contextPath}/ListProductsServlet" method="get"
                  enctype="multipart/form-data">
                <fieldset>
                    <legend class="center-block">
                         Products Available
                    </legend>

                    <div class="table-responsive">

                        <p style="color: red;">${errorString}</p>
                        <div id="result">
                            <h3>${requestScope["message"]}</h3>
                            <br>
                        </div>
                        <p style="color: red;">${errorMssg}</p>
                        <p style="color: greenyellow;">${message}</p>
<!--                        <p style="color: greenyellow;">${successMsg}</p>-->
                        <table id="productListTable" class="table table-bordered table-hover table-striped">
                            <thead>
                                <tr>
                                    <th><input id="selectAllProducts" type="checkbox" /></th>
                                    <th>Title</th>
                                    <th>Producer</th>
                                    <th>List Price</th>
                                    <th>Our Price</th>
                                    <th>Shipping Weight(U)</th>
                                    <th>In_Stock_Quantity</th>
                                    <th colspan="3">Operation</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${productList}" var="product">
                                    <tr >
                                        <td>
                                            <input hidden="hidden" name="id" value="${product.id}" />
                                            <input id="selected${product.id}" class="checkboxBook" type="checkbox" /> 
                                        </td>
                                        <td><a href=""><span>${product.name}</span></a></td>
                                        <td>${product.producer}</td>
                                        <td><span>N</span>${product.listpPrice}</td>
                                        <td><span>N</span>${product.price}</td>
                                        <td>${product.shippingWeight} <span>${product.shippingWeightUnit}</span></td>
                                        <td>${product.inStockNumber} <span>${product.shippingWeightUnit}</span></td>
                                        <td></td>

                                        <td>
                     
                                            <a href="deleteProduct?id=${product.id}">Delete</a>
                                        </td>
                                        <td>

                                            <a href="${pageContext.request.contextPath}/Updateproduct?id=${product.id}">Edit</a>
                                        </td>
<!--                                        <td>

                                            <a href="${pageContext.request.contextPath}/ProductInfo?id=${product.id}">View</a>

                                        </td>-->




                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!--	<button th:id="deleteSelected" class="btn btn-danger ">Delete Selected</button>-->

                </fieldset>
            </form>
        </div>
    </div>


</section> 

<jsp:include page="layout/_shSideMenuDown.jsp" flush="true"></jsp:include>

<jsp:include page="layout/_footer.jsp" flush="true"></jsp:include>