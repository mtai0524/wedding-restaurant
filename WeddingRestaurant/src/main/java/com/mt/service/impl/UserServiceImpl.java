/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.mt.pojo.Users;
import com.mt.repository.UserRepository;
import com.mt.service.UserService;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author minh tai
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepo;
    
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Users> getUsers() {
        return this.userRepo.getUsers();
    }

    @Override
    public Users add(Users user) {
        return this.userRepo.add(user);
    }

    @Override
    public void delete(Integer intgr) {
        return;
    }

    @Override
    public Users getUserById(int id) {
        return this.userRepo.getUserById(id);
    }

    @Override
    public void deleteProduct(int id) {
        userRepo.deleteProduct(id);
    }

    @Override
    public Users updateUser(Users user) {
        return userRepo.updateUser(user);
    }

    @Override
    public Users findUserNameById(int userId) {
        return this.userRepo.findUserNameById(userId);
    }

    @Override
    public Users changeRole(Users user) {
        return this.userRepo.changeRole(user);
    }


    @Override
    public Users addUser(Map<String, String> params, MultipartFile avatar) {
        Users user = new Users();
        user.setUsername(params.get("userName"));
        user.setPassword(params.get("password"));
        user.setRole("user");
        if (!avatar.isEmpty()) {
            try {
                Map res = this.cloudinary.uploader().upload(avatar.getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                user.setAvatar(res.get("secure_url").toString());
            } catch (IOException ex) {
                return null;
            }
        }
        this.userRepo.addUser(user);
        return user;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Users u = this.userRepo.getUsersByName(username);
        if (u == null) {
            throw new UsernameNotFoundException("User hong tồn tại gòi!!");
        }

        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(u.getRole()));

        return new org.springframework.security.core.userdetails.User(
                u.getUsername(), u.getPassword(), authorities);
    }
}
