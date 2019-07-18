/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.CustomerBilling;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Ferdinand
 */
public class CustomerBillingDAO {
    
    public static void insertCustomerBilling(Connection conn, CustomerBilling cb) throws SQLException{
        String sql= "insert into user_billing(user_billing_city,user_billing_country,user_billing_name,user_billing_state,user_billing_street1,user_billing_street2,user_billing_zipcode,user_payment_id) values"
                + "(?,?,?,?,?,?,?,?)";
        try {
                    PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, cb.getUserBillingCity());
        pstm.setString(2, cb.getUserBillingCountry());
        pstm.setString(3, cb.getUserBillingName());
        pstm.setString(4, cb.getUserBillingState());
        pstm.setString(5, cb.getUserBillingStreet1());
        pstm.setString(6, cb.getUserBillingStreet2());
        pstm.setString(7, cb.getUserBillingZipCode());
        pstm.setString(8, cb.getUserId());
        
        int i = pstm.executeUpdate();
           if(i!=0){   
            String mssg ="SUCCESS";
            }
        } catch (SQLException e) {
            System.out.println("CustomerBillingDAO file" + e);
        }    
    }
    
    
    public static CustomerBilling findCustomerBilling(Connection conn, String userName) throws SQLException {
 
        String sql = "Select a.id, a.user_billing_city, a.user_billing_country, a.user_billing_name,a.user_billing_state,a.user_billing_street1, a.user_billing_street2, a.user_billing_zipcode from user_billing a " 
                + " where a.user_payment_id = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            int id = rs.getInt("id");
            String city = rs.getString("user_billing_city");
            String country = rs.getString("user_billing_country");
            String name = rs.getString("user_billing_name");
            String state = rs.getString("user_billing_state");
            String str1 = rs.getString("user_billing_street1");
            String str2 = rs.getString("user_billing_street2");
            String zip = rs.getString("user_billing_zipcode");
            
            CustomerBilling cb = new CustomerBilling();
            cb.setId(id);
            cb.setUserBillingCity(city);
            cb.setUserBillingCountry(country);
            cb.setUserBillingName(name);
            cb.setUserBillingState(state);
            cb.setUserBillingStreet1(str1);
            cb.setUserBillingStreet2(str2);
            cb.setUserBillingZipCode(zip);
            return cb;
        }
        return null;
    }
    
}
