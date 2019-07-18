<jsp:include page="../includes/_header.jsp"></jsp:include>
<%-- 
    Document   : Error404
    Created on : May 20, 2019, 1:54:30 PM
    Author     : Ferdinand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../includes/_shSideMenu.jsp"></jsp:include>



<div class="col-sm-9">
                    <!-- Where we will put all our new pages to display any logic-->
                    
        <section>

            
                <div class="container">
		<div class="row" style="margin-bottom: -100px;">
			<div class="col-xs-8">
				<h2 class="section-headline">
					<span>Bad Request</span>
				</h2>
			</div>
			<div class="col-xs-4">
				<img src="../images/home/main.png" alt=""  height="50" width="50" class="img-responsive" />
			</div>
		</div>
<!--		<hr
			style="position: absolute; width: 100%; height: 6px; background-color: #333; z-index: -1; margin-top: -80px;" />-->
		

		<div class="row" style="margin-top:10px">
			<div class="col-xs-9 col-xs-offset-3">
				<h5>Bad request. The request path is invalid. Click <a th:href="@{/}">here</a> to return to the home page.</h5>
			</div>
		</div>
	</div>
	<!-- end of container -->

	

            

        </section>     
                      <!-- /Where we will put all our new pages to display any logic ends here-->
</div>







</div>
</div>
<jsp:include page="../includes/_footer.jsp"></jsp:include>