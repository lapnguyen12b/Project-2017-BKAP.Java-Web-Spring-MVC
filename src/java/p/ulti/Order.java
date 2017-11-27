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
public class Order {
    private int orderId;
    private int userId;
    private String email;
    private int phone;
    private String fullName;
    private String address;
    private String sms;
    private String created;
    private float totalAmount;
    private boolean paymentType;
    private boolean status;

    public Order() {
    }

    public Order(int orderId, int userId, String email, int phone, String fullName, String address, String sms, String created, float totalAmount, boolean paymentType, boolean status) {
        this.orderId = orderId;
        this.userId = userId;
        this.email = email;
        this.phone = phone;
        this.fullName = fullName;
        this.address = address;
        this.sms = sms;
        this.created = created;
        this.totalAmount = totalAmount;
        this.paymentType = paymentType;
        this.status = status;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSms() {
        return sms;
    }

    public void setSms(String sms) {
        this.sms = sms;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public boolean getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(boolean paymentType) {
        this.paymentType = paymentType;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
