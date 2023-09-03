/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mt.formatters;

import com.mt.pojo.BookingMenus;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author minh tai
 */
public class BookingMenusFormatter implements Formatter<BookingMenus>{

    @Override
    public String print(BookingMenus menu, Locale locale) {
        return String.valueOf(menu.getMenuId());
    }

    @Override
    public BookingMenus parse(String text, Locale locale) throws ParseException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
