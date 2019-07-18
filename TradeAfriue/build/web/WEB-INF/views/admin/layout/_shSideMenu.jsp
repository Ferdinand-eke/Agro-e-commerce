

<section>
    <c:if test =" ${loginedAdmin.role eq 'Super Admin'}">
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
                                            Products
                                        </a>
                                    </h4>
                                </div>
                                <div id="sportswear" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="${pageContext.request.contextPath}/admindashboard?page=addProduct">Add Product </a></li>
                                            <li><a href="#">Edit Product </a></li>
                                            <li><a href="#">View Product </a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Orders
                                        </a>
                                    </h4>
                                </div>
                                <div id="mens" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="#">View Orders</a></li>
                                            <li><a href="#">Confirm Orders</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            </c:if>
                                                
<!--                                                <div class="panel panel-default">
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
                                                </div>-->
                                                
                                        </div><!--/category-products-->

                                        
                                        <div class="shipping text-center"><!--shipping-->
                                                <img src="${pageContext.request.contextPath}/resources/assets/images/home/shipping.jpg" alt="" />
                                        </div><!--/shipping-->

                                </div>
                        </div>
                                        
                    