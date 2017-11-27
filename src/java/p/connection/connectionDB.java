package p.connection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author LAPNV
 */
public class connectionDB {
    private static String DRIVER ="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String URL ="jdbc:sqlserver://localhost:1433;databaseName=FoodStore";
    private static String USERNAME ="sa";
    private static String PASS ="1234$";
    
    public static Connection OpenConnectionDB(){
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            try {
                conn = DriverManager.getConnection(URL, USERNAME, PASS);
            } catch (SQLException ex) {
                Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    public static void CloseconnectionDB(Connection conn,CallableStatement callSt){
        if (conn!=null) {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (callSt != null) {
            try {
                callSt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
