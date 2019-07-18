/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_sellers;

import Utils.MyUtils;
import beans.Product;
import conn.ConnectionUtils;
import static conn.ConnectionUtils.getConnection;
import static dao.ProductDAO.insertProduct;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Ferdinand
 */
@WebServlet(name = "AddProduceServlet", urlPatterns = {"/addproduct"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5)

public class AddProduceServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final String UPLOAD_DIRECTORY = "resources/upload";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (MyUtils.getLoginedAdmin(session) == null) {
            // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/admin");
        } else {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/WEB-INF/views/admin/addproducts.jsp");

            dispatcher.forward(request, response);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (MyUtils.getLoginedAdmin(session) == null) {
            // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/admin");
        } else {
            String errorString ;
            Product product ;

            String name = request.getParameter("title");
            String category = request.getParameter("category");
            String producer = request.getParameter("author");

            String listpriceStr = request.getParameter("listPrice");

            String priceStr = request.getParameter("ourPrice");

            String description = request.getParameter("description");

            String shippnWeight = request.getParameter("shippingWeight");

            String shippnWeightUnit = request.getParameter("shippingWUnit");
            String inStockNumber = request.getParameter("inStockNumber");
            // String fileName = (String) request.getParameter("productImage");
            String PubCompany = request.getParameter("publisher");
            String PubDate = request.getParameter("publicationDate");
            String status = request.getParameter("status");
            String origin = request.getParameter("origin");

            try {

                //PARSING DATA TYPES
                double price = Double.parseDouble(priceStr);
                double listprice = Double.parseDouble(listpriceStr);
                double shpnWeight = Double.parseDouble(shippnWeight);

                Part filePart = request.getPart("productImage");
                String filename = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

                try (InputStream fileContent = filePart.getInputStream()) {
                    //String filePath = getServletContext().getRealPath(UPLOAD_DIRECTORY + File.separator + filename); 
                    String filePath = getServletContext().getRealPath("/") + UPLOAD_DIRECTORY + File.separator + filename;
                    //                    File dir = new File(getServletContext().getInitParameter("image-upload"));
                    File file = new File(filePath);
                    Files.copy(fileContent, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
                    System.out.println("step 2");
                }

                //INSERTING PRODUCTS
                // product.setFilename(filename);
                product = new Product(name, category, producer, listprice, price, description, shpnWeight, shippnWeightUnit,
                        inStockNumber, filename, PubCompany, PubDate, status, origin);

                //PRINT PRODUCT TO TEST IF DATAS ARE NOT NULL
                System.out.println(product);

                String errorMssg ;
                if (name == null || shippnWeightUnit == null || status == null || price == 0.00 || shpnWeight == 0.00) {
//|| price == null  || inStockNumber == null || shpnWeight== null
                    errorMssg = "One or more Key product attributes are empty!";
                    System.out.println("step 0");

                    request.setAttribute("errorMssg", errorMssg);
                    RequestDispatcher dispatcher //
                            = this.getServletContext().getRequestDispatcher("/WEB-INF/views/admin/addproducts.jsp");//  
                    dispatcher.forward(request, response);
                } else {
                    try {

                        Connection conn = getConnection();
                        insertProduct(conn, product);

                        System.out.println("step 3");

                        String successMsg = "Product Created Successfully";
                        request.setAttribute("successMsg", successMsg);
                        System.out.println("step 4");

                        ConnectionUtils.closeQuietly(conn);

                        System.out.println("step 5");

                        // Store infomation to request attribute, before forward to views.
//            System.out.println("message" + errorMssg);
                        request.setAttribute("successMsg", successMsg);
                        request.setAttribute("product", product);

                        RequestDispatcher dispatcher //
                                = this.getServletContext().getRequestDispatcher("/WEB-INF/views/admin/addproducts.jsp");//  
                        dispatcher.forward(request, response);
                    } catch (ClassNotFoundException | SQLException e) {
                        errorMssg = e.getMessage();

                    }
                }

            } catch (NumberFormatException e) {
                e.getMessage();
            } catch (IOException | ServletException ex) {
                request.setAttribute("message", "File Upload Failed due to "
                        + ex);
                errorString = "File Upload Failed due to " + ex.getMessage();
            }

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
