/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;
/**
 *
 * @author Admin
 */
public class CustomerDAO {
    Connection conn = null;
    PreparedStatement ps = null; 
    ResultSet rs = null;        
    
    public Account checkLogin(String email, String pass){
        try {
            String query ="select * from Customer where Email =? and Password=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                Account a = new Account(rs.getString(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }
        
        return null; 
    }
    
    public boolean registerUser(String email, String password) {
        try {
            String query = "INSERT INTO Customer (Email, Password) VALUES (?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
           

            int result = ps.executeUpdate();
            return result > 0;
        } catch (Exception e) {
           
        } finally {
            // Close resources (Connection, PreparedStatement, ResultSet) here if needed
        }
        return false;
    }
}

