/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.service;

import com.mt.pojo.Users;
import java.util.List;
import java.util.Map;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author minh tai
 */
public interface UserService extends UserDetailsService{
    public Users getUserById(int id);
    public void deleteProduct(int id);
    List<Users> getUsers();
    Users add(Users user);
    void delete(Integer userId);
    Users updateUser(Users user);
    public Users findUserNameById(int userId);
    public Users changeRole(Users user);
    public Users addUser(Map<String, String> params, MultipartFile avatar);
}