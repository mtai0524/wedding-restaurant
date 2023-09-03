/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

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

/**
 *
 * @author minh tai
 */
//@ControllerAdvice
@Controller
public class IndexController {
    @Autowired
    LocalSessionFactoryBean factory;

//    @ModelAttribute
//    public void commAttr(Model model) {
//        model.addAttribute("branch", orderService.getBranches());
//
//    }
    @Transactional
    @RequestMapping("/")
    public String index(Model model){
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Services");
        model.addAttribute("test", q.getResultList());
        
        return "index";
    }
}
