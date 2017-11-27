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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p.connection.connectionDB;
import p.ulti.Catalog;
import p.ulti.Slider;

/**
 *
 * @author LAPNV
 */
public class CatalogModel {
//    lay ra danh sach Catalog trang Admin
    public List<Catalog> getAllCatalog(){
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
        List<Catalog> listC = new ArrayList<>();
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call GetAllCatalog}");
            rs = callSt.executeQuery();
            while (rs.next()) {                
                Catalog catalog = new Catalog();
                catalog.setCatalogId(rs.getInt("CatalogId"));
                catalog.setCatalogName(rs.getString("CatalogName"));
                catalog.setDescription(rs.getString("Description"));
                catalog.setParentId(rs.getInt("ParentId"));
                catalog.setStatus(rs.getBoolean("status"));
                listC.add(catalog);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return  listC;
    }
    /*
    lay ra Catalog co parentId = 3 (Danh muc thuc don)
    */
    public List<Catalog> getCatalogByParentId(){
        Connection conn = null;
        CallableStatement callSt =null;
        List<Catalog> listCatalog = new ArrayList<>();
//        Catalog catalog = new Catalog();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getCatalogByParentId}");
            rs = callSt.executeQuery();
            while (rs.next()) {
                Catalog catalog = new Catalog();
                catalog.setCatalogId(rs.getInt("catalogId"));
                catalog.setCatalogName(rs.getString("catalogName"));
//                catalog.setDescription(rs.getString("Description"));
                catalog.setParentId(rs.getInt("ParentId"));
                catalog.setStatus(rs.getBoolean("status"));
                listCatalog.add(catalog);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return listCatalog;
    }
    /*
    lay ra catalog theo catalogId
    */
    public Catalog getCatalogById(int catalogId){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        Catalog cata = new Catalog();
        ResultSet rs;
        try {
                conn = connectionDB.OpenConnectionDB();
                callSt = conn.prepareCall(" {call getCatalogById(?)}");
                callSt.setInt(1, catalogId);
                rs = callSt.executeQuery();
                while (rs.next()) {
                    cata.setCatalogId(rs.getInt("catalogId"));
                    cata.setCatalogName(rs.getString("catalogName"));
                    cata.setDescription(rs.getString("description"));
                    cata.setStatus(rs.getBoolean("status"));
                    cata.setParentId(rs.getInt("parentId"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                connectionDB.CloseconnectionDB(conn, callSt);
            }
            return cata;
    }
    public boolean insertCatalog(Catalog ca){
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call insertCatalog (?,?,?)}");
            callSt.setString(1, ca.getCatalogName());
            callSt.setString(2, ca.getDescription());
            callSt.setInt(3, ca.getParentId());
        
            callSt.executeUpdate();
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return check;  
    }
    
}
