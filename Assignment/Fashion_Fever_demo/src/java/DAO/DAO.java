/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import entity.Brand;
import entity.Product;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from products";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getDouble(7),
                        getImageUrls(rs.getString(1))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getbestsellerProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT top 3 *\n"
                + "FROM products\n"
                + "where amount_sold > 30\n"
                + "ORDER BY NEWID()";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getDouble(7),
                        getImageUrls(rs.getString(1))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Brand> getAllBrand() {
        List<Brand> list = new ArrayList<>();
        String query = "SELECT * FROM brands";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Brand(rs.getString(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String id) {
        String query = "delete from products \n"
                + "where productID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteimage(String id) {
        String query = "delete from images\n"
                + "where product_idi = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String id, String name, String description, String brandname, String price) {
        String query = "update products\n"
                + "SET productNAME = ?,\n"
                + "description = ?,\n"
                + "brand_id = ?,\n"
                + "unitPrice = ?\n"
                + "where productID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, brandname);
            ps.setString(4, price);
            ps.setString(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editImage(String id, String img) {
        String query = "update images \n"
                + "set imageURL = ?,\n"
                + "where product_idi = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getProductbyBrand(String bid) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products\n"
                + "where brand_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getDouble(7),
                        getImageUrls(rs.getString(1))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> get_top3_ProductbyBrand(String bid) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT TOP 3 *\n"
                + "FROM products\n"
                + "where brand_id = ?\n"
                + "ORDER BY NEWID()";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, bid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getDouble(7),
                        getImageUrls(rs.getString(1))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductbyid(String id) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products\n"
                + "where productID = ? ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getDouble(7),
                        getImageUrls(rs.getString(1)));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductbyName(String search) {
        List<Product> list = new ArrayList<>();
        String query = "select * from products \n"
                + "where productNAME like ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(6),
                        rs.getDouble(7),
                        getImageUrls(rs.getString(1))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<String> getImageUrls(String product_id) {
        //Declare
        String queryImage = "SELECT imageURL FROM images WHERE product_idi = ?";
        List<String> listURL = new ArrayList<>();

        //Connection
        Connection connection = null;
        //Query
        PreparedStatement script = null;
        ResultSet ResultList = null;

        try {
            //Connect database
            connection = DBContext.getConnection();

            //Query table images
            script = connection.prepareStatement(queryImage);
            script.setString(1, product_id);//set ? = product_id
            ResultList = script.executeQuery();

            //run all row of table's images
            while (ResultList.next()) {
                String imageURL = ResultList.getString("imageURL");
                listURL.add(imageURL);
            }
        } catch (SQLException getiE) {
            System.out.println("Query images error!" + getiE.getMessage());
        } finally {
            //Close Connection and other
            if (ResultList != null) {
                try {
                    ResultList.close();
                } catch (SQLException irsE) {
                    System.out.println("ln180:Close imageResult error!" + irsE.getMessage());
                }
            }
            if (script != null) {
                try {
                    script.close();
                } catch (SQLException ipsE) {
                    System.out.println("ln187:Close script images error!" + ipsE.getMessage());
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException icE) {
                    System.out.println("ln194:Close Connection images error!" + icE.getMessage());
                }
            }
        }
        return listURL;
    }

    public void AddProduct(String id, String name, String description, String brandname, String price) {
        String query = "insert into products(productID,productNAME,description,brand_id,unitPrice)\n"
                + "values(?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, description);
            ps.setString(4, brandname);
            ps.setString(5, price);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void AddImage(String id, String img) {
        String query = "INSERT INTO images(imageID, imageURL,product_idi) VALUES\n"
                + "(?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id + "_1");
            ps.setString(2, img);
            ps.setString(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getAllProduct().toString());
    }
}
