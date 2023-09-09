/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Users;
import com.mt.repository.UserRepository;
import com.mt.service.UserService;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh tai
 */
@Transactional
@Service("userDetailsService")
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

    @Override
    public void delete(Integer intgr) {
        return;
    }

    @Override
    public Users getProductById(int id) {
        return this.userRepo.getProductById(id);
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
    public Users getUsersByName(String username) {
        return this.userRepo.getUsersByName(username);
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
