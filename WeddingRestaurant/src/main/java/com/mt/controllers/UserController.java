/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.pojo.Users;
import com.mt.service.UserService;
import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author minh tai
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    LocalSessionFactoryBean f;

    @GetMapping("/user")
    public String user(Model model) {
        model.addAttribute("user", new Users());
        return "user";
    }

    @PostMapping("/user")
    public String add(@ModelAttribute(value = "user") Users user) {
        userService.add(user);
        return "redirect:/";
    }

//    @RequestMapping(value = "/delete/{userId}", method = RequestMethod.GET)
//    @GetMapping("/delete/{userId}")
//    public String deleteUser(@PathVariable("userId") Integer userId) {
//        userService.deleteProduct(userId);
//        return "index";
//    }

//    @GetMapping("/edit/{userId}")
//    public String editUser(@PathVariable("userId") Integer userId, Model model) {
//        Users user1 = userService.getProductById(userId);
//        model.addAttribute("users",user1 );
////        userService.updateUser(user);
//        return "userInfo";
//    }
//    
//    @PostMapping("/edit/{userId}")
//    public String editUserPost(@ModelAttribute(value = "users") Users user) {
//        userService.updateUser(user);
//        return "redirect:/";
//    }
    @GetMapping("/login")
    public String login(){
        return "login";
    }

}
