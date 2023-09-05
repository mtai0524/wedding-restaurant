/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.service.impl;

import com.mt.pojo.Branches;
import com.mt.pojo.Menus;
import com.mt.repository.BranchRepository;
import com.mt.repository.MenuRepository;
import com.mt.service.BranchService;
import com.mt.service.MenuService;
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
public class MenuServiceImpl implements MenuService{

    @Autowired
    MenuRepository menuRepo;

    @Override
    public List<Menus> getListMenus() {
        return menuRepo.getListMenus();
    }
}
