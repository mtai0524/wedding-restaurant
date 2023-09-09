/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.service;

import com.mt.pojo.Users;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author minh tai
 */
public interface UserService extends UserDetailsService{
    public Users getProductById(int id);
    public void deleteProduct(int id);
    List<Users> getUsers();
    String add(Users user);
    void delete(Integer userId);
    Users updateUser(Users user);
    Users getUsersByName(String username);
}