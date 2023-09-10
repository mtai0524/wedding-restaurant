/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.repository;

import com.mt.pojo.Users;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author minh tai
 */
public interface UserRepository {
    List<Users> getUsers();
    Users add(Users user);
    void delete(Integer userId);
    public Users getUserById(int id);
    public void deleteProduct(int id);
    public Users updateUser(Users user);
    public Users findUserNameById(int userId);
}
