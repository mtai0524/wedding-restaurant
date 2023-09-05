/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Users;
import com.mt.service.ServiceService;
import com.mt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author minh tai
 */
@Controller
public class AdminController {
    
    @Autowired
    UserService userService;
    
    
    @Autowired
    ServiceService serviceService;
    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
    
    @GetMapping("/admin/manage-service")
    public String manageService(Model model) {
        model.addAttribute("txtMngServices", "Quản lý dịch vụ");
        model.addAttribute("services", serviceService.getListServices());

        return "admin";
    }
    
    @GetMapping("/admin/manage-user")
    public String adminEdit(Model model) {
        model.addAttribute("txtMngUsers", "Quản lý người dùng");
        model.addAttribute("users", userService.getUsers());

        return "admin";
    }
    
    @GetMapping("/edit/{userId}")
    public String editUser(@PathVariable("userId") Integer userId, Model model) {
        Users user1 = userService.getProductById(userId);
        model.addAttribute("users", user1);
//        userService.updateUser(user);
        return "userInfo";
    }

    @PostMapping("/edit/{userId}")
    public String editUserPost(@ModelAttribute(value = "users") Users user) {
        userService.updateUser(user);
        return "redirect:/";
    }
}
