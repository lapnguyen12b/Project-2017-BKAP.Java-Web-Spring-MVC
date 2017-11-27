/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import p.model.CatalogModel;
import p.model.UserModel;
import p.ulti.Admin;
import p.ulti.Catalog;
import p.ulti.User;

/**
 *
 * @author LAPNV
 */
@Controller
public class CatalogController {
    private CatalogModel catalogModel;
    private UserModel userModel;
    public CatalogController(){
        catalogModel = new CatalogModel();
        userModel = new UserModel();
    }
    /**
    * GetAllCatalog Admin
    * @return
    * Catalog
    */
    @RequestMapping(value = "quan-ly-danh-sach-sp")
    public ModelAndView getCatalogAdmin(Admin admin,HttpSession session,HttpServletRequest request){
        ModelAndView model;
        boolean result = userModel.checkLogin(admin);
        if (result) {
            model = new ModelAndView("backend/quan-ly-danh-sach-sp");
            String adminName = (String) session.getAttribute("accountAdmin");
            Admin ad = userModel.getAdminByAdminName(adminName);
            List<Catalog> listCatalog = catalogModel.getAllCatalog();
            model.getModelMap().put("listViewAdmin", ad);
            // Add danh sách listCatalogLv1 cho model để hiển thị
            model.getModelMap().put("listCatalog", listCatalog);
            return model;
        }else{
            model = new ModelAndView("backend/login-admin");
            return model;
        }
    }
    @RequestMapping(value="getCatalogById")
    public ModelAndView getCatalogById(@RequestParam("catalogId") int catalogId){
        ModelAndView model = new ModelAndView("backend/catalogDetail");
        Catalog catal = catalogModel.getCatalogById(catalogId);
        model.getModelMap().put("catal", catal);
        return  model;
    }
//    Them moi Danh muc
    @RequestMapping(value="them-moi-danh-muc")
    public ModelAndView insertCatalog(HttpSession session,HttpServletRequest request){
        ModelAndView model = new ModelAndView("backend/add-menu");
        String adminName = (String) session.getAttribute("accountAdmin");
        Admin ad = userModel.getAdminByAdminName(adminName);
        
        Catalog newCatalog = new Catalog();
        List<Catalog> catalog = new ArrayList<>();
        catalog = catalogModel.getAllCatalog();
        model.getModelMap().put("listViewAdmin", ad);
        model.getModelMap().put("newCatalog", newCatalog); 
        model.getModelMap().put("catalog",catalog); // danh sach lay tu CSDL
        return model;
    }
    @RequestMapping(value="initInsertCatalog")
    public String initInsertCatalog(@ModelAttribute("newCatalog") Catalog ca) {        
        boolean check = catalogModel.insertCatalog(ca);
        if (check) {
            return "redirect:quan-ly-danh-sach-sp.htm";
        }
        return "redirect:initInsertCatalog.htm";
    }
}
