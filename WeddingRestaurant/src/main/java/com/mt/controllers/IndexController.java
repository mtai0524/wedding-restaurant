/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.component.MyEnvironment;
import com.mt.service.ServiceService;
import com.mt.service.UserService;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh tai
 */
@ControllerAdvice
@Controller
public class IndexController {
    String usernameCurrent = "";
    @Autowired
    private MyEnvironment myEnvironment;
    
    @Autowired
    LocalSessionFactoryBean factory;

    @Autowired
    ServiceService serviceService;
    
    @Autowired
    UserService userService;
    
//    @Autowired
//    UserService userService;
    @ModelAttribute
    public void commAttr(Model model) {
        model.addAttribute("branch", serviceService.getListServices());
        model.addAttribute("usernameCurrent", usernameCurrent);
    }
    
    @Transactional
    @RequestMapping("/")
    public String index(Model model, @RequestParam(name = "success", required = false) String success,
            @RequestParam(name = "userId", required = false) Integer userId) {
        if (success != null && success.equals("true")) {
            model.addAttribute("successMessage", "Đăng nhập thành công");
        }
        if (userId != null) {
            myEnvironment.setUserIdCurrent(userId);
            usernameCurrent = userService.getProductById(userId).getUsername();
        }

        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Services");
        model.addAttribute("test", q.getResultList());
        model.addAttribute("services", serviceService.getListServices());
        return "index";
    }

}
