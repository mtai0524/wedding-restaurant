/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.service;

import com.mt.pojo.Users;
import java.util.List;

/**
 *
 * @author minh tai
 */
public interface UserService {
    List<Users> getUsers();
    String add(Users user);
}
