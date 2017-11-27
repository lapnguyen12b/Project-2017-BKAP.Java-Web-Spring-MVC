/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.controller;

//import java.io.IOException;
//import java.sql.CallableStatement;
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.text.SimpleDateFormat;
import java.util.ArrayList;
//import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import p.connection.Common;
import p.model.CatalogModel;
import p.model.OrderModel;
import p.model.PostModel;
import p.model.ProductModel;
import p.model.SliderModel;
import p.model.UserModel;
import p.ulti.Cart;
import p.ulti.Catalog;
import p.ulti.Order;
import p.ulti.OrderDetail;
import p.ulti.Payment;
import p.ulti.Post;
import p.ulti.Product;
import p.ulti.Slider;
import p.ulti.User;

/**
 *
 * @author LAPNV
 */
@Controller
public class HomeController {
    
    private ProductModel productModel;
    private CatalogModel catalogModel;
    private PostModel postModel;
    private SliderModel sliderModel;
    private OrderModel orderModel;
    private UserModel userModel;
    
    public HomeController(){
        productModel = new ProductModel();
        catalogModel = new CatalogModel();
        postModel = new PostModel();
        sliderModel = new SliderModel();
        orderModel = new OrderModel();
        userModel = new UserModel();
    }
    
    @RequestMapping(value = "getAll", method = RequestMethod.GET)
    public ModelAndView home() {
            ModelAndView model = new ModelAndView("frontend/home");
            List<Product> sellProduct = productModel.getAllProduct();
            List<Product> hotProduct = productModel.getProductHot();
            List<Slider> slider = sliderModel.getAllSlider();
            List<Catalog> catalog = catalogModel.getCatalogByParentId();
            List<Product> listp = productModel.getProductIdNew();
            
            model.getModelMap().put("sellProduct", sellProduct);
            model.getModelMap().put("productHot", hotProduct);
            model.getModelMap().put("slider", slider);
            model.getModelMap().put("catalog", catalog);
            model.getModelMap().put("newProduct", listp);
            return model;
	}
//    @RequestMapping(value="header")
//    public ModelAndView header(){
//        ModelAndView model = new ModelAndView("frontend/header");
//        List<Catalog> catalog = catalogModel.getCatalogByParentId();
//        model.getModelMap().put("catalog", catalog);
//        return model;
//    }
    /**
     * hiện thị trang giới thiệu
     * @return 
     */
    @RequestMapping(value = "about")
    public ModelAndView aboutFontend() {
        ModelAndView model = new ModelAndView("frontend/gioithieu");
            List<Catalog> catalog = catalogModel.getCatalogByParentId();
            List<Product> listp = productModel.getProductIdNew();
            model.getModelMap().put("catalog", catalog);
            model.getModelMap().put("newProduct", listp);
        return model;
    }
    /*
    hien thi trang Tin tuc
    */
    @RequestMapping(value="news")
    public ModelAndView newsFrontend(){
        ModelAndView model = new ModelAndView("frontend/tintuc");
        List<Post> listPost = postModel.getAllPost();
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("listPost", listPost);
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    /*
    hien thi SP moi nhat
    */
    @RequestMapping(value="newProduct")
    public ModelAndView newProduct(){
        ModelAndView model = new ModelAndView("frontend/footer");
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    
    /*get Post by Id*/
    @RequestMapping(value = "newsDetail")
    public ModelAndView getPostById(@RequestParam("postId") int postId) {
        ModelAndView model = new ModelAndView("frontend/postDetail");
        List<Post> listPost = postModel.getAllPost();
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        Post po = postModel.getPostById(postId);
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("listPost", listPost);
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("PostDetail", po);
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    /*
    view by id (hien thi chi tiet)
     */
//    @RequestMapping(value = "initNewDetail")
//    public ModelAndView initNewDetail(@RequestParam("postId") int postId) {
//        ModelAndView model = new ModelAndView("backend/postDetail");
//        Post post = postModel.getPostById(postId);
//        model.getModelMap().put("listPost", post);
//        return model;
//    }
    /*
    hien thi trang lien he
    */
    @RequestMapping(value="lienhe")
    public ModelAndView lienheFrontend(){
        ModelAndView model = new ModelAndView("frontend/lienhe");
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    /*
    Hien thi ProductHot trang thucdoc.jsp
    */
    @RequestMapping(value = "getProductHot")
    public ModelAndView getProductHot() {
//        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        ModelAndView model = new ModelAndView("frontend/thucdon");
        List<Product> list = productModel.getProductHot();// danh sách sản phâm nổi bật
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("listProductHot", list);
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    /*
    xem chi tiet San Pham Frontend theo id (getProductById)
     */
//    @RequestMapping(value = "combo")
//    public ModelAndView getProductCombo(@RequestParam("productId") int productId) {
//        ModelAndView model = new ModelAndView("frontend/combo");
//        Product product = productModel.getProductById(productId);
//        model.getModelMap().put("comboProduct", product);
//        return model;
//    }
    
    /*
    
    */
    
    
    /**
    * Giỏ hàng
    * @param session
    * @param mm
    * @return 
    */
    @RequestMapping(value = "youCart")
    public ModelAndView myCart(HttpSession session, ModelMap mm){
        ModelAndView model = new ModelAndView("frontend/giohang");
        List<Cart> listCart  = (ArrayList<Cart>) session.getAttribute("listCart");
        if(listCart == null) {
            mm.put("message","Chưa có sản phẩm trong giỏ hàng");
        } else {
            model.getModelMap().put("list", listCart);
        }
        
        
        return model;
    }
    
    /*
    Thanh toan 1 ()
    kiem tra dang nhap va chua dang nhap
    > payment
    */
    @RequestMapping(value="order")
    public ModelAndView order(HttpSession session, ModelMap mm){
        ModelAndView model = new ModelAndView("frontend/thanhtoan2");
        List<Cart> listCart = (ArrayList<Cart>) session.getAttribute("listCart");
        float paymentAmount = (float) getTotal(listCart);
        String userName = (String) session.getAttribute("account");
        Payment payment = new Payment();
        Order order = new Order();
        model.getModelMap().put("list", listCart);
        model.getModelMap().put("user", userName);
        model.getModelMap().put("payment", payment);
        model.getModelMap().put("inOrder", order);
        model.getModel().put("totalAmount", Common.formatNumber(paymentAmount));
        return model;
    }
    
    /*
    Nhap TT khi Order
    nhap TT khach hang nhan
    nhap TT khac hang Thanh toan
    Neu khong nhap TT. tu dong lay ra TT user
    Insert OderDetail
    */
    @RequestMapping(value="prePayment")
    public String initOrder(HttpServletRequest request, HttpSession session, @ModelAttribute("inOrder") Payment payment){

        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        
        ModelAndView model;
        String userName = (String) session.getAttribute("account");
        User us = userModel.getUserByUserName(userName);
        String name = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String sms = request.getParameter("sms");
        float total = Float.parseFloat(request.getParameter("totalAmount"));
        String paymenttype = request.getParameter("paymentType");
      
         Order order = new Order();
//         order.setTotalAmount(Common.formatNumber(total));
         order.setUserId(us.getUserId());
         boolean result= false;
//         neu insertOrder(order) success thi result = true
        //lay ra TT user
        if(name == "" && email =="" && address == ""){
            order.setFullName(us.getFullName());
            //order.setOrderNumber();
            order.setPhone(us.getPhone());
            order.setEmail(us.getMail());
            order.setAddress(us.getAddress());
            order.setSms(sms);
            order.setTotalAmount(total);
            order.setPaymentType(Boolean.parseBoolean(paymenttype));
            order.setUserId(us.getUserId());
            result = orderModel.insertOrder(order);
        } else {
            //lay ra TT nguoi nhan
            order.setFullName(userName);
            order.setEmail(email);
            order.setPhone(Integer.parseInt(phone));
            order.setAddress(address);
            order.setSms(sms);
            order.setTotalAmount(total);
            order.setPaymentType(Boolean.parseBoolean(paymenttype));
            order.setUserId(us.getUserId());
            result = orderModel.insertOrder(order);
        }
       
       /*insert vao bang orderDetail*/
        if(result){
            int orderId = orderModel.getOrderIdNew();
                List<OrderDetail> listO = new ArrayList<>();
            for (Cart listCart1 : listCart) {
                OrderDetail orderDetail = new OrderDetail();
                
                orderDetail.setOrderId(orderId);
                orderDetail.setProductId(listCart1.getProduct().getProductId());
                orderDetail.setTotalAmount(total);
                orderDetail.setPrice(listCart1.getProduct().getPrice());
                
//                productModel.updateBuyItem(listCart1.getProduct().getProductId());
//                orderDetail.setProductName(listCart1.getProduct().getProductName());
//                orderDetail.setNote(listCart1.getNote()) note trong Cart;
//                    giam gia y?n
//                if(listCart1.getProduct().getDiscount() == 0){
//                     orderDetail.setPrice(listCart1.getProduct().getPriceOutput);
//                }else {
//                     orderDetail.setPrice(listCart1.getProduct().getPriceDiscount());
//                }
                orderDetail.setQuantity(listCart1.getQuantity());
                orderDetail.setSms(sms);
                listO.add(orderDetail);
                boolean check = orderModel.insertOrderDetail(orderDetail);
            }
            if (listCart !=null) {
//                Xoa gio hang
                List<Cart> list = new ArrayList<>();
            }
               return "redirect:succsess.htm";
        }else {
            return "redirect:prePayment.htm";
        }
    }
    public float getTotal(List<Cart> listCart) {
        float total = 0;
            for (Cart c : listCart) {
                total+= c.getQuantity()* c.getProduct().getPrice();
            }
        return total;
    }
    
    /*
    chuc nang tim kiem SP Trang chu
    */
    
}

