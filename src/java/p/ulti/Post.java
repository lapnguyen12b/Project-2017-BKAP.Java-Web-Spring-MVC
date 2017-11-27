/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.ulti;

/**
 *
 * @author LAPNV
 */
public class Post {
    private int postId;
    private String postTitle;
    private String content;
    private String contentDetail;
    private String image;
    private String create;
    private boolean status;

    public Post() {
    }

    public Post(int postId, String postTitle, String content, String contentDetail, String image, String create, boolean status) {
        this.postId = postId;
        this.postTitle = postTitle;
        this.content = content;
        this.contentDetail = contentDetail;
        this.image = image;
        this.create = create;
        this.status = status;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContentDetail() {
        return contentDetail;
    }

    public void setContentDetail(String contentDetail) {
        this.contentDetail = contentDetail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCreate() {
        return create;
    }

    public void setCreate(String create) {
        this.create = create;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
