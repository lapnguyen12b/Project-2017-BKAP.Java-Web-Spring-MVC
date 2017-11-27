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
import p.connection.connectionDB;
import p.ulti.Contact;

/**
 *
 * @author LAPNV
 */
public class ContactModel {
    SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
    /*
    Lay ra toan Bo Slider
    */
    public List<Contact> getAllContact(){
        Connection conn = null;
        CallableStatement callSt = null;
        List<Contact> list = new ArrayList<>();
        ResultSet rs;
        
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllContact()}");
            rs = callSt.executeQuery();
            while(rs.next()){
                Contact contact = new Contact();
                contact.setContactId(rs.getInt("ContactId"));
                contact.setAddress(rs.getString("Adress"));
                contact.setEmail(rs.getString("Email"));
                contact.setPhone(rs.getInt("Phone"));
                contact.setStatus(rs.getBoolean("Status"));
                list.add(contact);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    /*
    Lay ra Contact theo id
    */
    public Contact getContactById(int contactId){
         Connection conn = null;
         CallableStatement calla = null;
         ResultSet rs ;
         Contact contact = new Contact();
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call getContactById(?)}");
            calla.setInt(1, contactId);
            rs = calla.executeQuery();
            while(rs.next()){
                contact.setContactId(rs.getInt("ContactId"));
                contact.setAddress(rs.getString("Adress"));
                contact.setPhone(rs.getInt("Phone"));
                contact.setEmail(rs.getString("Email"));
                contact.setStatus(rs.getBoolean("Status"));
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return contact;
   }
    /*
    Them moi Contact
    */
    public boolean insertContact(Contact contact){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
          
        try {   
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call insertContact(?,?,?)}");
            calla.setString(1, contact.getAddress());
            calla.setInt(2, contact.getPhone());
            calla.setString(3, contact.getEmail());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally {
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /*
    Update Contact
    */
    public boolean updateContact(Contact contact){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
          
        try {   
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call updateContact(?,?,?,?,?)}");
            calla.setInt(1, contact.getContactId());
            calla.setString(2, contact.getAddress());
            calla.setInt(3, contact.getPhone());
            calla.setString(4, contact.getEmail());
            calla.setBoolean(5, contact.getStatus());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally {
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return result;
    }
    /*
    Delete Contact . Status > false
    */
    public boolean deleteContact(int contactId){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call deleteContact(?)}");
            calla.setInt(1, contactId);
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
