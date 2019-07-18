package org.apache.jsp.users_005fbuyers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class confirmedOrderMail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../includes/_header.jsp", out, false);
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../includes/_shSideMenu.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"col-sm-9\">\n");
      out.write("                    <!-- Where we will put all our new pages to display any logic-->\n");
      out.write("                    \n");
      out.write("        <section>\n");
      out.write("\n");
      out.write("            <p>Dear <span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.firstName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span>,</p>\n");
      out.write("<br/>\n");
      out.write("<p>Thank you for shopping from our Agro store. We hope you had a good tour with our service!</p>\n");
      out.write("<p>Your order number is: <strong>#<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></strong>. Here is your order detail:</p>\n");
      out.write("<h2>Order Detail for purchase #<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></h2>\n");
      out.write("<hr/>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<th>Billing Detail</th>\n");
      out.write("\t\t<th>Payment Information</th>\n");
      out.write("\t\t<th>Shipping Address</th>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.billingAddress.billingAddressName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.billingAddress.billingAddressStreet1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("+' '+");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.billingAddress.billingAddressStreet2}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.billingAddress.billingAddressCity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.billingAddress.billingAddressState}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.billingAddress.billingAddressZipcode}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t</td>\n");
      out.write("\t\t<td>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.payment.holderName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.payment.type}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.payment.cardNumber}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.payment.expiryMonth}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.payment.expiryYear}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t</td>\n");
      out.write("\t\t<td>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.shippingAddress.shippingAddressName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.shippingAddress.shippingAddressStreet1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("+' '+");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.shippingAddress.shippingAddressStreet2}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.shippingAddress.shippingAddressCity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.shippingAddress.shippingAddressState}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t\t<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.shippingAddress.shippingAddressZipcode}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span><br/>\n");
      out.write("\t\t</td>\n");
      out.write("\t</tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<h3><strong>Order Summary</strong></h3>\n");
      out.write("<table>\n");
      out.write("<thead>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td><strong>Item Name</strong></td>\n");
      out.write("\t\t<td class=\"text-center\"><strong>Item Price</strong></td>\n");
      out.write("\t\t<td class=\"text-center\"><strong>Item Quantity</strong></td>\n");
      out.write("\t\t<td class=\"text-right\"><strong>Total</strong></td>\n");
      out.write("\t</tr>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("\t<tr th:each=\"cartItem : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItemList}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("\t\t<td><span data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></td>\n");
      out.write("\t\t<td class=\"text-center\" data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.ourPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td>\n");
      out.write("\t\t<td class=\"text-center\" data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.qty}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td>\n");
      out.write("\t\t<td class=\"text-right\" data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.subtotal}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td class=\"highrow\"></td>\n");
      out.write("\t\t<td class=\"highrow\"></td>\n");
      out.write("\t\t<td class=\"highrow text-center\"><strong>Subtotal</strong></td>\n");
      out.write("\t\t<td class=\"highrow text-right\" data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.orderTotal}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td class=\"emptyrow\"></td>\n");
      out.write("\t\t<td class=\"emptyrow\"></td>\n");
      out.write("\t\t<td class=\"emptyrow text-center\"><strong>Tax</strong></td>\n");
      out.write("\t\t<td class=\"emptyrow text-right\" data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${#numbers.formatDecimal(order.orderTotal*0.06,0,2)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr>\n");
      out.write("\t\t<td class=\"emptyrow\"><i class=\"fa fa-barcode iconbig\"></i></td>\n");
      out.write("\t\t<td class=\"emptyrow\"></td>\n");
      out.write("\t\t<td class=\"emptyrow text-center\"><strong>Total</strong></td>\n");
      out.write("\t\t<td th:with=\"total=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${order.orderTotal+order.orderTotal*0.06}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("            data-th-text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${numbers.formatDecimal(total, 0, 2)}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("            class=\"emptyrow text-right\">\n");
      out.write("        </td>\n");
      out.write("\t</tr>\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<br/>\n");
      out.write("<p>Best Regards,</p>\n");
      out.write("<p>TradeAfrique</p>\n");
      out.write("<p>Management</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("        </section>     \n");
      out.write("                      <!-- /Where we will put all our new pages to display any logic ends here-->\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../includes/_footer.jsp", out, false);
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
