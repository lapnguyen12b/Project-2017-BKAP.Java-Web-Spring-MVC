/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import p.connection.connectionDB;
import p.ulti.News;

/**
 *
 * @author LAPNV
 */
public class NewModel {
    /*
    lay ra toan bo News
    */
    public List<News> getAllNews(){
        Connection conn = null;
        CallableStatement callSt = null;
        List<News> news = new ArrayList<>();
        ResultSet rs;
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllNews()}");
            
        } catch (Exception e) {
        }
        return news;
    }
    /*lay ra news theo ID*/
//    public News getNewById(int newId){
//        Connection conn = null;
//        CallableStatement callSt = null;
//        News news = new News();
//        ResultSet rs;
//        try {
//            conn = connectionDB.OpenConnectionDB();
//            callSt = conn.prepareCall("call getNewById(?)");
//        } catch (Exception e) {
//        }
//    }
}
