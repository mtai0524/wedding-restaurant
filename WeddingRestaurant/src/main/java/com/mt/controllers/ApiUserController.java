/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Users;
import com.mt.service.UserService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author minh tai
 */
@RestController
public class ApiUserController {
    @Autowired
    UserService userService;
    
    @GetMapping("/api/users")
    @CrossOrigin
    public ResponseEntity<List<Users>> getListUser(){
        return new ResponseEntity<>(
            this.userService.getUsers(),
            HttpStatus.OK);
    }
//    @GetMapping("/api/users")
//    @CrossOrigin
//    public ResponseEntity<List<Users>> list(@RequestParam Map<String, String> params) {
//        return new ResponseEntity<>(this.userService.getProducts(params), HttpStatus.OK);
//    }
}
