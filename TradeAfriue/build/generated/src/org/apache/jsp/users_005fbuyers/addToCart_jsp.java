package org.apache.jsp.users_005fbuyers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addToCart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("           <form th:action=\"@{/shoppingCart/addItem}\" method=\"post\">\n");
      out.write("    \t<input hidden=\"hidden\" th:field=\"*{book.id}\" />\n");
      out.write("    \t<div class=\"row\" style=\"margin-top: 120px;\">\n");
      out.write("    \t\t<div class=\"col-xs-3\">\n");
      out.write("    \t\t\t<a th:href=\"@{/bookshelf}\">Back to book list</a><br/>\n");
      out.write("    \t\t\t<img class=\"img-responsive shelf-book\" th:src=\"+@{/image/book/}+");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("+'.png'\" />\n");
      out.write("    \t\t</div>\n");
      out.write("    \t\t\n");
      out.write("    \t\t<div class=\"col-xs-9\">\n");
      out.write("    \t\t\t<h3><span th:if=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${addBookSuccess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" style=\"color: forestgreen\"><i class=\"fa fa-check\" aria-hidden=\"true\" style=\"color: forestgreen\"></i>Added to cart.</span></h3>\n");
      out.write("    \t\t\t<h3><span th:if=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${notEnoughStock}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" style=\"color: red\">Oops, only <span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.inStockNumber}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span> In Stock.</span></h3>\n");
      out.write("    \t\t\t<h3 th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">Book Title</h3>\n");
      out.write("    \t\t\t<div class=\"row\">\n");
      out.write("    \t\t\t\t<div class=\"col-xs-5\">\n");
      out.write("    \t\t\t\t\t<h5><strong>Author: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.author}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></h5>\n");
      out.write("    \t\t\t\t\t<p><strong>Publisher: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.publisher}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></p>\n");
      out.write("    \t\t\t\t\t<p><strong>Publication Date: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.publicationDate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></p>\n");
      out.write("    \t\t\t\t\t<p><strong>Language: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.language}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></p>\n");
      out.write("    \t\t\t\t\t<p><strong>Category: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.category}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></p>\n");
      out.write("    \t\t\t\t\t<p><strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.format}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span>: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.numberOfPages}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span> pages</p>\n");
      out.write("    \t\t\t\t\t<p><strong>ISBN: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.isbn}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></p>\n");
      out.write("    \t\t\t\t\t<p><strong>Shipping Weight: </strong><span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.shippingWeight}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span> ounces</p>\n");
      out.write("    \t\t\t\t</div>\n");
      out.write("    \t\t\t\t\n");
      out.write("    \t\t\t\t<div class=\"col-xs-7\">\n");
      out.write("    \t\t\t\t\t<div class=\"panel panel-default\" style=\"border-width: 5px; margin-top: 20px;\">\n");
      out.write("    \t\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("    \t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("    \t\t\t\t\t\t\t\t<div class=\"col-xs-6\">\n");
      out.write("    \t\t\t\t\t\t\t\t\t<h4>Our Price: <span style=\"color:#db3208;\">$<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.ourPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></span></h4>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<p>List Price: <span style=\"text-decoration: line-through\">$<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.listPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></span></p>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<p>You save: $<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${#numbers.formatDecimal((book.listPrice - book.ourPrice), 0, 'COMMA', 2, 'POINT' )}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span></p>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<span>Qty: </span>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<select name=\"qty\">\n");
      out.write("    \t\t\t\t\t\t\t\t\t\t<option th:each=\"qty : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${qtyList}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" th:value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${qty}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${qty}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("    \t\t\t\t\t\t\t\t\t\t</option>\n");
      out.write("    \t\t\t\t\t\t\t\t\t</select>\n");
      out.write("    \t\t\t\t\t\t\t\t</div>\n");
      out.write("    \t\t\t\t\t\t\t\t<div class=\"col-xs-6\">\n");
      out.write("    \t\t\t\t\t\t\t\t\t<h4 th:if=\"*{book.inStockNumber&gt;10}\" style=\"color: green\">In Stock</h4>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<h4 th:if=\"*{book.inStockNumber&lt;10 and book.inStockNumber&gt;0}\" style=\"color: green\">Only <span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.inStockNumber}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> </span> In Stock</h4>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<h4 th:if=\"*{book.inStockNumber==0}\" style=\"color:darkred;\">Unavailable</h4>\n");
      out.write("    \t\t\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-warning\" style=\"color:black;border:1px solid black; padding: 10px 40px 10px 40px;\">Add to Cart</button>\n");
      out.write("    \t\t\t\t\t\t\t\t</div>\n");
      out.write("    \t\t\t\t\t\t\t</div>\n");
      out.write("    \t\t\t\t\t\t</div>\n");
      out.write("    \t\t\t\t\t</div>\n");
      out.write("    \t\t\t\t</div>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t\t\n");
      out.write("    \t\t\t<hr/>\n");
      out.write("    \t\t\t<p th:utext=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${book.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></p>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t</div>\n");
      out.write("    </form>\n");
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
