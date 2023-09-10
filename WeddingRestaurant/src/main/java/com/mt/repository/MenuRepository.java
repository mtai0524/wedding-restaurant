/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mt.repository;

import com.mt.pojo.Branches;
import com.mt.pojo.Menus;
import com.mt.pojo.Services;
import java.util.List;

/**
 *
 * @author minh tai
 */
public interface MenuRepository {
    List<Menus> getListMenus();
    Menus updateMenus(Menus menu);
    Menus addMenu(Menus menu);
}
