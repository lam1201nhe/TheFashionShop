
import dao.ProductDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author nnnn
 */
public class Testing {

    public static void main(String[] args) throws SQLException {
//         ProductDAO p = new ProductDAO();
//         List<Product> listProduct = new ArrayList<>();
//         listProduct = p.getProducts();
//         for (Product product : listProduct) {
//             System.out.println(product.toString());
//         }
        ProductDAO proDAO = new ProductDAO();
        Product p = new Product();
        p = proDAO.getProductByID(1);
        int lastProID = proDAO.getLastProductID();
//        System.out.println(p.toString());
        System.out.println(lastProID);
//        System.out.println(p.getCategory().getName());
//        System.out.println(p.toString());
    }
}
