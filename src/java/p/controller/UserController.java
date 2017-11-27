/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.controller;

//import java.util.ArrayList;
//import java.util.List;
//import javax.servlet.http.HttpServletRequest;
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
import p.model.CatalogModel;
import p.model.ProductModel;
import p.model.UserModel;
import p.ulti.Admin;
import p.ulti.Catalog;
import p.ulti.Product;
import p.ulti.User;

/**
 *
 * @author LAPNV
 */
@Controller
//@RequestMapping(value="/user", method=RequestMethod.GET)
public class UserController {
    private UserModel userModel;
    private ProductModel productModel;
    private CatalogModel catalogModel;
    public UserController(){
        userModel = new UserModel();
        productModel = new ProductModel();
        catalogModel = new CatalogModel();
    }
    @RequestMapping(value="/getAllAdmin")
    public ModelAndView getAllAdmin(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/admin-list-user");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Admin> list = userModel.getAllAdmin();
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listAdmin", list);
        return model;
    }
    @RequestMapping(value = "viewAdmin")
    public ModelAndView getAdminById(@RequestParam("adminId") int adminId) {
        ModelAndView model = new ModelAndView("backend/ViewAdmin");
        Admin admin = userModel.getAdminById(adminId);
        model.getModelMap().put("listViewAdmin", admin);
        return model;
    }
    /*
    update Admin
     */
    @RequestMapping(value = "initUpdateAdmin")
    public ModelAndView initUpdateAdmin(@RequestParam("adminId") int adminId) {
        ModelAndView model = new ModelAndView("backend/updateAdmin");
        Admin admin = userModel.getAdminById(adminId);
        model.getModelMap().put("updateAdmin", admin);
        return model;
    }
    
//    neu co request thi khong can @ModelAttribute
    @RequestMapping(value = "updateAdmin",method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute("updateAdmin") Admin admin, ModelMap mm, HttpServletRequest request) throws ParseException {

        List<String> img = new ArrayList<String>();
        String path = request.getRealPath("/jsp/backend/img/");
        path = path.substring(0, path.indexOf("\\build"));
        path = path + "\\web\\jsp\\backend\\img";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("image".equals(fileItem.getFieldName())) {
                        admin.setImage(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");
                    if(name.equals("adminId")){
                        admin.setAdminId(Integer.parseInt(value));
                    }else if(name.equals("adminName")){
                        admin.setAdminName(value);
                    } else if (name.equals("passWord")) {
                        admin.setPassWord(value);
                    } else if (name.equals("email")) {
                        admin.setEmail(value);
                    } else if (name.equals("phone")) {
                        admin.setPhone(Integer.parseInt(value));
                    } else if (name.equals("status")) {
                        if(Integer.parseInt(value) == 1)
                            admin.setStatus(true);
                        else {
                            admin.setStatus(false);
                        }
                    }
                }
                /*check email*/
            }if (userModel.checkExistsAdminEmail(admin)) {
                mm.put("message","Email da duoc dung.");
                return "redirect:initUpdateAdmin.htm";
            }else{
                boolean result = userModel.updateAdmin(admin);
                if (result) {
                    return "redirect:getAllAdmin.htm";
                } else {
                    mm.put("message", "Them moi khong thanh cong");
                    return "redirect:initUpdateAdmin.htm";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
    }
        return null;
        }
    /*
    Delete Admin
    */
    @RequestMapping(value="deleteAdmin")
    public String deleteAdmin(@RequestParam("adminId") int adminId, ModelMap mm){
        boolean result = userModel.deleteAdmin(adminId);
        if (result) {
            return "redirect:getAllAdmin.htm";
        } else {
            mm.put("message", "Xoa không thành công");
            return "redirect:getAllAdmin.htm";
        }
    }
    /*
    Dang ky Tai Khoan Admin
    */
    @RequestMapping(value="registerAdmin")
    public ModelAndView registerAdmin(){
        ModelAndView model = new ModelAndView("backend/register");
        Admin newAdmin = new Admin();
        model.getModelMap().put("newAdmin",  newAdmin);
        return model;
    }
    @RequestMapping(value="initRegisterAdmin")
    public String initInsertAdmin(@ModelAttribute("newAdmin") Admin admin, ModelMap mm){
        if (userModel.checkAdminName(admin.getAdminName())) {
            mm.put("message", "Tai khoan đã tồn tại.");
            return "redirect:initRegisterAdmin.htm";
        }else if(userModel.checkAdminEmail(admin.getEmail())){
            mm.put("message", "E-mail đã tồn tại.");
            return "redirect:initRegisterAdmin.htm";
        }else{
            boolean check = userModel.registerAdmin(admin);
            if (check) {
                return "redirect:homeAdmin.htm";
            }
            mm.put("message", "Dang ky khong thanh cong");
            return "redirect:initRegisterAdmin.htm";
        }
    }
    /*
    Dang ky Nguoi Dung
    */
    @RequestMapping(value="dangky")
    public ModelAndView registerUser(){
        ModelAndView model = new ModelAndView("frontend/register");
        User newUser = new User();
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("newUser", newUser);
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    
    @RequestMapping(value="initregisterUser")    
    public String initregisterUser(@ModelAttribute("newUser") User user,ModelMap mm,HttpSession setion) {  
        if (userModel.checkUserName(user.getUserName())) {
            mm.put("message", "Tai khoan da ton tai");
            return "redirect:initregisterUser.htm";
        }else if(userModel.checkUserEmail(user.getMail())){
            mm.put("message", "Email da ton tai");
            return "redirect:initregisterUser.htm";
        }else{
        boolean check = userModel.registerUser(user);
            if (check) {
                return "redirect:getAll.htm";
            }
            return "redirect:initregisterUser.htm";
        }
    }
    /**
     *  khởi tạo đối tượng cho trang login
     * @return 
     */
    @RequestMapping(value = "initLoginFontend", method = RequestMethod.GET)
    public ModelAndView initLoginFontend() {
        ModelAndView model = new ModelAndView("frontend/login");
//        List<User> listUser = userModel.getAllUser();
//        model.getModelMap().put("listUser", listUser);
        User user = new User();
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        List<Product> listp = productModel.getProductIdNew();
        model.getModelMap().put("account", user);
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("newProduct", listp);
        return model;
    }
    /**
     * thực hiển kiêm tra dữ liệu để login
     *
     * @param user đối tượng login
     * @param session phiên làm việc
     * @param mm
     * @return
     */
    @RequestMapping(value = "loginFontend" , method = RequestMethod.POST)
    public String loginFontend(@ModelAttribute("account")User user, HttpSession session, ModelMap mm) {
        boolean result = userModel.checkLoginUser(user);
//        result = true;
//        boolean result = userModel.checkLoginUser(userName, passWord);
//        String acction = request.getParameter("acction");
        if (result) {
            session.setAttribute("account", user.getUserName());
//            if("payment".equals(acction)){
//                return "redirect:myCart.htm";
//            }else if("package".equals(acction)){
//                return "redirect:initCreatePackage.htm";
//            } if("history".equals(acction)){
//                return "redirect:history.htm";
//            }else if("addPackage".equals(acction)){
//                return "redirect:initAddPackage.htm";
//            }
//                System.out.println(user.getUserName()+"#"+user.getPassWord()+"########");
                return "redirect:getAll.htm";
//            }
        } else {
            mm.put("message", "Sai thong tin dang nhap.");
            return "redirect:initLoginFontend.htm";
        }
    }
    //Đăng xuất user
    
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpSession session){
        ModelAndView model = new ModelAndView("frontend/home");
        // lấy danh sách sản phẩm trên sesion
        session.invalidate();
        return "redirect:getAll.htm";
    }
}
