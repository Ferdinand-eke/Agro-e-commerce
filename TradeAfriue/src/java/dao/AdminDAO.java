/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Zinachi Computer
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
 
import beans.Admin;

 
public class AdminDAO {
    
    public static void insertAdmim(Connection conn, Admin admin) throws SQLException{
        String sql= "insert into admin(fname,lname,phone,email,username,password,admin_role,status) values"
                + "(?,?,?,?,?,?,?,?)";
        try {
                    PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, admin.getFirstName());
        pstm.setString(2, admin.getLastName());
        pstm.setString(3, admin.getPhone());
        pstm.setString(4, admin.getEmail());
        pstm.setString(5, admin.getUsername());
        pstm.setString(6, admin.getPassword());
        pstm.setString(7, admin.getRole());
        pstm.setString(8, admin.getStatus());
        
        int i = pstm.executeUpdate();
           if(i!=0){   
            String mssg ="SUCCESS";
            }
        } catch (SQLException e) {
            System.out.println("AdminDAO file" + e);
        }    
    }
 
    public static Admin login(Connection conn, //
            String userName, String password) throws SQLException {
 
        String sql = "Select a.id, a.fname, a.lname, a.email, a.admin_role, a.status from admin a " //
                + " where (a.username = ? or a.email=?) and a.password= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, userName);
        pstm.setString(3, password);
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            int id = rs.getInt("id");
            String fname =rs.getString("fname");
            String lname =rs.getString("lname");
            String email =rs.getString("email");
            String role =rs.getString("admin_role");
            String status =rs.getString("status");
            Admin admin = new Admin();
            admin.setId(id);
            admin.setEmail(email);
            admin.setFirstName(fname);
            admin.setLastName(lname);
            admin.setRole(role);
            admin.setStatus(status);
         
            return admin;
        }
        return null;
    }

 public static Admin findAdmin(Connection conn, String userName) throws SQLException {
 
        String sql = "Select a.id, a.fname, a.lname, a.email,a.admin_role,a.password, a.status from admin a " 
                + " where a.username = ? or a.email = ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            int id = rs.getInt("id");
            String fname = rs.getString("fname");
            String lname = rs.getString("lname");
            String email = rs.getString("email");
            String role = rs.getString("admin_role");
            String status = rs.getString("status");
            Admin admin = new Admin();
            admin.setId(id);
            admin.setEmail(email);
            admin.setFirstName(fname);
            admin.setLastName(lname);
            admin.setRole(role);
            admin.setStatus(status);
            return admin;
        }
        return null;
    }
    
 
}
