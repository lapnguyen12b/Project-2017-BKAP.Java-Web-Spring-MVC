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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p.connection.Common;
import p.connection.connectionDB;
import p.ulti.Order;
import p.ulti.OrderDetail;

/**
 *
 * @author LAPNV
 */
public class OrderModel {
    /*
    nhap TT
    Thuc hien order
    */
    public boolean  insertOrder(Order order){
         Connection conn = null;
         CallableStatement calla = null;
         boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call insertOrder(?,?,?,?,?,?,?,?)}");
            calla.setString(1, order.getFullName());
            calla.setString(2, order.getEmail());
            calla.setInt(3, order.getPhone());
            calla.setString(4, order.getAddress());
            calla.setString(5, order.getSms());
            calla.setFloat(6, order.getTotalAmount());
            calla.setBoolean(7, order.getPaymentType());
            calla.setInt(8, order.getUserId());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
            /**
     * Phe duyet don hang COD
     * @param product
     * @return
     * @throws ParseException 
     */
    public boolean updateOrder(Order order){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            
            calla = conn.prepareCall("{ call ApprovalOrder(?)}");
            calla.setInt(1, order.getOrderId());
//            calla.setBoolean(2, order.getStatus());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    
    public int getOrderIdNew(){
      Connection conn = null;
      CallableStatement calla = null;
      int result = 0;
         try {
             conn = connectionDB.OpenConnectionDB();
             calla = conn.prepareCall("{ call getOrderIdNew(?)}");
             calla.registerOutParameter(1, Types.INTEGER);
             calla.executeUpdate();
             result = calla.getInt(1);
         } catch (SQLException ex) {
             Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE, null, ex);
         } finally{
            connectionDB.CloseconnectionDB(conn, calla);
         }
         return result;
      
    }
    public Order getOrderById(int orderId){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
            Connection conn = null;
            CallableStatement calla = null;
            Order order = new Order();
            ResultSet rs;
            try {
                conn = connectionDB.OpenConnectionDB();
                calla = conn.prepareCall(" {call getOrderById(?)}");
                calla.setInt(1, orderId);
                rs = calla.executeQuery();
                while (rs.next()) {
                    order.setOrderId(rs.getInt("oderId"));
                    order.setStatus(rs.getBoolean("status"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                connectionDB.CloseconnectionDB(conn, calla);
            }
            return order;
    }
    
    public boolean  insertOrderDetail(OrderDetail orderDetail){
         Connection conn = null;
         CallableStatement calla = null;
         boolean check = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call insertOrderDetail(?,?,?,?,?,?)}");
            calla.setInt(1, orderDetail.getOrderId());
            calla.setInt(2, orderDetail.getProductId());
            calla.setFloat(3, orderDetail.getTotalAmount());
            calla.setFloat(4, orderDetail.getPrice());
            calla.setInt(5, orderDetail.getQuantity());
            calla.setString(6,orderDetail.getSms());
            calla.executeUpdate();
            check = true;
        } catch (SQLException ex) {
            Logger.getLogger(OrderModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return check;
    }
    
    /*hien thi chi tiet cac SP trong bang Oder*/
    public List<OrderDetail> getAllOrderDetail(int orderId){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<OrderDetail> listOd = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getProductByOderDetail(?)}");
            callSt.setInt(1, orderId);
            rs = callSt.executeQuery();
            
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                od.setOrderId(rs.getInt("OderId"));
                od.setProductName(rs.getString("ProductName"));
                od.setPrice(rs.getFloat("Price"));
                od.setQuantity(rs.getInt("Quantity"));
//                if (rs.getDate("Created") != null) {
                od.setCreated(fomat.format(rs.getDate("Created")));
                od.setTotalAmount(rs.getFloat("Amount"));
//                }
                listOd.add(od);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return  listOd;
    }
    
    public List<Order> getAllOrder(){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<Order> list = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllOrder()}");
            rs = callSt.executeQuery();
            
            while (rs.next()) {                
                Order od = new Order();
                od.setOrderId(rs.getInt("OderId"));
                od.setUserId(rs.getInt("UserId"));
                od.setFullName(rs.getString("FullName"));
                od.setPhone(rs.getInt("Phone"));
                od.setTotalAmount(rs.getFloat("Totalamount"));
                od.setSms(rs.getString("Sms"));
                od.setStatus(rs.getBoolean("Status"));                
                if (rs.getDate("Created") != null) {
                    od.setCreated(fomat.format(rs.getDate("Created")));
                }
                list.add(od);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return  list;
    }
    
    public List<Order> getNewOrder(){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<Order> list = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getNewOrder()}");
            rs = callSt.executeQuery();
            while (rs.next()) {                
                Order od = new Order();
                od.setOrderId(rs.getInt("OderId"));
                od.setUserId(rs.getInt("UserId"));
                od.setFullName(rs.getString("FullName"));
                od.setPhone(rs.getInt("Phone"));
//                od.setEmail(rs.getString("Mail"));
//                od.setAddress(rs.getString("Address"));
                od.setTotalAmount(rs.getFloat("Totalamount"));
                od.setSms(rs.getString("Sms"));
                od.setStatus(rs.getBoolean("Status"));                
                if (rs.getDate("Created") != null) {
                    od.setCreated(fomat.format(rs.getDate("Created")));
                }
                list.add(od);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return list;
    }
}
