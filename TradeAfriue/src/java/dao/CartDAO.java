/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.CartItem;
import beans.Product;
import beans.ShoppingCart;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ferdinand
 */
public class CartDAO {
    
    public static String insertCartItem(Connection conn, CartItem cart) throws SQLException {
        String sql = "Insert into cart_item (customer_cartId,quantity,product_id) values (?,?,?)";
        
            try {
                PreparedStatement pstm = conn.prepareStatement(sql);
 
//        pstm.setInt(1, cart.getId());
        pstm.setString(1, cart.getCustomerCartId());
        pstm.setDouble(2, cart.getQuantity());
        pstm.setInt(3, cart.getProduct().getId());
 
        int i = pstm.executeUpdate();
                   if(i!=0){   
            return "SUCCESS";
            }
            } catch (SQLException e) {
                 System.out.println("CartDAO file:" + e);
            }
       return "FAILURE";
    }
    
    
    public static String insertShoppingCart(Connection conn, ShoppingCart shop) throws SQLException {
        String sql = "Insert into shopping_cart (id,customer_id,status,created) values (?,?,?,?)";
        
            try {
                PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, shop.getId());
        pstm.setInt(2, shop.getCustomerId());
        pstm.setString(3, shop.getStatus());
        
        pstm.setDate(4,  new java.sql.Date(shop.getCreated().getTime()));
     
 
        int i = pstm.executeUpdate();
         if(i!=0){   
            return "SUCCESS";
            }
            } catch (SQLException e) {
                 System.out.println("CartDAO file:" + e);
            }
       return "failure";
    }
    
    
    public static ShoppingCart getShoppingCart(Connection conn, String id) throws SQLException {
        String sql = "Select * from shopping_cart where id=? and status='ACTIVE'";
        String sql2 = "Select * from cart_item where customer_cartId=? ";
        String sql3 = "Select * from agroproduct where id=? ";
 //a.id, a.title, a.our_price, a.image_filename
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
 
        ResultSet rs = pstm.executeQuery();
        ShoppingCart cart = new ShoppingCart();
        CartItem item;
        Product product;
        List<CartItem> list = new ArrayList();
        if (rs.next()) {
            int cusid = rs.getInt("customer_id");
            String stat = rs.getString("status");
            Date created = rs.getDate("created");
            
            
            cart.setId(id);
            cart.setCustomerId(cusid);
            cart.setStatus(stat);
            cart.setCreated(created);
            
            PreparedStatement pstm2 = conn.prepareStatement(sql2);
            pstm2.setString(1, id);
            ResultSet rs2 = pstm2.executeQuery();
            while (rs2.next()) {
                item = new CartItem();
                item.setCustomerCartId(id);
                item.setId(rs2.getInt("id"));
                PreparedStatement pstm3 = conn.prepareStatement(sql3);
                pstm3.setInt(1, rs2.getInt("product_id"));
                
                product = new Product();
                ResultSet rs3 = pstm3.executeQuery();
                if (rs3.next()) {
                    
                    int product_id = rs3.getInt("id");
                    String name = rs3.getString("title");
                    String prod = rs3.getString("producer");
                    float lprice = rs3.getFloat("list_price");
                    float price = rs3.getFloat("our_price");
                    float weight = rs3.getFloat("shipping_weight");
                    String weightU = rs3.getString("shipping_weightUnit");
                    String inStNo = rs3.getString("in_stock_number");
                    String filename = rs3.getString("image_filename");

                    System.out.println(" the products are here" + name);
                    
                    product.setId(product_id);
                    product.setProducer(prod);
                    product.setName(name);
                    product.setListpPrice(lprice);
                    product.setPrice(price);
                    product.setShippingWeight((float) weight);
                    product.setShippingWeightUnit(weightU);
                    product.setInStockNumber(inStNo);
                    product.setFilename(filename);
                }
                item.setProduct(product);
                item.setQuantity(rs2.getFloat("quantity"));
                
                list.add(item);
            }
            
            cart.setCartItems(list);
           
        }
        return cart;
    } 
    
    
     public static void updateProduct(Connection conn, ShoppingCart ca) throws SQLException {
     
         String sql = "Update shopping_cart set status=? where id=?";
         
         try {
                    PreparedStatement pstm5 = conn.prepareStatement(sql);
          
            pstm5.setString(1, ca.getStatus());
            pstm5.setString(2, ca.getId());
            
            int f = pstm5.executeUpdate();
         } catch (Exception e) {
         }
     }
    
    
    
}
