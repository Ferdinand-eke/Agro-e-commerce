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

            <p>Dear <span th:text="${user.firstName}"></span>,</p>
<br/>
<p>Thank you for shopping from our Agro store. We hope you had a good tour with our service!</p>
<p>Your order number is: <strong>#<span th:text="${order.id}"></span></strong>. Here is your order detail:</p>
<h2>Order Detail for purchase #<span th:text="${order.id}"></span></h2>
<hr/>

<table>
	<tr>
		<th>Billing Detail</th>
		<th>Payment Information</th>
		<th>Shipping Address</th>
	</tr>
	<tr>
		<td>
			<span th:text="${order.billingAddress.billingAddressName}"></span><br/>
			<span th:text="${order.billingAddress.billingAddressStreet1}+' '+${order.billingAddress.billingAddressStreet2}"></span><br/>
			<span th:text="${order.billingAddress.billingAddressCity}"></span><br/>
			<span th:text="${order.billingAddress.billingAddressState}"></span><br/>
			<span th:text="${order.billingAddress.billingAddressZipcode}"></span><br/>
		</td>
		<td>
			<span th:text="${order.payment.holderName}"></span><br/>
			<span th:text="${order.payment.type}"></span><br/>
			<span th:text="${order.payment.cardNumber}"></span><br/>
			<span th:text="${order.payment.expiryMonth}"></span><br/>
			<span th:text="${order.payment.expiryYear}"></span><br/>
		</td>
		<td>
			<span th:text="${order.shippingAddress.shippingAddressName}"></span><br/>
			<span th:text="${order.shippingAddress.shippingAddressStreet1}+' '+${order.shippingAddress.shippingAddressStreet2}"></span><br/>
			<span th:text="${order.shippingAddress.shippingAddressCity}"></span><br/>
			<span th:text="${order.shippingAddress.shippingAddressState}"></span><br/>
			<span th:text="${order.shippingAddress.shippingAddressZipcode}"></span><br/>
		</td>
	</tr>
</table>

<h3><strong>Order Summary</strong></h3>
<table>
<thead>
	<tr>
		<td><strong>Item Name</strong></td>
		<td class="text-center"><strong>Item Price</strong></td>
		<td class="text-center"><strong>Item Quantity</strong></td>
		<td class="text-right"><strong>Total</strong></td>
	</tr>
</thead>
<tbody>
	<tr th:each="cartItem : ${cartItemList}">
		<td><span data-th-text="${cartItem.book.title}"></span></td>
		<td class="text-center" data-th-text="${cartItem.book.ourPrice}"></td>
		<td class="text-center" data-th-text="${cartItem.qty}"></td>
		<td class="text-right" data-th-text="${cartItem.subtotal}"></td>
	</tr>
	<tr>
		<td class="highrow"></td>
		<td class="highrow"></td>
		<td class="highrow text-center"><strong>Subtotal</strong></td>
		<td class="highrow text-right" data-th-text="${order.orderTotal}"></td>
	</tr>
	<tr>
		<td class="emptyrow"></td>
		<td class="emptyrow"></td>
		<td class="emptyrow text-center"><strong>Tax</strong></td>
		<td class="emptyrow text-right" data-th-text="${#numbers.formatDecimal(order.orderTotal*0.06,0,2)}"></td>
	</tr>
	<tr>
		<td class="emptyrow"><i class="fa fa-barcode iconbig"></i></td>
		<td class="emptyrow"></td>
		<td class="emptyrow text-center"><strong>Total</strong></td>
		<td th:with="total=${order.orderTotal+order.orderTotal*0.06}"
            data-th-text="${numbers.formatDecimal(total, 0, 2)}"
            class="emptyrow text-right">
        </td>
	</tr>
</tbody>
</table>

<br/>
<p>Best Regards,</p>
<p>TradeAfrique</p>
<p>Management</p>


	

            

        </section>     
                      <!-- /Where we will put all our new pages to display any logic ends here-->
</div>







</div>
</div>
<jsp:include page="../includes/_footer.jsp"></jsp:include>