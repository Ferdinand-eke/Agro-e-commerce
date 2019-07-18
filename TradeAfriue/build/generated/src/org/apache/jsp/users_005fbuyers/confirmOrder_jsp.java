package org.apache.jsp.users_005fbuyers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class confirmOrder_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<section id=\"cart_items\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"breadcrumbs\">\n");
      out.write("\t\t\t\t<ol class=\"breadcrumb\">\n");
      out.write("\t\t\t\t  <li><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t\t  <li class=\"active\">Check out</li>\n");
      out.write("\t\t\t\t</ol>\n");
      out.write("\t\t\t</div><!--/breadcrums-->\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"step-one\">\n");
      out.write("\t\t\t\t<h2 class=\"heading\">Step1</h2>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!--/checkout-options-->\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\t\t\t<div class=\"register-req\">\n");
      out.write("\t\t\t\t<p>Please give proper details to easily get items at your delivered address.</p>\n");
      out.write("\t\t\t</div><!--/register-req-->\n");
      out.write("\n");
      out.write("                        <div class=\"review-payment\">\n");
      out.write("\t\t\t\t<h2>Review & Payment</h2>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"table-responsive cart_info\">\n");
      out.write("\t\t\t\t<table class=\"table table-condensed\">\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr class=\"cart_menu\">\n");
      out.write("\t\t\t\t\t\t\t<td class=\"image\">Item</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"description\"></td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"price\">Price</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"quantity\">Quantity</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"total\">Total</td>\n");
      out.write("\t\t\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_product\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"\"><img src=\"images/cart/one.png\" alt=\"\"></a>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_description\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4><a href=\"\">Colorblock Scuba</a></h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p>Web ID: 1089772</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_price\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>$59</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_quantity\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"cart_quantity_button\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"cart_quantity_up\" href=\"\"> + </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"cart_quantity_input\" type=\"text\" name=\"quantity\" value=\"1\" autocomplete=\"off\" size=\"2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"cart_quantity_down\" href=\"\"> - </a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_total\">\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"cart_total_price\">$59</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_delete\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"cart_quantity_delete\" href=\"\"><i class=\"fa fa-times\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_product\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"\"><img src=\"images/cart/two.png\" alt=\"\"></a>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_description\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4><a href=\"\">Colorblock Scuba</a></h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p>Web ID: 1089772</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_price\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>$59</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_quantity\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"cart_quantity_button\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"cart_quantity_up\" href=\"\"> + </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"cart_quantity_input\" type=\"text\" name=\"quantity\" value=\"1\" autocomplete=\"off\" size=\"2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"cart_quantity_down\" href=\"\"> - </a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_total\">\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"cart_total_price\">$59</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_delete\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"cart_quantity_delete\" href=\"\"><i class=\"fa fa-times\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_product\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"\"><img src=\"images/cart/three.png\" alt=\"\"></a>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_description\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4><a href=\"\">Colorblock Scuba</a></h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p>Web ID: 1089772</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_price\">\n");
      out.write("\t\t\t\t\t\t\t\t<p>$59</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_quantity\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"cart_quantity_button\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"cart_quantity_up\" href=\"\"> + </a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<input class=\"cart_quantity_input\" type=\"text\" name=\"quantity\" value=\"1\" autocomplete=\"off\" size=\"2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"cart_quantity_down\" href=\"\"> - </a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_total\">\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"cart_total_price\">$59</p>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t\t<td class=\"cart_delete\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"cart_quantity_delete\" href=\"\"><i class=\"fa fa-times\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td colspan=\"4\">&nbsp;</td>\n");
      out.write("\t\t\t\t\t\t\t<td colspan=\"2\">\n");
      out.write("\t\t\t\t\t\t\t\t<table class=\"table table-condensed total-result\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Cart Sub Total</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>$59</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Exo Tax</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>$2</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr class=\"shipping-cost\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Shipping Cost</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Free</td>\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td>Total</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><span>$61</span></td>\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"payment-options\">\n");
      out.write("\t\t\t\t\t<span>\n");
      out.write("\t\t\t\t\t\t<label><input type=\"checkbox\"> Direct Bank Transfer</label>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t<span>\n");
      out.write("\t\t\t\t\t\t<label><input type=\"checkbox\"> Check Payment</label>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t<span>\n");
      out.write("\t\t\t\t\t\t<label><input type=\"checkbox\"> Paypal</label>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t<div class=\"shopper-informations\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-3\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-5 clearfix\">\n");
      out.write("\t\t\t\t\t\t<div class=\"bill-to\">\n");
      out.write("\t\t\t\t\t\t\t<p>Bill To</p>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-one\">\n");
      out.write("\t\t\t\t\t\t\t\t<form>\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"First Name\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Last Name\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Email\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Resi. Address\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"City\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Pincode\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Contact Number\" style=\"width:350px; background-color: #0480be\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"submit1\" value=\"save\" style=\"background-color:#843534; color:white; font-weight:bold\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" ");
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
