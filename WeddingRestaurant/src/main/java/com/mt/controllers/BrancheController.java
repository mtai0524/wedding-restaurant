/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Branches;
import com.mt.pojo.EventHalls;
import com.mt.component.MyEnvironment;
import com.mt.pojo.Users;
import com.mt.service.UserService;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh tai
 */
@Transactional
@Controller
public class BrancheController {
    @Autowired
    LocalSessionFactoryBean factory;
    @Autowired
    private MyEnvironment myEnvironment;
    @Autowired
    UserService userService;
    
    @RequestMapping("/branch")
    public String index(Model model) {
        Session s = factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Branches");
        model.addAttribute("branches", q.getResultList());

        int userId = myEnvironment.getUserIdCurrent(); // Lấy giá trị
        model.addAttribute("getUserIdCurrentNePa", userId);
        return "branch";
    }
    
    @PostMapping("/order/{branchId}")
    public String getHallByBranchIdPost(@ModelAttribute(value = "branches") Branches branch, Model model) {
        return "redirect:/";
    }
}
