<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<jsp:include page="layout/_header.jsp"></jsp:include>

<jsp:include page="layout/_shSideMenu.jsp" flush="true"></jsp:include>
    <!-- Where we will put all our new pages to display any logic-->

    <section>
        <div class="container-fluid">
            <div class="row">
<!--                <p style="color: red;">${errorMssg}</p>
            <p style="color: greenyellow;">${successMsg}</p>-->

            <fieldset>
                    <legend class="center-block">
                         Create New Admin
                    </legend>

                    

  <!--                        <p style="color: palegoldenrod;">${errorString}</p>-->
                        <p style="color: greenyellow;">${message}</p>
                        <form class="form-signin" action="${pageContext.request.contextPath}/CreateAdmin" method="post">
                            <h2 class="form-signin-heading">Create New Account</h2>
                            <div class="form-group">
                                <label for="First Name" class="sr-only">First Name</label> <input
                                    type="text" class="form-control" placeholder="First Name"
                                    name="fname" id="fname" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="username" class="sr-only">Last Name</label> <input
                                    type="text" class="form-control" placeholder="Last Name"
                                    name="lname" id="lname" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="phone" class="sr-only">Phone</label> <input
                                    type="number" class="form-control" placeholder="Phone"
                                    name="phone" id="phone" required="required" />
                            </div>
                            <div class="form-group">
                                <label for="email" class="sr-only">E-mail</label> <input
                                    type="email" class="form-control" placeholder="E-mail"
                                    name="email" id="email" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="username" class="sr-only">Username</label> <input
                                    type="text" class="form-control" placeholder="Username"
                                    name="username" id="username" required="required"
                                    autofocus="autofocus" />
                            </div>
                            <div class="form-group">
                                <label for="password" class="sr-only">Password</label> <input
                                    type="password" class="form-control" placeholder="Password"
                                    name="password" id="password" required="required"
                                    autofocus="autofocus" />
                            </div>

                            <button class="btn btn-lg btn-default btn-block" type="submit">Create
                                Account</button>
                        </form>
                    

                </fieldset>
           
        </div>
    </div>


</section> 

<jsp:include page="layout/_shSideMenuDown.jsp" flush="true"></jsp:include>

<jsp:include page="layout/_footer.jsp" flush="true"></jsp:include>