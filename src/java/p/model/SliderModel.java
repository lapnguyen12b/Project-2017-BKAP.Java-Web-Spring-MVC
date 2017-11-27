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
import p.ulti.Slider;

/**
 *
 * @author LAPNV
 */
public class SliderModel {
    SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
    /*
    Lay ra toan Bo Slider
    */
    public List<Slider> getAllSlider(){
        Connection conn = null;
        CallableStatement callSt = null;
        List<Slider> list = new ArrayList<>();
        ResultSet rs;
        
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllSlider()}");
            rs = callSt.executeQuery();
            while(rs.next()){
                Slider slider = new Slider();
                slider.setSliderId(rs.getInt("SliderId"));
                slider.setSliderName(rs.getString("SliderName"));
                slider.setImages(rs.getString("Images"));
                slider.setStatus(rs.getBoolean("Status"));
                list.add(slider);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    /*
    Lay ra Slider theo id
    */
    public Slider getSliderById(int sliderId){
         Connection conn = null;
         CallableStatement calla = null;
         ResultSet rs ;
         Slider slider = new Slider();
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call getSliderById(?)}");
            calla.setInt(1, sliderId);
            rs = calla.executeQuery();
            while(rs.next()){
                slider.setSliderId(rs.getInt("SliderId"));
                slider.setSliderName(rs.getString("SliderName"));
                slider.setImages(rs.getString("Images"));
                slider.setStatus(rs.getBoolean("Status"));
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return slider;
   }
    /*
    Them moi Slider
    */
    public boolean insertSlider(Slider slider){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
          
        try {   
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call insertSlider(?,?)}");
            calla.setString(1, slider.getSliderName());
            calla.setString(2, slider.getImages());
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
    Update Slider
    */
    public boolean updateSlider(Slider slider){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
          
        try {   
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call updateSlider(?,?,?,?)}");
            calla.setInt(1, slider.getSliderId());
            calla.setString(2, slider.getSliderName());
            calla.setString(3, slider.getImages());
            calla.setBoolean(4, slider.getStatus());
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
    Delete Slider . Status > false
    */
    public boolean deleteSlider(int sliderId){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call deleteSlider(?)}");
            calla.setInt(1, sliderId);
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
