/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Branches;
import com.mt.repository.OrderRepositoty;
import com.mt.service.OrderService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author minh tai
 */
@Transactional
@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    OrderRepositoty orderRepo;
    
    @Override
    public List<Branches> getBranches() {
        return orderRepo.getBranches();
    }
    
}
