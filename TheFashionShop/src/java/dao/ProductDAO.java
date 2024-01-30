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
public class ProductDAO {

    Connection conn = null; // dùng de ket noi voi sql sever
    PreparedStatement ps = null;// ném câu lênh quari sang sql sever
    ResultSet rs = null;// dùng de nhan ket qua tra ve

    //Tung Lam
    public List<Product> getProducts() {
        List<Product> list = new ArrayList<>();
        CategoryDAO cateDAO = new CategoryDAO();
        String query = "select * from dbo.Product";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        cateDAO.getCategoryByID(rs.getInt(6))
                ));
            }
        } catch (Exception e) {
            System.out.println("Cannot get all products " + e.getMessage());
        }
        return list;
    }

    //Tung Lam
    public Product getProductByID(int proID) {
        CategoryDAO cateDAO = new CategoryDAO();
        String query = "select * from dbo.Product where Product.ProductID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, proID);
            rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setProductId(rs.getInt(1));
                p.setProductName(rs.getString(2));
                p.setDescription(rs.getString(3));
                p.setPrice(rs.getInt(4));
                p.setStock(rs.getInt(5));
                p.setCategory(cateDAO.getCategoryByID(rs.getInt(6)));
                return p;
            }
        } catch (Exception e) {
            System.out.println("Cannot get product " + e.getMessage());
        }
        return null;
    }

    //Tung Lam
    public void updateProduct(int id, String productName, String description, int price, int stock) {
        String query = "update Product set ProductName = ?"
                + ", Description = ?"
                + ", Price = ?"
                + ", Stock = ? "
                + "where ProductID = ?";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, description);
            ps.setInt(3, price);
            ps.setInt(4, stock);
            ps.setInt(5, id);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Cannot get product " + e.getMessage());
        }
    }

    public int getLastProductID() {
        String query = "SELECT TOP 1 ProductID\n"
                + "FROM Product\n"
                + "ORDER BY ProductID DESC";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                int lastID = rs.getInt(1);
                return lastID;
            }
        } catch (Exception e) {
            System.out.println("Cannot get the last id" + e.getMessage());
        }
        return 0;
    }

    public void createProduct(String productName, String description, int price, int stock, int categoryId) {
        String query = "INSERT INTO Product "
                + "(ProductName, Description, Price, Stock, CategoryID)\n"
                + "VALUES (?, ?, ?, ?, ?);";
        try {
            conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productName);
            ps.setString(2, description);
            ps.setInt(3, price);
            ps.setInt(4, stock);
            ps.setInt(5, categoryId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void deleteProduct(int productId) {
        String query = "DELETE FROM Product\n" + "WHERE ProductID = ?;";
    }

}
