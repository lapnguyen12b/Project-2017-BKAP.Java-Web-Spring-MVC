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
import p.ulti.Post;

/**
 *
 * @author LAPNV
 */
public class PostModel {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
    /*
    Lay ra toan Bo Tin Tuc
    */
    public List<Post> getAllPost(){
        Connection conn = null;
        CallableStatement callSt = null;
        List<Post> list = new ArrayList<>();
        ResultSet rs;
        
        try {
            conn = connectionDB.OpenConnectionDB();
            callSt = conn.prepareCall("{call getAllPost()}");
            rs = callSt.executeQuery();
            while(rs.next()){
                Post post = new Post();
                post.setPostId(rs.getInt("PostId"));
                post.setPostTitle(rs.getString("PostTitle"));
                post.setContent(rs.getString("Content"));
                post.setContentDetail(rs.getString("ContentDetail"));
                post.setImage(rs.getString("Images"));
                if (rs.getDate("Created") != null) {
                    post.setCreate(fomat.format(rs.getDate("Created")));
                }
                post.setStatus(rs.getBoolean("Status"));
                list.add(post);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public Post getPostById(int postId){
         Connection conn = null;
         CallableStatement calla = null;
         ResultSet rs ;
         Post post = new Post();
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call getPostById(?)}");
            calla.setInt(1, postId);
            rs = calla.executeQuery();
            while(rs.next()){
                post.setPostId(rs.getInt("PostId"));
                post.setPostTitle(rs.getString("PostTitle"));
                post.setContent(rs.getString("Content"));
                post.setContentDetail(rs.getString("ContentDetail"));
                post.setImage(rs.getString("Images"));
                if (rs.getDate("Created") != null) {
                    post.setCreate(fomat.format(rs.getDate("Created")));
                }
                post.setStatus(rs.getBoolean("Status"));
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
            connectionDB.CloseconnectionDB(conn, calla);
        }
        return post;
   }
    
    /*
    Them moi Post
    */
    public boolean insertPost(Post post){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
          
        try {   
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call insertPost(?,?,?,?)}");
            calla.setString(1, post.getPostTitle());
            calla.setString(2, post.getContent());
            calla.setString(3, post.getContentDetail());
            calla.setString(4, post.getImage());
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
    Update Post
    */
    public boolean updatePost(Post post){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
          
        try {   
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call updatePost(?,?,?,?,?,?)}");
            calla.setInt(1, post.getPostId());
            calla.setString(2, post.getPostTitle());
            calla.setString(3, post.getContent());
            calla.setString(4, post.getContentDetail());
            calla.setString(5, post.getImage());
            calla.setBoolean(6, post.getStatus());
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
    Delete Post
    */
    public boolean deletePost(int postId){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = connectionDB.OpenConnectionDB();
            calla = conn.prepareCall("{ call deletePost(?)}");
            calla.setInt(1, postId);
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
