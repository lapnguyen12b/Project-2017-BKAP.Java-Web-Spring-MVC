/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.controller;

import java.io.File;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import p.model.ContactModel;
import p.model.OrderModel;
import p.model.PostModel;
import p.model.ProductModel;
import p.model.SliderModel;
import p.model.UserModel;
import p.ulti.Admin;
import p.ulti.Contact;
import p.ulti.Order;
import p.ulti.OrderDetail;
import p.ulti.Post;
import p.ulti.Product;
import p.ulti.Slider;
import p.ulti.User;

/**
 *
 * @author LAPNV
 */
@Controller
public class HomeAdminController {
    private UserModel userModel;
    private PostModel postModel;
    private SliderModel sliderModel;
    private ContactModel contactModel;    
    private OrderModel orderModel;
    private ProductModel productModel;
    public HomeAdminController(){
        userModel = new UserModel();
        postModel = new PostModel();
        sliderModel = new SliderModel();
        contactModel = new ContactModel();
        orderModel = new OrderModel();
        productModel = new ProductModel();
    }  
            
    @RequestMapping(value = "/admin")
    public ModelAndView adminLogin(){
        ModelAndView model = new ModelAndView("backend/login-admin");
        Admin admin = new Admin();
        model.getModelMap().put("accountAdmin", admin);
        return model;
    }
    
    /**
     * Kiểm tra thông tin đăng nhập
     * @param user
     * @param mm
     * @param session
     * @return 
     */
    @RequestMapping(value = "adminLogin")
    public String loginBackend(@ModelAttribute("accountAdmin") Admin admin, ModelMap mm,HttpSession session){
        boolean result = userModel.checkLogin(admin);
        if(result){
            session.setAttribute("accountAdmin", admin.getAdminName());

            return "redirect:homeAdmin.htm";
        } else {
            mm.put("message", "Sai thông tin đăng nhập.");
            return "redirect:admin.htm";
        }
        
    }
    //Đăng xuất Admin    
    @RequestMapping(value = "logoutAdmin", method = RequestMethod.GET)
    public String logout(HttpSession session){
        ModelAndView model = new ModelAndView("backend/login-admin");
        // xoa session
        session.invalidate();
        return "redirect:admin.htm";
    }
    /*Home Admin*/
    @RequestMapping(value = "homeAdmin")
    public ModelAndView homeAdmin(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/homeadmin");
        List<User> listuser = userModel.getAllUser();
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Order> listorder = orderModel.getNewOrder();
        
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listuser", listuser);
        model.getModelMap().put("listorder", listorder);
        return model;
    }
    @RequestMapping(value="headerAdmin")
    public ModelAndView headerAdmin(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/header-admin");
        //session lay ra TT admin
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        model.getModelMap().put("listViewAdmin", ad);
        //end
        return model;
    }
    
    /*
    Lay danh sach Tin tuc
    */
    @RequestMapping(value = "getAllPost")
    public ModelAndView getAllPost(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/ql-tin-tuc");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Post> listPost = postModel.getAllPost();
        
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listPost", listPost);
        return model;
    }
    /*get Post by Id*/
    @RequestMapping(value = "viewPost")
    public ModelAndView getPostById(@RequestParam("postId") int postId) {
        ModelAndView model = new ModelAndView("backend/PostDetail");
//        ModelAndView model = new ModelAndView("frontend/postDetail");
        Post post = postModel.getPostById(postId);
        model.getModelMap().put("listViewPost", post);
        return model;
    }
    /*
    Them moi Tin tuc insertPost
    */
    @RequestMapping(value = "initInsertPost")
    public ModelAndView initInsertPost(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/insertNews");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Post post = new Post();
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("newPost", post);
        return model;
    }
    
    @RequestMapping(value = "insertPost")
    public String inserPost(@ModelAttribute("newPost") Post post, ModelMap mm, HttpServletRequest request) {

        List<String> img = new ArrayList<String>();
        //lay duong dan + ten image
        String path = request.getRealPath("/jsp/frontend/image/post/");
        //khai
        path = path.substring(0, path.indexOf("\\build"));
        //
        path = path + "\\web\\jsp\\frontend\\image\\post";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("image".equals(fileItem.getFieldName())) {
                        //path
                        post.setImage(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");
                    if (name.equals("postId")) {
                        post.setPostId(Integer.parseInt(value));
                    }else if (name.equals("postTitle")) {
                        post.setPostTitle(value);
                    } else if (name.equals("content")) {
                        post.setContent(value);
                    } else if (name.equals("contentDetail")) {
                        post.setContentDetail(value);
                    } else if (name.equals("status")) {
                        if(Integer.parseInt(value) == 0)
                            post.setStatus(false);
                        else {
                            post.setStatus(true);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean check = postModel.insertPost(post);
        if (check) {
//                 insert thành công trả về trang danh sách sản phẩm
            return "redirect:getAllPost.htm";
        } else {
            // Insert không thành công trả về trang InsertProduct
            mm.put("message", "Thêm mới không thành công");
            return "redirect:insertPost.htm";
        }
    }
    
    /*
    Update Tin tuc 
    */
    @RequestMapping(value = "initUpdatePost")
    public ModelAndView initUpdatePost(@RequestParam("postId") int postId,HttpSession session,HttpServletRequest request) {
        ModelAndView model = new ModelAndView("backend/updatePost");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Post post = postModel.getPostById(postId);
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("updatePost", post);
        return model;
    }
    
    @RequestMapping(value = "updatePost",method = RequestMethod.POST)
    public String updatePost(@ModelAttribute("updatePost") Post post, ModelMap mm, HttpServletRequest request) throws ParseException {

        List<String> img = new ArrayList<String>();
        //lay duong dan + ten image
        String path = request.getRealPath("/jsp/frontend/image/post/");
        //khai
        path = path.substring(0, path.indexOf("\\build"));
        //
        path = path + "\\web\\jsp\\frontend\\image\\post";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("image".equals(fileItem.getFieldName())) {
                        //path
                        post.setImage(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");
                    if(name.equals("postId")){
                        post.setPostId(Integer.parseInt(value));
                    }else if (name.equals("postTitle")) {
                        post.setPostTitle(value);
                    } else if (name.equals("content")) {
                        post.setContent(value);
                    } else if (name.equals("contentDetail")) {
                        post.setContentDetail(value);
                    } else if (name.equals("status")) {
                        if(Integer.parseInt(value) == 0)
                            post.setStatus(false);
                        else {
                            post.setStatus(true);
                        }
                    }
                }
            }
            boolean result = postModel.updatePost(post);
            if (result) {
                // insert thành công trả về trang danh sách sản phẩm
                return "redirect:getAllPost.htm";
            } else {
                // Insert không thành công trả về trang InsertProduct
                mm.put("message", "Thêm mới không thành công");
                return "redirect:initUpdatePost.htm";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    /*
    Delete Post
    */
    @RequestMapping(value = "/deletePost")
    public String deleteProduct(@RequestParam("postId") int postId, ModelMap mm) {
        boolean result = postModel.deletePost(postId);
        if (result) {
            return "redirect:getAllPost.htm";
        } else {
            mm.put("message", "Xoa không thành công");
            return "redirect:getAllPost.htm";
        }
    }
    
    
    /*
    Lay danh sach Slider
    */
    @RequestMapping(value = "getAllSlider")
    public ModelAndView getAllSlider(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/ql-slider");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Slider> listSlider = sliderModel.getAllSlider();
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listSlider", listSlider);
        return model;
    }
    /*get Slider by Id*/
    @RequestMapping(value = "viewSlider")
    public ModelAndView getSliderById(@RequestParam("sliderId") int sliderId) {
        ModelAndView model = new ModelAndView("backend/SliderDetail");
        Slider slider = sliderModel.getSliderById(sliderId);
        model.getModelMap().put("listViewSlider", slider);
        return model;
    }
    /*
    Them moi Tin tuc insertPost
    */
    @RequestMapping(value = "initInsertSlider")
    public ModelAndView initInsertSlider(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/insertSlider");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Slider slider = new Slider();
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("newSlider", slider);
        return model;
    }
    
    @RequestMapping(value = "insertSlider")
    public String insertSlider(@ModelAttribute("newSlider") Slider slider, ModelMap mm, HttpServletRequest request) {

        List<String> img = new ArrayList<String>();
        //lay duong dan + ten image
        String path = request.getRealPath("/jsp/frontend/image/slider/");
        //khai
        path = path.substring(0, path.indexOf("\\build"));
        //
        path = path + "\\web\\jsp\\frontend\\image\\slider";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("images".equals(fileItem.getFieldName())) {
                        //path
                        slider.setImages(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");
                    if (name.equals("sliderId")) {
                        slider.setSliderId(Integer.parseInt(value));
                    }else if (name.equals("sliderName")) {
                        slider.setSliderName(value);
                    } else if (name.equals("status")) {
                        if(Integer.parseInt(value) == 0)
                            slider.setStatus(false);
                        else {
                            slider.setStatus(true);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean check = sliderModel.insertSlider(slider);
        if (check) {
//                 insert thành công trả về trang danh sách sản phẩm
            return "redirect:getAllSlider.htm";
        } else {
            // Insert không thành công trả về trang InsertProduct
            mm.put("message", "Thêm mới không thành công");
            return "redirect:getAllSlider.htm";
        }
    }
    /*
    Update Tin tuc 
    */
    @RequestMapping(value = "initUpdateSlider")
    public ModelAndView initUpdateSlider(@RequestParam("sliderId") int sliderId,HttpSession session,HttpServletRequest request) {
        ModelAndView model = new ModelAndView("backend/updateSlider");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Slider slider = sliderModel.getSliderById(sliderId);
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("updateSlider", slider);
        return model;
    }
    
    @RequestMapping(value = "updateSlider",method = RequestMethod.POST)
    public String updateSlider(@ModelAttribute("updateSlider") Slider slider, ModelMap mm, HttpServletRequest request) throws ParseException {

        List<String> img = new ArrayList<String>();
        //lay duong dan + ten image
        String path = request.getRealPath("/jsp/frontend/image/slider/");
        //khai
        path = path.substring(0, path.indexOf("\\build"));
        //
        path = path + "\\web\\jsp\\frontend\\image\\slider";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("images".equals(fileItem.getFieldName())) {
                        //path
                        slider.setImages(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");
                    if(name.equals("sliderId")){
                        slider.setSliderId(Integer.parseInt(value));
                    }else if (name.equals("sliderName")) {
                        slider.setSliderName(value);
                    } else if (name.equals("status")) {
                        if(Integer.parseInt(value) == 0)
                            slider.setStatus(false);
                        else {
                            slider.setStatus(true);
                        }
                    }
                }
            }
            boolean result = sliderModel.updateSlider(slider);
            if (result) {
                // insert thành công trả về trang danh sách sản phẩm
                return "redirect:getAllSlider.htm";
            } else {
                // Insert không thành công trả về trang InsertProduct
                mm.put("message", "Thêm mới không thành công");
                return "redirect:initUpdateSlider.htm";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    /*
    Delete Post
    */
    @RequestMapping(value = "deleteSlider")
    public String deleteSlider(@RequestParam("sliderId") int sliderId, ModelMap mm) {
        boolean result = sliderModel.deleteSlider(sliderId);
        if (result) {
            return "redirect:getAllSlider.htm";
        } else {
            mm.put("message", "Xoa không thành công");
            return "redirect:getAllSlider.htm";
        }
    }
    /*
    Lay danh sach Contact
    */
    @RequestMapping(value = "getAllContact")
    public ModelAndView getAllContact(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/ql-contact");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Contact> listContact = contactModel.getAllContact();        
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listContact", listContact);
        return model;
    }
    /*get Slider by Id*/
    @RequestMapping(value = "viewContact")
    public ModelAndView getContactById(@RequestParam("contactId") int contactId) {
        ModelAndView model = new ModelAndView("backend/ContactDetail");
        Contact contact = contactModel.getContactById(contactId);
        model.getModelMap().put("listViewContact", contact);
        return model;
    }
    /*
    them moi Contact
    */
    @RequestMapping(value="insertContact")
    public ModelAndView insertContact(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/insertContact");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Contact contact = new Contact();                
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("newContact",  contact);
        return model;
    }
    @RequestMapping(value="initInsertContact")
    public String initInsertContact(@ModelAttribute("newContact") Contact contact, ModelMap mm){
            boolean check = contactModel.insertContact(contact);
            if (check) {
                return "redirect:getAllContact.htm";
            }
            mm.put("message", "Dang ky khong thanh cong");
            return "redirect:getAllContact.htm";
    }
    /*
    Lay danh Order( don dat hang COD)
    */
    @RequestMapping(value = "getAllOrder")
    public ModelAndView getAllOrder(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/ql-dondat");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Order> listOrder = orderModel.getAllOrder();
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listOrder", listOrder);
        return model;
    }
    /*
    Lay danh OrderDetail( dden dat hang COD)
    */
    @RequestMapping(value = "getAllOrderDetail")
    public ModelAndView getAllOrderDetail(int orderId,HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/orderDetail");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<OrderDetail> listOd = orderModel.getAllOrderDetail(orderId);
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listOrderDetail", listOd);
//        model.getModelMap().put("product",product);
        return model;
    }
    
    /*
    Duyet don hang 
    */
    @RequestMapping(value="approvalOrder")
    public String ApprovalOrder(int orderId){
//        ModelAndView model = new ModelAndView("backend/ql-dondat");
        Order order = orderModel.getOrderById(orderId);
        Boolean result = orderModel.updateOrder(order);
//        model.getModelMap().put("updateOrder", order);
        return  "redirect:getAllOrder.htm";
    }
    
}
