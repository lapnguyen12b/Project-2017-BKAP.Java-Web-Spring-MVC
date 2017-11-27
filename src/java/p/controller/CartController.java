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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import p.connection.Common;
import p.model.ProductModel;
import p.ulti.Cart;
import p.ulti.Product;

/**
 *
 * @author LAPNV
 */
@Controller
public class CartController {
    private ProductModel productModel;
    public CartController(){
        productModel = new ProductModel();
    }
    
    
//    @RequestMapping(value="Cart")
//    public ModelAndView Cart(){
//        ModelAndView model = new ModelAndView("frontend/giohang");
//        return model;
//    }
    /*
     *   thêm sản phẩm vào giỏ hàng
    */
    @RequestMapping(value = "addCart")
    public ModelAndView addCart(@RequestParam("id") int id, HttpSession session){
        ModelAndView model = new ModelAndView("frontend/giohang");
//        ModelAndView model = new ModelAndView(viewName, model)
        Product product = productModel.getProductById(id);
        //lay danh sách sản phẩm của giỏ hàng trong session
//        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
            List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        //Kiểm tra giỏ hàng đã có sản phẩm hay chưa
        if (listCart == null) {
            // Giỏ hàng chưa có sản phẩm nào add luôn sp vào cart
            listCart = new ArrayList<>();
//            listCart.add(new Cart( productModel.getProductById(id), 1));
            Cart cart = new Cart(product, 1);
            listCart.add(cart);
        }else{
            // Giỏ hàng đã có sản phẩm
            boolean flag = true;
            for(Cart c : listCart){
            // Kiểm tra xem sản phẩm thêm vào đã có trong giỏ hàng chưa
                if(c.getProduct().getProductId() == id){
                    // Sản phẩm đã có trong giỏ hàng ta tăng biến số lượng
//                    int a = c.getQuantity();
//                    c.setQuantity(a+1);
//                    flag = true;
//                    break;
                    c.setQuantity(c.getQuantity()+ 1);
                    flag = false;
                    break;
                }
            }
        // sản phẩm chưa có trong giỏ hàng thì ta add sản phẩm vào giỏ hàng
            if(flag){
//                listCart.add(new Cart(productModel.getProductById(id), 1));
                Cart cart = new Cart(product, 1);
                listCart.add(cart);
            }
        }
        float total = getTotal(listCart);
        // set giỏ hàng lên session
        session.setAttribute("listCart", listCart);
        // set tổng tiền lên session
        session.setAttribute("total", getTotal(listCart));
        return model;

    }
    /**
     *   Tính tổng tiền trong giỏ hàng
     * @param listCart
     * @return 
     */
    public float getTotal(List<Cart> listCart) {
        float total = 0;
            for (Cart c : listCart) {
                total+= c.getQuantity()* c.getProduct().getPrice();
            }
        return total;
    }
    //xóa sản phẩm trong giỏ hàng
    
    @RequestMapping(value = "/remove", method = RequestMethod.GET)
    public ModelAndView remove(@RequestParam("Id") int id,HttpSession session){
        ModelAndView model = new ModelAndView("frontend/giohang");
        // lấy danh sách sản phẩm trên sesion
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        if(listCart!=null){
            for(int i=0;i < listCart.size();i++){
                if(listCart.get(i).getProduct().getProductId() == id){
                // neu sp ton tai thi remove
                    listCart.remove(i).getProduct().getProductId();
                break;
                }
            }
        }
        // luu danh sách sản phẩm và tổng tiền
        session.setAttribute("listCart", listCart);
        session.setAttribute("total", getTotal(listCart));
        return model;
    }
    // sửa sản phẩm trong giỏ hàng
    @RequestMapping(value = "/update")
    public ModelAndView update(HttpServletRequest request,HttpSession session){
        ModelAndView model = new ModelAndView("frontend/giohang");
        // lay danh sách sản phẩm trong session
        List<Cart> listCart = (List<Cart>) session.getAttribute("listCart");
        // lay danh sach số lượng san pham muon mua
        String[] arrQuantity = request.getParameterValues("quantity");
        for(int i=0; i < listCart.size();i++){
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
            if(Integer.parseInt(arrQuantity[i])<1){
                listCart.get(i).setQuantity(1);
            }
        }
        // luu danh sách sản phẩm và tổng tiền lên session
        session.setAttribute("listCart", listCart);
        session.setAttribute("total",getTotal(listCart));
        return model;
    }
    // Xóa toàn bộ giỏ hàng
//    @RequestMapping(value = "clear")
//    public ModelAndView myCart(HttpSession session) {
//        ModelAndView model = new ModelAndView("Cart");
//        session.removeAttribute("listCart");
//        return model;
//    }
    @RequestMapping(value="/succsess")
    public ModelAndView paymentSuccsess(HttpSession session){
        ModelAndView model = null;
        List<Cart> listCart = (ArrayList<Cart>) session.getAttribute("listCart");
        if (listCart !=null) {
//            session.invalidate();
            session.removeAttribute("listCart");
            model = new ModelAndView("frontend/paymentSuccsess");
            }
        return model;
    }
}
