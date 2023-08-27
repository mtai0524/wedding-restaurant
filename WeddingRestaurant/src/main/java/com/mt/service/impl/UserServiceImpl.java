/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Users;
import com.mt.repository.UserRepository;
import com.mt.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author minh tai
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepo;

    @Override
    public List<Users> getUsers() {
        return this.userRepo.getUsers();
    }

    @Override
    public String add(Users user) {
        return this.userRepo.add(user);
    }
    
}
