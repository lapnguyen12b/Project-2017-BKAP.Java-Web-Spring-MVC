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
public class OrderDetail {
    private int orderDetailId;
    private int orderId;
    private String sms;
    private int productId;
    private float price;
    private int quantity;
    private float totalAmount;
    private String created;
    private boolean status;
    private String productName;
    public OrderDetail() {
    }

    public OrderDetail(int orderDetailId, int orderId, String sms, int productId, float price, int quantity, float totalAmount,String created, boolean status,String productName) {
        this.orderDetailId = orderDetailId;
        this.orderId = orderId;
        this.sms = sms;
        this.productId = productId;
        this.price = price;
        this.quantity = quantity;
        this.totalAmount = totalAmount;
        this.created = created;
        this.status = status;
        this.productName = productName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    
    
    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    
    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getSms() {
        return sms;
    }

    public void setSms(String sms) {
        this.sms = sms;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
