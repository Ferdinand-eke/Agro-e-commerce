/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Order;
import beans.OrderBillingAddress;
import beans.OrderPaymentInfo;
import beans.OrderShippingAddress;
import beans.ShoppingCart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Ferdinand
 */
public class CheckOutDAO {
    
     public static String checkOut(Connection conn, Order od, OrderShippingAddress osa, OrderPaymentInfo op, OrderBillingAddress ob) throws SQLException {
       
         //, ShoppingCart ca
         
         
         String sql = "Insert into orders (id,order_date,order_status,order_total,shipping_method,user_id) values (?,?,?,?,?,?)";
              
        String sql2 = "Insert into order_shippingaddr (order_id,shipping_address_name,shipping_address_street1,shipping_address_street2,shipping_address_city,shipping_address_country,shipping_address_zipcode)"
                + " values (?,?,?,?,?,?,?)";
        
        String sql3 = "Insert into order_payment (type,holder_name,card_number,expiry_month,expiry_year,cvc,order_id)"
                + " values (?,?,?,?,?,?,?)";
        
        String sql4 = "Insert into order_billingaddr(order_id,billing_address_name,billing_address_street1,billing_address_street2,billing_address_city,billing_address_country,billing_address_zipcode)"
                + " values (?,?,?,?,?,?,?)";
        
        //String sql5 = "Update shopping_cart set status=? where id=?";
        
         System.out.println("step 4: ");
            try {
                conn.setAutoCommit(false);
                
                //executing statement 1
                PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, od.getId());
        pstm.setDate(2,  new java.sql.Date(od.getOrderDate().getTime()));
        pstm.setString(3, od.getOrderStatus());
        pstm.setDouble(4, od.getOrderTotal());
        pstm.setString(5, od.getShippingMethod());
        pstm.setInt(6, od.getUserId());
            
            int i;
            i = pstm.executeUpdate();
        
                System.out.println("yes  ohh");
        //executing statement 2
        PreparedStatement pstm2 = conn.prepareStatement(sql2);
        pstm2.setString(1, osa.getOrderid());
        pstm2.setString(2,  osa.getOrderShippingName());
        pstm2.setString(3, osa.getOrderShippingStreet1());
        pstm2.setString(4, osa.getOrderShippingStreet2());
        pstm2.setString(5, osa.getOrderShippingCity());
        pstm2.setString(6, osa.getOrderShippingCountry());
        pstm2.setString(7, osa.getOrderShippingZipCode());
        
        i = pstm2.executeUpdate();
        
        //executing statement 3
                PreparedStatement pstm3 = conn.prepareStatement(sql3);
//       
        pstm3.setString(1,  op.getCardName());
        pstm3.setString(2, op.getCardName());
        pstm3.setString(3, op.getCardNumber());
        pstm3.setInt(4, op.getExpiryMonth());
        pstm3.setInt(5, op.getExpiryYear());
         pstm3.setInt(6, op.getCvc());
        pstm3.setString(7, op.getOrderId());
        
       i = pstm3.executeUpdate();
        
        
        
        
        //executing statement 4
                PreparedStatement pstm4 = conn.prepareStatement(sql4);
        pstm4.setString(1, ob.getOrderId());
        pstm4.setString(2,  ob.getOrderBillingName());
        pstm4.setString(3, ob.getOrderBillingStreet1());
        pstm4.setString(4, ob.getOrderBillingStreet2());
        pstm4.setString(5, ob.getOrderBillingCity());
        pstm4.setString(6, ob.getOrderBillingCountry());
        pstm4.setString(7, ob.getOrderBillingZipCode());
        
       int e = pstm4.executeUpdate();
        System.out.println("step 5:");
        
//          PreparedStatement pstm5 = conn.prepareStatement(sql5);
//          
//            pstm5.setString(1, ca.getStatus());
//            pstm5.setString(2, ca.getId());
//       
//        
//        int f = pstm5.executeUpdate();
        
        conn.commit();
        System.out.println("step 6");
        
          if(e!=0){  
              System.out.println("");
            return "SUCCESS";
            }
            } catch (SQLException e) {
                System.out.println("step 7:");
                conn.rollback();
                 System.out.println("CheckOutDAO file:" + e);
            }
       return "failure";
    }
    
}
