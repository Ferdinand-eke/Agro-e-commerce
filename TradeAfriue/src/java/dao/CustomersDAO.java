/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Ferdinand
 */
public class CustomersDAO {
    
    public static void insertCustomer(Connection conn, Customer user) throws SQLException{
        String sql= "insert into user(first_name,last_name,phone,email,username,password,role,status) values"
                + "(?,?,?,?,?,?,?,?)";
        try {
                    PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, user.getFirstName());
        pstm.setString(2, user.getLastName());
        pstm.setString(3, user.getPhone());
        pstm.setString(4, user.getEmail());
        pstm.setString(5, user.getUsername());
        pstm.setString(6, user.getPassword());
        pstm.setString(7, user.getRole());
        pstm.setString(8, user.getStatus());
        
        int i = pstm.executeUpdate();
           if(i!=0){   
            String mssg ="SUCCESS";
            }
        } catch (SQLException e) {
            System.out.println("CustomersDAO file" + e);
        }    
    }
 
      public static Customer login(Connection conn, //
            String userName, String password) throws SQLException {
 
        String sql = "Select a.id, a.first_name, a.last_name, a.email, a.role, a.status from user a " //
                + " where (a.username = ? or a.email=?) and a.password= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, userName);
        pstm.setString(3, password);
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            int id = rs.getInt("id");
            String fname =rs.getString("first_name");
            String lname =rs.getString("last_name");
            String email =rs.getString("email");
            String role =rs.getString("role");
            String status =rs.getString("status");
            Customer user = new Customer();
            user.setId(id);
            user.setEmail(email);
            user.setFirstName(fname);
            user.setLastName(lname);
            user.setRole(role);
            user.setStatus(status);
         
            return user;
        }
        return null;
    }

 public static Customer findCustomer(Connection conn, String userName) throws SQLException {
 
        String sql = "Select a.id, a.first_name, a.last_name, a.email,a.role,a.password, a.status from user a " 
                + " where a.username = ? or a.email = ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            int id = rs.getInt("id");
            String fname = rs.getString("first_name");
            String lname = rs.getString("last_name");
            String email = rs.getString("email");
            String role = rs.getString("role");
            String status = rs.getString("status");
            Customer user = new Customer();
            user.setId(id);
            user.setEmail(email);
            user.setFirstName(fname);
            user.setLastName(lname);
            user.setRole(role);
            user.setStatus(status);
            return user;
        }
        return null;
    }
    
}
