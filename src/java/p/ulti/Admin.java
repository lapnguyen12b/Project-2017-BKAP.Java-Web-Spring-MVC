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
public class Admin {
    public int adminId;
    public String adminName;
    public String passWord;
    public String email;
    public int phone;
    public String image;
    public String create;
    public boolean status;

    public Admin() {
    }

    public Admin(int adminId, String adminName, String passWord, String email, int phone, String image, String create, boolean status) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.passWord = passWord;
        this.email = email;
        this.phone = phone;
        this.image = image;
        this.create = create;
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getCreate() {
        return create;
    }

    public void setCreate(String Create) {
        this.create = create;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
