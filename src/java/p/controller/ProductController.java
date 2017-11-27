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
import p.model.CatalogModel;
import p.model.ProductModel;
import p.model.UserModel;
import p.ulti.Admin;
import p.ulti.Catalog;
import p.ulti.Product;

/**
 *
 * @author LAPNV
 */
@Controller
public class ProductController {

    private ProductModel productModel;
    private CatalogModel catalogModel;
    private UserModel userModel;

    public ProductController() {
        productModel = new ProductModel();
        catalogModel = new CatalogModel();
        userModel = new UserModel();
    }

    @RequestMapping(value = "/quan-ly-san-pham")
    public ModelAndView getAllProduct(HttpSession session,HttpServletRequest request) {
        ModelAndView model = new ModelAndView("backend/ql-san-pham");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        List<Product> list = productModel.getAllProduct();
//        model.getModel().put("listProduct", listproduct);
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listProduct", list);
        return model;
    }

    /*
    xem chi tiet San Pham trong Admin
     */
    @RequestMapping(value = "viewProduct")
    public ModelAndView getProductById(@RequestParam("productId") int productId,HttpSession session,HttpServletRequest request) {
        ModelAndView model = new ModelAndView("backend/productDetail");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Product product = productModel.getProductById(productId);
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("listViewProduct", product);
        return model;
    }
    /*
    Xem chi tiet SP trong trang Frontend
    */
    @RequestMapping(value = "viewPro")
    public ModelAndView getProductByIdFrontend(@RequestParam("productId") int productId) {
        ModelAndView model = new ModelAndView("frontend/combo");
        Product product = productModel.getProductById(productId);
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
            model.getModelMap().put("viewProduct", product);
            model.getModelMap().put("catalog", catalog);
        return model;
    }
    /*
    Tim kiem SP by Name Frontend
    Xem chi tiet SP trong trang Frontend
    */
    @RequestMapping(value = "seachProduct")
    public ModelAndView getProductByNameFrontend(@ModelAttribute("viewProductName") Product product,ModelMap mm) {
        ModelAndView model = new ModelAndView("frontend/seach");
        Boolean result = productModel.getProductByName(product);        
        if (result) {
            
            product.getProductId();
            product.getProductName();
            product.getPrice();
            product.getDiscount();
            product.getTitle();
            product.getImages();
            product.getViews();
            return model;
        }
        mm.put("message", "San pham ban tim kiem khong co");
        return model;
    }
    
    /*
    xem SP thep id danh muc SP
    */
    @RequestMapping(value="listProduct")
    public ModelAndView getProductByCatalogId(@RequestParam("catalogId") int catalogId){
        ModelAndView model = new ModelAndView("frontend/thucuong");
        List<Product> listP = productModel.getProductByParentId(catalogId);
        List<Catalog> catalog = catalogModel.getCatalogByParentId();
        Catalog cata = catalogModel.getCatalogById(catalogId);
        model.getModelMap().put("lvProduct", listP);
        model.getModelMap().put("catalog", catalog);
        model.getModelMap().put("cata", cata);
        return model;
    }
    
    
    /*them moi SP*/
    @RequestMapping(value = "them-moi-san-pham")
    public ModelAndView insertProduct(HttpSession session,HttpServletRequest request) {
        ModelAndView model = new ModelAndView("backend/them-moi-sp");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        Product newProduct = new Product();
        List<Catalog> catalog = new ArrayList<>();
        catalog = catalogModel.getAllCatalog(); // lay ra danh sach Catalog
        model.getModelMap().put("listViewAdmin", ad);
        model.getModel().put("newProduct", newProduct);
        model.getModel().put("catalog", catalog);
        return model;
    }

    @RequestMapping(value = "initInsertProduct")
    public String initInserProduct(@ModelAttribute("newProduct") Product product, ModelMap mm, HttpServletRequest request) {

        List<String> img = new ArrayList<String>();
        //lay duong dan + ten image
        String path = request.getRealPath("/jsp/frontend/image/products/");
        //khai
        path = path.substring(0, path.indexOf("\\build"));
        //
        path = path + "\\web\\jsp\\frontend\\image\\products";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("images".equals(fileItem.getFieldName())) {
                        //path
                        product.setImages(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");

                    if (name.equals("productName")) {
                        product.setProductName(value);
                    } else if (name.equals("price")) {
                        product.setPrice(Float.parseFloat(value));
                    } else if (name.equals("discount")) {
                        product.setDiscount(Float.parseFloat(value));
                    } else if (name.equals("title")) {
                        product.setTitle(value);
                    } else if (name.equals("catalogId")) {
                        product.setCatalogId(Integer.parseInt(value));
                    } else if (name.equals("content")) {
                        product.setContent(value);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean check = productModel.insertProduct(product);
        if (check) {
//                 insert thành công trả về trang danh sách sản phẩm
            return "redirect:quan-ly-san-pham.htm";
        } else {
            // Insert không thành công trả về trang InsertProduct
            mm.put("message", "Thêm mới không thành công");
            return "redirect:them-moi-san-pham.htm";
        }
    }

    /*
    delete Product
     */
    @RequestMapping(value = "/deleteProduct")
    public String deleteProduct(@RequestParam("productId") int productId, ModelMap mm) {
        boolean result = productModel.deleteProduct(productId);
        if (result) {
            return "redirect:quan-ly-san-pham.htm";
        } else {
            mm.put("message", "Xoa không thành công");
            return "redirect:quan-ly-san-pham.htm";
        }
    }

    /*
    updateProduct
     */
    @RequestMapping(value = "initUpdateProduct")
    public ModelAndView initUpdateProduct(@RequestParam("productId") int productId,HttpSession session,HttpServletRequest request) {
        ModelAndView model = new ModelAndView("backend/updateProduct");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        
        Product product = productModel.getProductById(productId);
        List<Catalog> listcatalog = catalogModel.getAllCatalog();
        
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("catalog", listcatalog);
        model.getModelMap().put("updateProduct", product);
        return model;
    }

    @RequestMapping(value = "updateProduct",method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute("updateProduct") Product product, ModelMap mm, HttpServletRequest request) throws ParseException {

        List<String> img = new ArrayList<String>();
        //lay duong dan + ten image
        String path = request.getRealPath("/jsp/frontend/image/products/");
        //khai
        path = path.substring(0, path.indexOf("\\build"));
        //
        path = path + "\\web\\jsp\\frontend\\image\\products";
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload uploader = new ServletFileUpload(factory);
        try {
            List<FileItem> lst = uploader.parseRequest(request);
            for (FileItem fileItem : lst) {
                if (fileItem.isFormField() == false) {
                    if ("images".equals(fileItem.getFieldName())) {
                        //path
                        product.setImages(fileItem.getName());
                        img.add(fileItem.getName());
                    }
                    //upload to folder
                    fileItem.write(new File(path + "/" + fileItem.getName()));
                } else {
                    String name = fileItem.getFieldName();
                    String value = new String(fileItem.getString().getBytes("ISO-8859-1"), "UTF-8");
                    if(name.equals("productId")){
                        product.setProductId(Integer.parseInt(value));
                    }else if (name.equals("productName")) {
                        product.setProductName(value);
                    } else if (name.equals("price")) {
                        product.setPrice(Float.parseFloat(value));
                    } else if (name.equals("discount")) {
                        product.setDiscount(Float.parseFloat(value));
                    } else if (name.equals("title")) {
                        product.setTitle(value);
                    } else if (name.equals("catalogId")) {
                        product.setCatalogId(Integer.parseInt(value));
                    } else if (name.equals("content")) {
                        product.setContent(value);
                    } else if (name.equals("status")) {
                        if(Integer.parseInt(value) == 0)
                            product.setStatus(false);
                        else {
                            product.setStatus(true);
                        }
                    }
                }
            }
            boolean result = productModel.updateProduct(product);
            if (result) {
                // insert thành công trả về trang danh sách sản phẩm
                return "redirect:quan-ly-san-pham.htm";
            } else {
                // Insert không thành công trả về trang InsertProduct
                mm.put("message", "Thêm mới không thành công");
                return "redirect:initUpdateProduct.htm";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
}
