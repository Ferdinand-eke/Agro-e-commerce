package org.apache.jsp.users_005fbuyers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class orderSubmitted_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            <div class=\"container-fluid\">\n");
      out.write("\t\t<div class=\"row\" style=\"margin-bottom: -100px;\">\n");
      out.write("\t\t\t<div class=\"col-xs-8\">\n");
      out.write("\t\t\t\t<h2 class=\"section-headline\">\n");
      out.write("\t\t\t\t\t<span>User Account</span>\n");
      out.write("\t\t\t\t</h2>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-xs-4\">\n");
      out.write("\t\t\t\t<img src=\"/image/logo.png\" class=\"img-responsive\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t\t<div class=\"row\" style=\"margin-top: 10px;\">\n");
      out.write("\t\t\t<div class=\"col-xs-12\">\n");
      out.write("\t\t\t\t<div class=\"alert alert-success\">\n");
      out.write("\t\t\t\t\t<h3>\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-check\" aria-hidden=\"true\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"color: limegreen;\"></i> Thank you, your order has been\n");
      out.write("\t\t\t\t\t\tplaced.\n");
      out.write("\t\t\t\t\t</h3>\n");
      out.write("\t\t\t\t\t<h4>\n");
      out.write("\t\t\t\t\t\tThe estimated delivery date is <span\n");
      out.write("\t\t\t\t\t\t\tth:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${estimatedDeliveryDate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></span>\n");
      out.write("\t\t\t\t\t</h4>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<h3>List of Items</h3>\n");
      out.write("\t\t\t\t<div class=\"row\" th:each=\"cartItem : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItemList}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("\t\t\t\t\t<hr />\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-2\"></div>\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-2\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<a th:href=\"@{/bookDetail(id=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(")}\"> <img\n");
      out.write("\t\t\t\t\t\t\tclass=\"img-responsive shelf-book\"\n");
      out.write("\t\t\t\t\t\t\tth:src=\"+@{/image/book/}+");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("+'.png'\"\n");
      out.write("\t\t\t\t\t\t\tstyle=\"width: 70px;\" />\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-6\">\n");
      out.write("\t\t\t\t\t\t<div style=\"margin-left: 50px;\">\n");
      out.write("\t\t\t\t\t\t\t<a th:href=\"@{/bookDetail?id=}+");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><h4\n");
      out.write("\t\t\t\t\t\t\t\t\tth:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></h4></a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"col-xs-2\">\n");
      out.write("\t\t\t\t\t\t<h5 style=\"color: #db3208; font-size: large;\">\n");
      out.write("\t\t\t\t\t\t\t$<span th:text=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.ourPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("\t\t\t\t\t\t\t\tth:style=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cartItem.book.inStockNumber}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("==0? 'text-decoration: line-through' : ''\"></span>\n");
      out.write("\t\t\t\t\t\t</h5>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end of container -->\n");
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
