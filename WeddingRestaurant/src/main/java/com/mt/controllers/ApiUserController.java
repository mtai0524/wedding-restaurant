/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Users;
import com.mt.service.UserService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author minh tai
 */
@RestController
@CrossOrigin
@RequestMapping("/api")
public class ApiUserController {
    @Autowired
    UserService userService;
    
    @GetMapping("/users")
    public ResponseEntity<List<Users>> getListUser(){
        return new ResponseEntity<>(
            this.userService.getUsers(),
            HttpStatus.OK);
    }
    
    @PostMapping(
            path = "/register",
            consumes = {MediaType.MULTIPART_FORM_DATA_VALUE},
            produces = {MediaType.APPLICATION_JSON_VALUE}
    )
    public ResponseEntity<?> addUser(@RequestParam Map<String, String> params, @RequestPart MultipartFile avatar) {
        if (avatar == null) {
            Map<String, Object> data = new HashMap<>();
            data.put("msg", "missing profile image");
            return new ResponseEntity<>(data, HttpStatus.UNPROCESSABLE_ENTITY);
        }

        Users newUser = userService.addUser(params, avatar);
        Map<String, Object> data = new HashMap<>();
        data.put("msg", "new user created");
        data.put("new_user", newUser);
        return new ResponseEntity<>(data, HttpStatus.CREATED);
    }
    
//    @GetMapping("/api/users")
//    @CrossOrigin
//    public ResponseEntity<List<Users>> list(@RequestParam Map<String, String> params) {
//        return new ResponseEntity<>(this.userService.getProducts(params), HttpStatus.OK);
//    }
}
