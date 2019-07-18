/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ferdinand
 */


/*
ALL PRODUCTS DATA MANIPULATION ATTRIBUTED TO SELLERS SECTION STARTS HERE
*/

public class ProductDAO {
    
        public static void insertProduct(Connection conn, Product product) throws SQLException {
        String sql = "Insert into agroproduct (title,category,producer,list_price,our_price,description,shipping_weight,shipping_weightUnit,in_stock_number,image_filename,publisher,publication_date,status,origin) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
            try {
                PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, product.getName());
        pstm.setString(2, product.getCategory());
        pstm.setString(3, product.getProducer());
        pstm.setDouble(4, product.getListpPrice());
        pstm.setDouble(5, product.getPrice());
        pstm.setString(6, product.getDescription());
        pstm.setDouble(7, product.getShippingWeight());
        pstm.setString(8, product.getShippingWeightUnit());
        pstm.setString(9, product.getInStockNumber());
        pstm.setString(10, product.getFilename());
        pstm.setString(11, product.getPublisherCompany());
        pstm.setString(12, product.getPublicationDate());
        pstm.setString(13, product.getStatus());
        pstm.setString(14, product.getOrigin());
 
        int i = pstm.executeUpdate();
                   if(i!=0){   
            String mssg ="SUCCESS";
            }
            } catch (SQLException e) {
                 System.out.println("ProductDAO file:" + e);
            }
       
    }
        
           public static List<Product> queryProduct(Connection conn) throws SQLException {
        String sql = "Select * from agroproduct  ";
 //a.id, a.title, a.our_price, a.image_filename   where status=Active
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("title");
            String cat = rs.getString("category");
            String prod = rs.getString("producer");
            double lprice = rs.getDouble("list_price");
            double price = rs.getDouble("our_price");
            double weight = rs.getDouble("shipping_weight");
            String weightU = rs.getString("shipping_weightUnit");
            String inStNo = rs.getString("in_stock_number");
            String filename = rs.getString("image_filename");
            
            String desc = rs.getString("description");
            String publiCom = rs.getString("publisher");
            String pubDate = rs.getString("publication_date");
            String stat = rs.getString("status");
            String origin = rs.getString("origin");
            
            
            Product product = new Product();
            product.setId(id);
            product.setName(name);
            product.setCategory(cat);
            product.setProducer(prod);
            product.setListpPrice(lprice);
            product.setPrice(price);
            product.setShippingWeight((double) weight);
            product.setShippingWeightUnit(weightU);
            product.setInStockNumber(inStNo);
            product.setFilename(filename);
            product.setDescription(desc);
            product.setPublisherCompany(publiCom);
            product.setPublicationDate(pubDate); 
            product.setStatus(stat);
            product.setOrigin(origin);
            list.add(product);
        }
        return list;
    } 
           
           
           public static Product getProduct(Connection conn, int id) throws SQLException {
        String sql = "Select * from agroproduct where id=? ";
 //a.id, a.title, a.our_price, a.image_filename
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, id);
 
        ResultSet rs = pstm.executeQuery();
        Product product = new Product();
        if (rs.next()) {
            String name = rs.getString("title");
            String cat = rs.getString("category");
            String prod = rs.getString("producer");
            double lprice = rs.getDouble("list_price");
            double price = rs.getDouble("our_price");
            double weight = rs.getDouble("shipping_weight");
            String weightU = rs.getString("shipping_weightUnit");
            String inStNo = rs.getString("in_stock_number");
            String filename = rs.getString("image_filename");
             String desc = rs.getString("description");
            String publiCom = rs.getString("publisher");
            String pubDate = rs.getString("publication_date");
            String stat = rs.getString("status");
            String origin = rs.getString("origin");
            
            product.setId(id);
            product.setCategory(cat);
            product.setProducer(prod);
            product.setName(name);
            product.setListpPrice(lprice);
            product.setPrice(price);
            product.setShippingWeight((double) weight);
            product.setShippingWeightUnit(weightU);
            product.setInStockNumber(inStNo);
            product.setFilename(filename);
            product.setDescription(desc);
            product.setPublisherCompany(publiCom);
            product.setPublicationDate(pubDate);
            product.setStatus(stat);
            product.setOrigin(origin);
        }
        return product;
    } 
        
/*
/ALL PRODUCTS DATA MANIPULATION ATTRIBUTED TO SELLERS SECTION ENDS HERE/
*/
 //===========================================================================================================================          
           
/*
ALL PRODUCTS DATA MANIPULATION ATTRIBUTED TO BUYERS SECTION STARTS HERE
*/
           public static List<Product> UserqueryProduct(Connection conn) throws SQLException {
        String sql = "Select * from agroproduct ORDER BY RAND() LIMIT 0,9";
 //a.id, a.title, a.our_price, a.image_filename
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("title");
            String category = rs.getString("category");
            String prod = rs.getString("producer");
            float lprice = rs.getFloat("list_price");
            float price = rs.getFloat("our_price");
            float weight = rs.getFloat("shipping_weight");
            String weightU = rs.getString("shipping_weightUnit");
            String inStNo = rs.getString("in_stock_number");
            String filename = rs.getString("image_filename");
            String desc = rs.getString("description");
            String publiCom = rs.getString("publisher");
            String pubDate = rs.getString("publication_date");
            String stat = rs.getString("status");
            String origin = rs.getString("origin");
            Product product = new Product();
            product.setId(id);
            product.setProducer(prod);
            product.setCategory(category);
            product.setName(name);
            product.setListpPrice(lprice);
            product.setPrice(price);
            product.setShippingWeight((float) weight);
            product.setShippingWeightUnit(weightU);
            product.setInStockNumber(inStNo);
            product.setFilename(filename);
            product.setDescription(desc);
            product.setPublisherCompany(publiCom);
            product.setPublicationDate(pubDate);
            product.setStatus(stat);
            product.setOrigin(origin);
            list.add(product);
        }
        return list;
    } 

    public static void deleteProduct(Connection conn, int id) throws SQLException {

         String sql = "Delete From agroproduct where id= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setInt(1, id);
 
        pstm.executeUpdate();
    
    }
    
//        public static void updateProduct(Connection conn, Product product) throws SQLException {
//        String sql = "Update Product set Name =?, Price=? where Code=? ";
// 
//        PreparedStatement pstm = conn.prepareStatement(sql);
// 
//        pstm.setString(1, product.getName());
//        pstm.setFloat(2, product.getPrice());
//        pstm.setString(3, product.getCode());
//        pstm.executeUpdate();
//    }
//    
    
    
    public static void updateProduct(Connection conn, Product product) throws SQLException {
        String sql = "Update agroproduct set title=?, category=?, producer=?, list_price=?, our_price=?, description=?, shipping_weight=?, shipping_weightUnit=?, in_stock_number=?, image_filename=?, publisher=?, publication_date=?, status=?, origin=? where id=?";
        
            try {
                PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, product.getName());
        pstm.setString(2, product.getCategory());
        pstm.setString(3, product.getProducer());
        pstm.setDouble(4, product.getListpPrice());
        pstm.setDouble(5, product.getPrice());
        pstm.setString(6, product.getDescription());
        pstm.setDouble(7, product.getShippingWeight());
        pstm.setString(8, product.getShippingWeightUnit());
        pstm.setString(9, product.getInStockNumber());
        pstm.setString(10, product.getFilename());
        pstm.setString(11, product.getPublisherCompany());
        pstm.setString(12, product.getPublicationDate());
        pstm.setString(13, product.getStatus());
        pstm.setString(14, product.getOrigin());
        pstm.setInt(15, product.getId());
 
        int i = pstm.executeUpdate();
                   if(i!=0){   
            String mssg ="SUCCESS";
            }
            } catch (SQLException e) {
                 System.out.println("ProductDAO file:" + e);
            }
       
    }
    
    
           
}
