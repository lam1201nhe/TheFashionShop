/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Customer;
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
    
    
      public List<Customer> getCustomers(){
        List<Customer> list = new ArrayList<>();
         
        String query = "select * from Customer";
        
        try{
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                list.add(new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6))
                
                
                
                );
            }
            
            
            
            
            
        }catch(Exception e){
            System.out.println("Cannot get Customer " + e.getMessage());
        }
        return list;
    }
    
}

