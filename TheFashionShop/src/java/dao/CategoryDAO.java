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
import model.Category;
import model.Product;

/**
 *
 * @author nnnn
 */
public class CategoryDAO {

    Connection conn = null; // dùng de ket noi voi sql sever
    PreparedStatement ps = null;// ném câu lênh quari sang sql sever
    ResultSet rs = null;// dùng de nhan ket qua tra ve

    public Category getCategoryByID(int cateID) {
        String query = "select * from dbo.Category where Category.CategoryID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cateID);
            rs = ps.executeQuery();
            if (rs.next()) {
                Category cate = new Category();
                cate.setId(rs.getInt("CategoryID"));
                cate.setName(rs.getString("Name"));
                return cate;
            }
        } catch (Exception e) {
            System.out.println("Cannot get all products " + e.getMessage());
        }
        return null;
    }
}
