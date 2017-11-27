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
import org.springframework.asm.Type;
import p.connection.connectionDB;
import p.ulti.Admin;
import p.ulti.User;

/**
 *
 * @author LAPNV
 */
public class UserModel {
    /*
    Lay ra toan bo TT Admin
    */
    SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
    public List<Admin> getAllAdmin(){
//        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<Admin> list = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllUserAdmin}");
            rs = callSt.executeQuery();
            
            while (rs.next()) {                
                Admin admin = new Admin();
                admin.setAdminId(rs.getInt("AdminId"));
                admin.setAdminName(rs.getString("AdminName"));
                admin.setImage(rs.getString("Image"));
                admin.setPassWord(rs.getString("Password"));
                admin.setEmail(rs.getString("Mail"));
                admin.setPhone(rs.getInt("Phone"));
                if (rs.getDate("Created") != null) {
                    admin.setCreate(fomat.format(rs.getDate("Created")));
                }                
                admin.setStatus(rs.getBoolean("Status"));
                list.add(admin);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return  list;
    }
     /**
    * Lấy thông tin Admin theo mã admin
    * @param id
    * @return 
    */
        public Admin getAdminById(int adminId) {
            SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
            Connection conn = null;
            CallableStatement calla = null;
            Admin admin = new Admin();
            ResultSet rs;
            try {
                conn = connectionDB.OpenConnectionDB();
                calla = conn.prepareCall(" {call getAdminById(?)}");
                calla.setInt(1, adminId);
                rs = calla.executeQuery();
                while (rs.next()) {
                    admin.setAdminId(rs.getInt("adminId"));
                    admin.setAdminName(rs.getString("adminname"));
                    admin.setImage(rs.getString("image"));
                    admin.setPassWord(rs.getString("passWord"));
                    admin.setEmail(rs.getString("mail"));
                    admin.setPhone(rs.getInt("phone"));
                    admin.setStatus(rs.getBoolean("status"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                connectionDB.CloseconnectionDB(conn, calla);
            }
            return admin;
        }
            /**
     * Sửa thông tin Admin theo mã Id
     * @param admin
     * @return
     * @throws ParseException 
     */
    public boolean updateAdmin(Admin admin){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            
            calla = conn.prepareCall("{ call updateAdmin(?,?,?,?,?,?,?)}");
            calla.setInt(1, admin.getAdminId());
            calla.setString(2, admin.getAdminName());
            calla.setString(3, admin.getPassWord());
            calla.setString(4, admin.getEmail());
            calla.setInt(5, admin.getPhone());
            calla.setString(6, admin.getImage());
            calla.setBoolean(7, admin.getStatus());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /*
    Delete Admin
    */
    public boolean deleteAdmin(int adminId){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{call deleteAdmin(?)}");
            calla.setInt(1, adminId);
            calla.executeUpdate();
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
            return result;
    }
    /*
    Dang ky Tai Khoan Admin
    */
    public boolean registerAdmin(Admin admin){
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = connectionDB.OpenConnectionDB();
        callSt = conn.prepareCall("{call insertAdmin(?,?,?,?,?)}");
        callSt.setString(1, admin.getAdminName());
        callSt.setString(2, admin.getEmail());
        callSt.setString(3, admin.getPassWord());
        callSt.setString(4, admin.getCreate());
        callSt.setBoolean(5, admin.getStatus());        
        callSt.executeUpdate();
        check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return check;        
    }
    
    /*
    Kiem tra TK Admin khi Dang ky
    */
    public boolean  checkAdminName(String name){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;       
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call checkAdmin(?,?)}");
            calla.setString(1, name);
            calla.registerOutParameter(2, Types.BOOLEAN);
            calla.executeUpdate();
            result = calla.getBoolean(2);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /*
    kiem tra E-mail Admin khi Dang ky
    */
    public boolean  checkAdminEmail(String mail){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;       
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call checkEmailAdmin(?,?)}");
            calla.setString(1, mail);
            calla.registerOutParameter(2, Types.BOOLEAN);
            calla.executeUpdate();
            result = calla.getBoolean(2);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /*
    Kiem tra e-mail Admin khi update
    */
    public boolean checkExistsAdminEmail(Admin admin){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;    
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call checkExitEmailAdmin(?,?,?)}");
            calla.setInt(1, admin.getAdminId());
            calla.setString(2, admin.getEmail());
            calla.registerOutParameter(3, Types.BOOLEAN);
            calla.executeUpdate();
            result = calla.getBoolean(3);
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    
    /*
    Dang ky Tai khoan Khach Hang
    */
    public boolean registerUser(User user){
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = connectionDB.OpenConnectionDB();
        callSt = conn.prepareCall("{call insertListUser(?,?,?,?,?,?)}");
        callSt.setString(1, user.getUserName());
        callSt.setString(2, user.getPassWord());
        callSt.setString(3, user.getFullName());
        callSt.setInt(4, user.getPhone());
        callSt.setString(5, user.getMail());
        callSt.setString(6, user.getAddress());
        
        callSt.executeUpdate();
        check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, callSt);
        }
        return check;        
    }
    /*
    Kiem tra TK Nguoi dung khi Dang ky
    */
    public boolean  checkUserName(String name){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;       
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call checkUserName(?,?)}");
            calla.setString(1, name);
            calla.registerOutParameter(2, Types.BOOLEAN);
            calla.executeUpdate();
            result = calla.getBoolean(2);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /*
    kiem tra E-mail Admin khi Dang ky
    */
    public boolean  checkUserEmail(String mail){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;       
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call checkEmailAdmin(?,?)}");
            calla.setString(1, mail);
            calla.registerOutParameter(2, Types.BOOLEAN);
            calla.executeUpdate();
            result = calla.getBoolean(2);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    public List<User> getAllUser(){
        Connection conn = null;
        CallableStatement calla = null;
        List<User> list = new ArrayList<User>();
        ResultSet rs ;       
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call getAllUser()}");
            rs = calla.executeQuery();
            while(rs.next()){
                User user = new User();
                user.setUserId(rs.getInt("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassWord(rs.getString("Password"));
                user.setFullName(rs.getString("FullName"));
                user.setPhone(rs.getInt("Phone"));
                user.setMail(rs.getString("Mail"));
                user.setAddress(rs.getString("Address"));
                user.setStatus(rs.getBoolean("Status"));
              
                if(rs.getDate("Created") == null){
                      user.setDate(null);
                } else {
                      user.setDate(fomat.format(rs.getDate("Created")));
                }
              
               list.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return list;
    }
    public boolean  checkLogin(Admin admin){
        boolean result = false;
        Connection conn = null;
        CallableStatement callSt = null;
        ResultSet rs;
         try {
             conn = connectionDB.OpenConnectionDB();
             callSt = conn.prepareCall("{ call checkLoginAdmin(?,?)}");
             callSt.setString(1,admin.getAdminName());
            callSt.setString(2, admin.getPassWord());
             rs = callSt.executeQuery();
             while(rs.next()){
                 result = true;
             }
         } catch (SQLException ex) {
             Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
         }finally{
             connectionDB.CloseconnectionDB(conn, callSt);
         }
        return result;
    }
    public boolean  checkLoginUser(User user){
        boolean result = false;
        Connection conn = null;
        CallableStatement calla = null;
//        User user = new User();
        ResultSet rs;
         try {
             conn = connectionDB.OpenConnectionDB();
             calla = conn.prepareCall("{ call CheckLogin(?,?)}");
             calla.setString(1,user.getUserName());
             calla.setString(2, user.getPassWord());
             rs = calla.executeQuery();
             while(rs.next()){
//                 user.setUserId(rs.getInt("userId"));
                 result = true;
             }
//             result = true;
         } catch (SQLException ex) {
             Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
         }finally{
             connectionDB.CloseconnectionDB(conn, calla);
         }
        return result;
    }
    
    /*
    lay ra user theo UserName
    */
    public User getUserByUserName(String name){
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        User user = new User();
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{call  getUserByName(?)}");
            calla.setString(1, name);
            rs = calla.executeQuery();
            while(rs.next()){
               user.setUserId(rs.getInt("UserId"));
                user.setUserName(rs.getString("UserName"));
                user.setPassWord(rs.getString("Password"));
                user.setFullName(rs.getString("FullName"));
                user.setPhone(rs.getInt("Phone"));
                user.setMail(rs.getString("Mail"));
                user.setAddress(rs.getString("Address"));
                  if(rs.getDate("Created") == null){
                      user.setDate(null);
                } else {
                      user.setDate(fomat.format(rs.getDate("Created")));
                }
                user.setStatus(rs.getBoolean("Status"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return user;
    }
    /*
    lay ra TT Admin theo AdminName
    */
    public Admin getAdminByAdminName(String name){
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement calla = null;
        ResultSet rs;
        Admin admin = new Admin();
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{call  getAdminByAdminName(?)}");
            calla.setString(1, name);
            rs = calla.executeQuery();
            while(rs.next()){
                admin.setAdminId(rs.getInt("AdminId"));
                admin.setAdminName(rs.getString("AdminName"));
                admin.setPassWord(rs.getString("Password"));
                admin.setEmail(rs.getString("Mail"));
                admin.setPhone(rs.getInt("Phone"));
                admin.setImage(rs.getString("Image"));
//                  if(rs.getDate("Created") == null){
//                      admin.setCreate(null);
//                } else {
//                      admin.setCreate(fomat.format(rs.getDate("Created")));
//                }
                if (rs.getDate("Created") != null) {
                    admin.setCreate(fomat.format(rs.getDate("Created")));
                }
                admin.setStatus(rs.getBoolean("Status"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserModel.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return admin;
    }
}
