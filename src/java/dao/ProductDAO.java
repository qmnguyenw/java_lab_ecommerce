/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO {
    
    int numberProductInPage = 3;
    
    DBContext db;

    public ProductDAO() {
        db = new DBContext();
    }
    
    public List<Product> listProductWithPaging(int currentPage) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Product> listProduct = new ArrayList<>();
        try {
            con = db.getConnection();
            String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as RowNumber, * FROM [Product]) as AllData where AllData.RowNumber between ? and ?";
            //calculate row numbers of articles in going page
            int rowNumTo = currentPage * numberProductInPage;
            int rowNumFrom = rowNumTo - numberProductInPage + 1;
            
            ps = con.prepareStatement(query);
            ps.setInt(1, rowNumFrom);
            ps.setInt(2, rowNumTo);           
            
            rs = ps.executeQuery();
            while (rs.next()) {
                listProduct.add(new Product(rs.getInt("id"), rs.getNString("name"), rs.getString("image_url"), rs.getDouble("price")));
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            db.closeConnection(con, ps, rs);
        }
        return listProduct;
    }
    
    // get number of list page 
    public int numberPageOfProductList() throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = db.getConnection();
            //get number of product
            String query = "SELECT COUNT(*) FROM [Product]";
            ps = con.prepareStatement(query);
            
            rs = ps.executeQuery();
            //get number search page by number of article in page
            if (rs.next()) {
                //return number of page
                return (int)Math.ceil(rs.getDouble(1)/numberProductInPage);
            }
            return 0;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }
    
    public Product getProductByID(int id) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = db.getConnection();
            String query = "SELECT * FROM [Product] WHERE [id] = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
//                String imgPath = db.getImgDir() + rs.getString("image");
                return new Product(rs.getInt("id"), rs.getNString("name"), rs.getString("image_url"), rs.getDouble("price"));
            }
            return null;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }
    
    //get search list item by page number
    public List<Product> listSearchProductWithPaging(int currentPage, String keyword) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Product> searchList = new ArrayList<>();
        try {
            con = db.getConnection();
            //get row number of all item but between item start and item end of current page
            String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as RowNumber, "
                    + "* FROM [Product] WHERE [name] LIKE ?) as AllData where AllData.RowNumber between ? and ?";
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + keyword + "%");
            //calculate row numbers of articles in going page
            int rowNumTo = currentPage * numberProductInPage;
            int rowNumFrom = rowNumTo - numberProductInPage + 1;
            ps.setInt(2, rowNumFrom);
            ps.setInt(3, rowNumTo);

            rs = ps.executeQuery();
            while (rs.next()) {
//                String imgPath = db.getImgDir() + rs.getString("image");
                searchList.add(new Product(rs.getInt("id"), rs.getNString("name"), rs.getString("image_url"), rs.getDouble("price")));
            }
            return searchList;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }

    // get number of search page 
    public int numberPageOfSearchProduct(String keyword) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = db.getConnection();
            //get number of article
            String query = "SELECT COUNT(*) FROM [Product] WHERE [name] LIKE ?";
            ps = con.prepareStatement(query);
            ps.setString(1, "%"+keyword+"%");
            
            rs = ps.executeQuery();
            //get number search page by number of article in page
            if (rs.next()) {
                //return number of page
                return (int)Math.ceil(rs.getDouble(1)/numberProductInPage);
            }
            return 0;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps, rs);
        }
    }
    
    public void updateProduct(int id, String name, String image_url, double price) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            con = db.getConnection();
            //sql update product
            String query = "UPDATE [Product] SET [name]=?, [image_url]=?, [price]=? WHERE [id]=?";
            
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image_url);
            ps.setDouble(3, price);
            ps.setInt(4, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps);
        }
    }
    
    public void addProduct(String name, String image_url, double price) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            con = db.getConnection();
            //sql add product
            String query = "INSERT [dbo].[Product]([name], [image_url], [price]) VALUES (?,?,?)";
            
            ps = con.prepareStatement(query);
            ps.setNString(1, name);
            ps.setString(2, image_url);
            ps.setDouble(3, price);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps);
        }
    }
    
    public void deleteProduct(int id) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            con = db.getConnection();
            //sql add product
            String query = "DELETE FROM [dbo].[Product] WHERE [id]=?";
            
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(con, ps);
        }
    }
}
