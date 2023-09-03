/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.formatters;

import com.mt.pojo.BookingMenus;
import com.mt.pojo.Menus;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author minh tai
 */
public class MenusFormatter implements Formatter<Menus>{

    @Override
    public String print(Menus menu, Locale locale) {
        return String.valueOf(menu.getMenuId());
    }

    @Override
    public Menus parse(String menuId, Locale locale) throws ParseException {
        int id = Integer.parseInt(menuId);
        return new Menus(id);
    }

    
    
}
