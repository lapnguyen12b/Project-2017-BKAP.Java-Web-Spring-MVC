/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p.connection.Common;
import p.connection.connectionDB;
import p.ulti.Product;

/**
 *
 * @author LAPNV
 */
public class ProductModel {
//    public HashMap getDataPagination(int page, int pageSize) {
//        HashMap map1 = Pagination.getDataForPagination(page, pageSize, "Product", "ProductId", "getDataPagging.htm");
//        return map1;
//    }
    
    /**/
    
    public List<Product> getAllProduct(){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> list = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllProduct}");
            rs = callSt.executeQuery();
            
            while (rs.next()) {                
                Product product = new Product();
                product.setProductId(rs.getInt("ProductId"));
                product.setProductName(rs.getString("ProductName"));
                product.setImages(rs.getString("Images"));
                product.setPrice(rs.getFloat("Price"));
                product.setDiscount(rs.getFloat("Discount"));
                product.setTitle(rs.getString("Title"));
                product.setCatalogId(rs.getInt("CatalogId"));
                product.setStatus(rs.getBoolean("Status"));                
//                product.setCreated(rs.getDate("Created"));
                if (rs.getDate("Created") != null) {
                    product.setCreated(fomat.format(rs.getDate("Created")));
                }
                product.setViews(rs.getInt("Views"));
                list.add(product);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return  list;
    }
    
    //    * Thêm mới sản phẩm
    //    * @param product đối tượng sản phẩm cần thêm
    //    * @return True : Thêm mới thành công
    //    * False: Thêm mới không thành công
    
    public boolean insertProduct(Product product){
        Connection conn = null;
        CallableStatement callSt =null;
        boolean check = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call insertProduct (?,?,?,?,?,?,?)}");
            callSt.setString(1, product.getProductName());
            callSt.setFloat(2, product.getPrice());
            callSt.setFloat(3, product.getDiscount());
            callSt.setString(4, product.getTitle());
            callSt.setInt(5, product.getCatalogId());
            callSt.setString(6, product.getContent());
            callSt.setString(7, product.getImages());
            callSt.executeUpdate();
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return check;
    }
    /**
     * Lấy id của sản phẩm mới nhất
     * @return 
     */
     public List<Product> getProductIdNew(){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement calla = null;
        List<Product> listp = new ArrayList<>();
        ResultSet rs;
         try {
             conn = connectionDB.OpenConnectionDB();
             calla = conn.prepareCall("{ call getProductIdNew()}");
             rs = calla.executeQuery();
             while (rs.next()) {   
                Product pro = new Product();
                pro.setProductId(rs.getInt("ProductId"));
                pro.setProductName(rs.getString("ProductName"));
                pro.setImages(rs.getString("Images"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setDiscount(rs.getFloat("Discount"));
                pro.setTitle(rs.getString("Title"));
                pro.setCatalogId(rs.getInt("CatalogId"));
                pro.setStatus(rs.getBoolean("Status"));                
//                product.setCreated(rs.getDate("Created"));
                if (rs.getDate("Created") != null) {
                    pro.setCreated(fomat.format(rs.getDate("Created")));
                }
                pro.setViews(rs.getInt("Views"));
                listp.add(pro);
             }
         } catch (SQLException ex) {
             Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
         } finally{
            connectionDB.CloseconnectionDB(conn, calla);
         }
         return listp;
      
    }
    
     /**
    * Lấy thông tin sản phẩm theo mã sản phẩm
    * @param id
    * @return 
    */
        public Product getProductById(int productId) {
            SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
            Connection conn = null;
            CallableStatement calla = null;
            Product product = new Product();
            ResultSet rs;
            try {
                conn = connectionDB.OpenConnectionDB();
                calla = conn.prepareCall(" {call getProductById(?)}");
                calla.setInt(1, productId);
                rs = calla.executeQuery();
                while (rs.next()) {
                    product.setProductId(rs.getInt("productId"));
                    product.setProductName(rs.getString("productName"));
                    product.setCatalogId(rs.getInt("catalogId"));
                    product.setTitle(rs.getString("title"));
                    product.setContent(rs.getString("content"));
                    product.setImages(rs.getString("images"));
                    product.setViews(rs.getInt("views"));
                    product.setPrice(rs.getInt("price"));
                    product.setDiscount(rs.getFloat("discount"));
//                    product.setDiscount(Common.formatNumber(rs.getFloat("Discount") * (float)(100 - rs.getInt("Discount")) / 100));
                    if (rs.getDate("created") != null) {
                        product.setCreated(fomat.format(rs.getDate("created")));
                    }
                    product.setStatus(rs.getBoolean("status"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                connectionDB.CloseconnectionDB(conn, calla);
            }
            return product;
        }
        /*
        lay ra SP theo CatalogId
        */
        public List<Product> getProductByParentId(int catalogId){
            SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
            Connection conn = null;
            CallableStatement calla = null;
            List<Product> lvProduct = new ArrayList<>();
            ResultSet rs;
            try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{call getProductByCatalogId(?)}");
            calla.setInt(1, catalogId);
            rs = calla.executeQuery();
            while (rs.next()) {                
                Product p = new Product();
                p.setProductId(rs.getInt("ProductId"));
                p.setProductName(rs.getString("ProductName"));
                p.setImages(rs.getString("Images"));
                p.setPrice(rs.getFloat("Price"));
                p.setDiscount(rs.getFloat("Discount"));
                p.setTitle(rs.getString("Title"));
                p.setCatalogId(rs.getInt("CatalogId"));
                p.setStatus(rs.getBoolean("Status"));                
//                product.setCreated(rs.getDate("Created"));
                if (rs.getDate("Created") != null) {
                    p.setCreated(fomat.format(rs.getDate("Created")));
                }
                p.setViews(rs.getInt("Views"));
                lvProduct.add(p);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return lvProduct;
    }
        
            /*
            Delete Product
            */
            public boolean deleteProduct(int productId){
                Connection conn = null;
                CallableStatement calla = null;
                boolean result = false;
                try {
                    conn = connectionDB.OpenConnectionDB();
                    calla = conn.prepareCall("{ call deleteProduct(?)}");
                    calla.setInt(1, productId);
                    calla.executeUpdate();
                    result = true;
                } catch (SQLException ex) {
                    Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
                }
                return result;
            }
            /**
     * Sửa thông tin sản phẩm theo mã sản phẩm
     * @param product
     * @return
     * @throws ParseException 
     */
    public boolean updateProduct(Product product){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            
            calla = conn.prepareCall("{ call updateProduct(?,?,?,?,?,?,?,?,?)}");
            calla.setInt(1, product.getProductId());
            calla.setString(2, product.getProductName());
            calla.setFloat(3, product.getPrice());
            calla.setFloat(4, product.getDiscount());
            calla.setString(5, product.getContent());
            calla.setString(6, product.getTitle());
            calla.setInt(7, product.getCatalogId());
            calla.setString(8, product.getImages());
            calla.setBoolean(9, product.getStatus());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /**
     * Lấy danh sách sản phẩm hot
     * @return 
     */
    public List<Product> getProductHot(){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<Product> list = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getProductHot()}");
            rs = callSt.executeQuery();
            
            while (rs.next()) {                
                Product product = new Product();
                product.setProductId(rs.getInt("ProductId"));
                product.setProductName(rs.getString("ProductName"));
                product.setImages(rs.getString("Images"));
                product.setPrice(rs.getFloat("Price"));
                product.setDiscount(rs.getFloat("Discount"));
                product.setTitle(rs.getString("Title"));
                product.setCatalogId(rs.getInt("CatalogId"));
                product.setStatus(rs.getBoolean("Status"));
                if (rs.getDate("Created") != null) {
                    product.setCreated(fomat.format(rs.getDate("Created")));
                }
                product.setViews(rs.getInt("Views"));
                list.add(product);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return  list;
    }
    
    /* Tim kiem SP theo Ten SP*/
    public Boolean getProductByName(Product product){
        boolean result = false;
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
                callSt = conn.prepareCall(" {call getProductByName(?)}");
                callSt.setString(1, product.getProductName());
                rs = callSt.executeQuery();
                while (rs.next()) {
//                    Product product = new Product();
                    product.setProductId(rs.getInt("productId"));
                    product.setProductName(rs.getString("productName"));
                    product.setCatalogId(rs.getInt("catalogId"));
                    product.setTitle(rs.getString("title"));
                    product.setContent(rs.getString("content"));
                    product.setImages(rs.getString("images"));
                    product.setViews(rs.getInt("views"));
                    product.setPrice(rs.getInt("price"));
                    product.setDiscount(rs.getFloat("discount"));
//                    product.setDiscount(Common.formatNumber(rs.getFloat("Discount") * (float)(100 - rs.getInt("Discount")) / 100));
                    if (rs.getDate("created") != null) {
                        product.setCreated(fomat.format(rs.getDate("created")));
                    }
                    product.setStatus(rs.getBoolean("status"));
                    result = true;
                }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return result;
    }
}
