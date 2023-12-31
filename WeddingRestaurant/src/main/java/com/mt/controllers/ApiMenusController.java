/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.controllers;

import com.mt.pojo.Services;
import com.mt.pojo.Menus;
import com.mt.service.MenuService;
import com.mt.service.ServiceService;
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
@CrossOrigin
@RequestMapping("/api")
public class ApiMenusController {

    @Autowired
    MenuService menuService;

    @GetMapping("/menus")
    public ResponseEntity<List<Menus>> getListMenus() {
        return new ResponseEntity<>(
                this.menuService.getListMenus(),
                HttpStatus.OK);
    }
}
